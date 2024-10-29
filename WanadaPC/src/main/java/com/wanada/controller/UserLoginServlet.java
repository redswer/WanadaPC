package com.wanada.controller;

import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.wanada.model.UserDAO;
import com.wanada.model.UserDTO;
import com.wanada.util.UserSHA256;

/**
 * Servlet implementation class UserLoginServlet
 */
@WebServlet("/user_login") // 이 서블릿에 대한 URL 매핑
public class UserLoginServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    /**
     * Default constructor. 
     */
    public UserLoginServlet() {
        // 생성자
    }

    /**
     * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
     */
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // 세션 유무 판단
        HttpSession session = request.getSession();
        
        // 세션에 "user" 속성이 있을 경우
        if (session.getAttribute("user") != null) {
            // 이미 로그인된 사용자이므로 인덱스 페이지로 리다이렉트
            response.sendRedirect("/indes");
        } else { // 세션이 없는 경우
            // 로그인 페이지로 포워드
            RequestDispatcher rd = request.getRequestDispatcher("User/user_login.jsp");
            rd.forward(request, response);
        }
    }

    /**
     * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
     */
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        UserDAO dao = UserDAO.getInstance(); // UserDAO 인스턴스 생성
        String userEmail = request.getParameter("userEmail"); // 입력된 이메일
        String userPassword = UserSHA256.getSHA256(request.getParameter("userPassword")); // 입력된 비밀번호를 SHA-256으로 해시화
        
        // 로그인 시도
        int row = dao.UserLogin(userEmail, userPassword);
        if (row == 1) { // 로그인 성공 시 (세션 객체 생성)
            UserDTO dto = dao.userSelect(userEmail); // 회원 정보 검색
            HttpSession session = request.getSession(); // 세션 객체 생성
            session.setAttribute("user", dto); // 사용자 정보를 세션에 저장
            session.setMaxInactiveInterval(1800); // 세션 유지 시간 (30분)
        }
        request.setAttribute("row", row);
        
        RequestDispatcher rd = 
        		request.getRequestDispatcher("User/user_login_pro.jsp");
        rd.forward(request,response);
    }
}
