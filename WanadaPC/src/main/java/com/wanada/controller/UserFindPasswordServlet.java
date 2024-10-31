package com.wanada.controller;

import java.io.IOException;
import java.util.UUID;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.wanada.model.UserDAO;
import com.wanada.model.UserDTO;
import com.wanada.util.UserSHA256;

@WebServlet("/findPassword")
public class UserFindPasswordServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // 사용자가 입력한 이메일 아이디와 도메인 정보 조합
        String userEmail = request.getParameter("userEmail") + "@" + request.getParameter("customEmailDomain");
        String tell = request.getParameter("tell");

        UserDAO userDAO = UserDAO.getInstance();
        UserDTO user = userDAO.findUserByEmailAndTell(userEmail, tell);

        if (user != null) {
            // 임시 비밀번호 생성 및 암호화
            String tempPassword = generateTempPassword();
            String hashedTempPassword = UserSHA256.getSHA256(tempPassword);

            // 데이터베이스에 암호화된 임시 비밀번호 업데이트
            userDAO.updatePassword(userEmail, hashedTempPassword);

            // 생성된 임시 비밀번호를 request 객체에 저장하여 결과 페이지로 전달
            request.setAttribute("tempPassword", tempPassword);
            RequestDispatcher dispatcher = request.getRequestDispatcher("user_find_password_result.jsp");
            dispatcher.forward(request, response);
        } else {
            // 사용자 정보가 일치하지 않는 경우 에러 메시지와 함께 다시 비밀번호 찾기 페이지로 이동
            request.setAttribute("errorMessage", "입력하신 정보로 비밀번호를 찾을 수 없습니다.");
            RequestDispatcher dispatcher = request.getRequestDispatcher("user_find_password.jsp");
            dispatcher.forward(request, response);
        }
    }

    // 무작위 임시 비밀번호 생성
    private String generateTempPassword() {
        return UUID.randomUUID().toString().substring(0, 8); // 8자리 임시 비밀번호
    }
}
