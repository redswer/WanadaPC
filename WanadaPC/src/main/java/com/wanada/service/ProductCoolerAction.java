package com.wanada.service;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.wanada.model.CoolerDTO;
import com.wanada.model.ProductDAO;

public class ProductCoolerAction implements Action {

	@Override
	public void process(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		ProductDAO dao=ProductDAO.getInstance();
		List<CoolerDTO> list = dao.getComputerCoolerProducts();
	
		
		request.setAttribute("COOLER", list);
		
		RequestDispatcher rd = request.getRequestDispatcher("/Product/Product_COOLER.jsp");
		rd.forward(request, response);

	}

}
