package com.wanada.service;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.wanada.model.BoardDAO;
import com.wanada.model.BoardDTO;

public class BoardUpdatePageAction implements Action {

	@Override
	public void process(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		BoardDAO dao = BoardDAO.getInstance();
		int index = Integer.parseInt(request.getParameter("board_index"));
		
		BoardDTO dto = dao.boardDetail(index);
		
		request.setAttribute("dto", dto);
		
		RequestDispatcher rd = request.getRequestDispatcher("/Board/boardUpdate.jsp");
		rd.forward(request, response);
	}

}
