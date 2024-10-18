package com.wanada.service;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class EtcPcAction implements Action {

	@Override
	public void process(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		
		String category = request.getParameter("category");
		
		request.setAttribute("category", category);
		
		RequestDispatcher rd = request.getRequestDispatcher("/Pc/etcPC.jsp");
		rd.forward(request, response);
	}

}
