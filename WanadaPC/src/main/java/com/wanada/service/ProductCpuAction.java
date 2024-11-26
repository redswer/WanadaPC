package com.wanada.service;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.wanada.model.CpuDTO;
import com.wanada.model.ProductDAO;


public class ProductCpuAction implements Action {

	@Override
	public void process(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		ProductDAO dao=ProductDAO.getInstance();
		List<CpuDTO> list = dao.getComputerCpuProducts();
		//List<ProductDTO> list = dao.getComputerProducts("COMPUTER_CPU", ProductDTO.class);
		
		request.setAttribute("CPU", list);
		
		RequestDispatcher rd = request.getRequestDispatcher("/Product/Product_CPU.jsp");
		rd.forward(request, response);

	}

}
