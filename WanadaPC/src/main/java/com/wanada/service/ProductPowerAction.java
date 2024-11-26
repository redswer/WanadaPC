package com.wanada.service;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.wanada.model.PowerDTO;
import com.wanada.model.ProductDAO;

public class ProductPowerAction implements Action {

	@Override
	public void process(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		ProductDAO dao=ProductDAO.getInstance();
		List<PowerDTO> list = dao.getComputerPOWERProducts();
	
		
		request.setAttribute("POWER", list);
		
		RequestDispatcher rd = request.getRequestDispatcher("/Product/Product_POWER.jsp");
		rd.forward(request, response);

	}

}
