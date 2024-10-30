package com.wanada.service;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.wanada.model.BoardDAO;
import com.wanada.model.BoardDTO;

public class BoardListAction implements Action {

	@Override
	public void process(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		BoardDAO dao = BoardDAO.getInstance();
		List<BoardDTO> list = dao.boardList();
		
		request.setAttribute("board_list", list);
		
		RequestDispatcher rd = request.getRequestDispatcher("/Board/boardList.jsp");
		rd.forward(request, response);
	}

}
