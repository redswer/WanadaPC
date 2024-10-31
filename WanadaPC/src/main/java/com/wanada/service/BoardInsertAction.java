package com.wanada.service;

import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.wanada.model.BoardDAO;
import com.wanada.model.BoardDTO;
import com.wanada.model.UserDTO;

public class BoardInsertAction implements Action {

	@Override
	public void process(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		BoardDAO dao = BoardDAO.getInstance();
		BoardDTO dto = new BoardDTO();
		HttpSession session = request.getSession();
		UserDTO log = (UserDTO) session.getAttribute("user");
		
		int board_index = dao.maxIndex() + 1;
		String theme = request.getParameter("theme");
		String content = request.getParameter("content");
		
		String person = log.getUserEmail();
		
		Date date = new Date();
		SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy.MM.dd");
		String enterdate = dateFormat.format(date);
		int count = 0;
		
		dto.setBoard_index(board_index);
		dto.setContent(content);
		dto.setCount(count);
		dto.setEnterdate(enterdate);
		dto.setPerson(person);
		dto.setTheme(theme);
		
		int row = dao.boardInsert(dto);
		
		request.setAttribute("row", row);
		
		RequestDispatcher rd = request.getRequestDispatcher("/Board/boardInsertPro.jsp");
		rd.forward(request, response);
	}

}
