package com.wanada.service;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.wanada.model.BoardDTO;
import com.wanada.model.UserDAO;
import com.wanada.model.UserDTO;

public class MyBoardAction implements Action {

	@Override
	public void process(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		UserDAO dao = UserDAO.getInstance();
		HttpSession session = request.getSession();
		UserDTO dto = (UserDTO) session.getAttribute("user");
		String id = dto.getUserEmail();
		
		List<BoardDTO> list = dao.myBoard(id);
		
		request.setAttribute("my_board_list", list);
		
		RequestDispatcher rd = request.getRequestDispatcher("/Board/myBoard.jsp");
		rd.forward(request, response);
	}

}
