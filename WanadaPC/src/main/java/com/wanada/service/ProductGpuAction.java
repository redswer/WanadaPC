package com.wanada.service;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.wanada.model.GpuDTO;
import com.wanada.model.ProductDAO;


public class ProductGpuAction implements Action {

	@Override
	public void process(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		ProductDAO dao=ProductDAO.getInstance();
		List<GpuDTO> list = dao.getComputerGpuProducts();
	
		
		request.setAttribute("GPU", list);
		
		RequestDispatcher rd = request.getRequestDispatcher("/Product/Product_GPU.jsp");
		rd.forward(request, response);


	}

}
