package com.wanada.service;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.wanada.model.BoardDAO;

public class BoardDeleteAction implements Action {

	@Override
	public void process(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		BoardDAO dao = BoardDAO.getInstance();
		
		int index = Integer.parseInt(request.getParameter("board_index"));
		
		
		int row = dao.boardDelete(index);
		
		request.setAttribute("row", row);
		
		RequestDispatcher rd = request.getRequestDispatcher("/Board/boardDelete.jsp");
		rd.forward(request, response);
	}

}
