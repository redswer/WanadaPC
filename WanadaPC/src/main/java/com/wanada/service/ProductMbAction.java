package com.wanada.service;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.wanada.model.MainBoardDTO;
import com.wanada.model.ProductDAO;

public class ProductMbAction implements Action {

	@Override
	public void process(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		ProductDAO dao=ProductDAO.getInstance();
		List<MainBoardDTO> list = dao.getComputerMBProducts();
	
		
		request.setAttribute("MB", list);
		
		RequestDispatcher rd = request.getRequestDispatcher("/Product/Product_MAINBOARD.jsp");
		rd.forward(request, response);

	}

}
