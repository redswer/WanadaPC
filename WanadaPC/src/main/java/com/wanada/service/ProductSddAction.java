package com.wanada.service;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import com.wanada.model.ProductDAO;
import com.wanada.model.SsdDTO;

public class ProductSddAction implements Action {

	@Override
	public void process(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		ProductDAO dao=ProductDAO.getInstance();
		List<SsdDTO> list = dao.getComputerSsdProducts();
	
		
		request.setAttribute("SSD", list);
		
		RequestDispatcher rd = request.getRequestDispatcher("/Product/Product_SDD.jsp");
		rd.forward(request, response);

	}

}
