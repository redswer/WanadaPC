package com.wanada.service;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.wanada.model.CaseDTO;
import com.wanada.model.ProductDAO;

public class ProductCaseAction implements Action {

	@Override
	public void process(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		ProductDAO dao=ProductDAO.getInstance();
		List<CaseDTO> list = dao.getComputerCaseProducts();
	
		
		request.setAttribute("CASE", list);
		
		RequestDispatcher rd = request.getRequestDispatcher("/Product/Product_CASE.jsp");
		rd.forward(request, response);

	}

}
