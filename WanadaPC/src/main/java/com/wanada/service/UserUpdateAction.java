package com.wanada.service;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.wanada.model.UserDAO;
import com.wanada.model.UserDTO;
import com.wanada.util.UserSHA256;

public class UserUpdateAction implements Action {

	@Override
	public void process(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String id = request.getParameter("userEmail");
		String password = request.getParameter("userPassword");
		String pw = UserSHA256.getSHA256(password);
		String repw = request.getParameter("userRepassword");
		String rePass = UserSHA256.getSHA256(repw); //인코딩 = 비밀번호암호화
		String username = request.getParameter("userName");
		String gender = request.getParameter("gender");
		String tell = request.getParameter("tell");
		
		UserDTO dto = new UserDTO();
		UserDAO dao = UserDAO.getInstance();
		
		dto.setUserEmail(id);
		dto.setUserPassword(pw);
		dto.setUserName(username);
		dto.setGender(gender);
		dto.setTell(tell);
		
		int row = dao.userUpdate(dto, rePass);
		
		request.setAttribute("row", row);

        if (row == 1) {
            dto = dao.userSelect(id);
            
            HttpSession session = request.getSession();
            session.setAttribute("user", dto); // 세션에 사용자 정보 저장
            
            session.setMaxInactiveInterval(30 * 60);
        }
		
        RequestDispatcher rd = request.getRequestDispatcher("/User/user_update_ok.jsp");
        rd.forward(request, response);
    }
}