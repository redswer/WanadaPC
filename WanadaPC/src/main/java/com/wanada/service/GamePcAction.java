package com.wanada.service;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.wanada.model.IndexDAO;
import com.wanada.model.IndexGamePcDTO;

public class GamePcAction implements Action {

	@Override
	public void process(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");

		IndexDAO dao = IndexDAO.getInstance();
		List<IndexGamePcDTO> list = dao.indexGamePcList();
		String category = request.getParameter("category");
		
		request.setAttribute("list", list);
		request.setAttribute("category", category);
		
		RequestDispatcher rd = request.getRequestDispatcher("/Pc/gamePC.jsp");
		rd.forward(request, response);
	}

}
