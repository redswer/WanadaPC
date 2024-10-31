package com.wanada.service;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.wanada.model.BoardDAO;
import com.wanada.model.BoardDTO;

public class BoardUpdateAction implements Action {

	@Override
	public void process(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		
		int board_index = Integer.parseInt(request.getParameter("board_index"));
		String theme = request.getParameter("theme");
		String content = request.getParameter("content");
		String person = request.getParameter("person");
		String enterdate = request.getParameter("enterdate");
		int count = Integer.parseInt(request.getParameter("count"));
		
		BoardDTO dto = new BoardDTO();
		BoardDAO dao = BoardDAO.getInstance();
		
		dto.setBoard_index(board_index);
		dto.setTheme(theme);
		dto.setContent(content);
		dto.setPerson(person);
		dto.setEnterdate(enterdate);
		dto.setCount(count);
		
		int row = dao.boardUpdate(dto);
		
		request.setAttribute("index", board_index);
		request.setAttribute("row", row);
		
		RequestDispatcher rd = request.getRequestDispatcher("/Board/boardUpdatePro.jsp");
		rd.forward(request, response);
	}

}
