package com.wanada.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.wanada.service.Action;
import com.wanada.service.UserLoginAction;

// '/user_login' 경로로 들어오는 요청을 처리하는 서블릿
@WebServlet("/user_login")
public class UserLoginController extends HttpServlet {
	private static final long serialVersionUID = 1L; // 직렬화에 사용되는 고유 ID

    // 기본 생성자
    public UserLoginController() {
        super(); // HttpServlet 클래스의 생성자를 호출
    }

    // GET 요청을 처리하는 메서드
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // 로그인 작업을 처리하는 Action 클래스 생성 (UserLoginAction)
        Action action = new UserLoginAction();
        // Action 클래스의 process 메서드를 호출하여 요청과 응답 객체를 전달
        action.process(request, response);
    }

    // POST 요청을 처리하는 메서드
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // 요청 데이터의 인코딩을 UTF-8로 설정 (한글 깨짐 방지)
        request.setCharacterEncoding("utf-8");
        // doGet 메서드를 호출하여 GET 요청과 동일하게 처리
        doGet(request, response);
    }
}
