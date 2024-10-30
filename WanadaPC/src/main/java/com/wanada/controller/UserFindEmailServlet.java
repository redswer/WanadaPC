package com.wanada.controller;

import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.wanada.model.UserDAO;
import com.wanada.model.UserDTO;

@WebServlet("/findEmail")
public class UserFindEmailServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // 사용자가 입력한 이름과 전화번호를 가져옴
        String userName = request.getParameter("userName");
        String tell = request.getParameter("tell");

        // UserDAO를 통해 데이터베이스에서 이메일 찾기
        UserDAO userDAO = UserDAO.getInstance();
        UserDTO user = userDAO.findEmailByNameAndTell(userName, tell);

        if (user != null) {
            // 이메일을 찾았을 경우, 결과 페이지에 이메일 전달
            request.setAttribute("userEmail", user.getUserEmail());
            RequestDispatcher dispatcher = request.getRequestDispatcher("find_email_result.jsp");
            dispatcher.forward(request, response);
        } else {
            // 이메일을 찾지 못했을 경우, 에러 메시지와 함께 다시 아이디 찾기 페이지로 이동
            request.setAttribute("errorMessage", "입력하신 정보로 이메일을 찾을 수 없습니다.");
            RequestDispatcher dispatcher = request.getRequestDispatcher("find_email.jsp");
            dispatcher.forward(request, response);
        }
    }
}
