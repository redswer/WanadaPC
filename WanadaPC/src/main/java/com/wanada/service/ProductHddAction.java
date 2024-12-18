package com.wanada.service;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.wanada.model.HddDTO;
import com.wanada.model.ProductDAO;

public class ProductHddAction implements Action {

	@Override
	public void process(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		ProductDAO dao=ProductDAO.getInstance();
		List<HddDTO> list = dao.getComputerHddProducts();
	
		
		request.setAttribute("HDD", list);
		
		RequestDispatcher rd = request.getRequestDispatcher("/Product/Product_HDD.jsp");
		rd.forward(request, response);

	}

}
