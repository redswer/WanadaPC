package com.wanada.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.wanada.service.Action;
import com.wanada.service.UserInsertAction;
import com.wanada.model.UserDAO;
import com.wanada.model.UserDTO;
import com.wanada.util.UserSHA256;

/**
 * Servlet implementation class UserInsertServlet
 */
@WebServlet("/user_insert")
public class UserInsertController extends HttpServlet {
	private static final long serialVersionUID = 1L;

    /**
     * Default constructor. 
     */
    public UserInsertController() {
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Action action = new UserInsertAction();
		 //UserInsertAction이라는 클래스의 인스턴스를 생성한 후,
		//그 클래스의 process 메서드를 호출하여 실제 사용자 삽입 작업을 처리합니다.
		action.process(request, response);
		//request 객체는 클라이언트의 요청 정보를 담고 있으며, response 객체는 서버의 응답을 구성하는 데 사용됩니다.
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
		//여기서는 POST 요청이 들어와도 doGet 메서드를 호출하여 동일한 작업을 수행하게 설계되어 있습니다. 즉, GET과 POST 모두 같은 로직을 처리합니다.
}
} //여기서 작동된 request, response 값이 /user_Insert로 간다는거야 ? 아니면 /user_Insert 즉, userInsert.jsp를 연결만 해준다는거야 