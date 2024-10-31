package com.wanada.service;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.wanada.model.BoardDTO;
import com.wanada.model.IndexDAO;

public class SearchAction implements Action {

	@Override
	public void process(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String text = request.getParameter("text");
		IndexDAO dao = IndexDAO.getInstance();
		
		List<BoardDTO> blist = dao.searchBoard(text);
		
		request.setAttribute("text", text);
		request.setAttribute("board", blist);
		
		RequestDispatcher rd = request.getRequestDispatcher("/Util/search_result.jsp");
		rd.forward(request, response);
	}

}
