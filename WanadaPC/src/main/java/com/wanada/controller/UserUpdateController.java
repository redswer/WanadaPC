package com.wanada.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.wanada.service.Action;
import com.wanada.service.UserUpdateAction;

@WebServlet("/user_update")
public class UserUpdateController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public UserUpdateController() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// 회원정보를 수정하는 update 클래스 생성(UserupdateAction) 
		Action action = new UserUpdateAction();
		action.process(request,response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// 요청 데이터의 인코딩을 UTF-8로 설정 (한글 깨짐 방지)
        request.setCharacterEncoding("utf-8");
        // doGet 메서드를 호출하여 GET 요청과 동일하게 처리
        doGet(request, response);
	}

}
