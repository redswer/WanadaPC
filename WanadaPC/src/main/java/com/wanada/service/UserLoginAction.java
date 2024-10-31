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

public class UserLoginAction implements Action {
    @Override
    public void process(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String id = request.getParameter("userEmail")+"@"+request.getParameter("emailDomain");
		
		String pw = request.getParameter("userPassword");
		String pass = UserSHA256.getSHA256(pw); //인코딩 = 비밀번호암호화
		
		UserDAO dao = UserDAO.getInstance();
		
		int row = dao.login(id, pass);
		
	
		if(row ==1 ) {
			UserDTO dto = dao.userSelect(id);
			HttpSession session = request.getSession();
			session.setAttribute("user", dto);
			
			session.setMaxInactiveInterval(30 * 60);
		}
		request.setAttribute("row", row);
		RequestDispatcher rd = request.getRequestDispatcher("/User/user_login_ok.jsp");
		
		rd.forward(request, response);
    }
}
