package com.wanada.controller;

import java.io.BufferedReader;
import java.io.IOException;
import java.util.Arrays;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.fasterxml.jackson.core.type.TypeReference;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.wanada.model.ProductDAO;
import com.wanada.model.ProductDTO;

/**
 * Servlet implementation class ProductController
 */
@WebServlet("/ProductController")
public class ProductController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public ProductController() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
	        throws ServletException, IOException {
            System.out.print("01-");
	        String action = request.getParameter("action");
	        System.out.println("Action parameter: " + action);
	        System.out.print("02-");
	        if ("getAllProductsAjax".equals(action)) {
	            System.out.print("1");
	            getAllProductsAjax(request, response);  // Ajax 요청 처리
	        } else {
	            System.out.print("2-");
	            response.getWriter().append("Served at: ").append(request.getContextPath());
	        }
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		 	String[] COMPUTER_CPU = request.getParameterValues("CPU_Product_list[]");
		    String[] COMPUTER_COOLER = request.getParameterValues("COOLER_Product_list[]");
		    String[] COMPUTER_GPU = request.getParameterValues("GPU_Product_list[]");
		    String[] COMPUTER_HDD = request.getParameterValues("HDD_Product_list[]");
		    String[] COMPUTER_MAINBOARD = request.getParameterValues("Mainboard_Product_list[]");
		    String[] COMPUTER_POWER = request.getParameterValues("POWER_Product_list[]");
		    String[] COMPUTER_REM = request.getParameterValues("REM_Product_list[]");
		    String[] COMPUTER_SSD = request.getParameterValues("SSD_Product_list[]");

		    List<ProductDTO> products;
		    ProductDAO dao = ProductDAO.getInstance();
		    boolean isFilterEmpty = (COMPUTER_CPU == null || COMPUTER_CPU.length == 0) &&
                    (COMPUTER_COOLER == null || COMPUTER_COOLER.length == 0) &&
                    (COMPUTER_GPU == null || COMPUTER_GPU.length == 0) &&
                    (COMPUTER_HDD == null || COMPUTER_HDD.length == 0) &&
                    (COMPUTER_MAINBOARD == null || COMPUTER_MAINBOARD.length == 0) &&
                    (COMPUTER_POWER == null || COMPUTER_POWER.length == 0) &&
                    (COMPUTER_REM == null || COMPUTER_REM.length == 0) &&
                    (COMPUTER_SSD == null || COMPUTER_SSD.length == 0);
		    System.out.print("5-");

		    if (isFilterEmpty) {
		        products = dao.getAllProducts(); // 전체 제품
		        System.out.print("5-");
		    } else {
		        System.out.print("6-");
		        products = dao.getFilteredProducts(COMPUTER_CPU, COMPUTER_COOLER, COMPUTER_GPU, COMPUTER_HDD,
		                                           COMPUTER_MAINBOARD, COMPUTER_POWER, COMPUTER_REM, COMPUTER_SSD);
		        
		    }

		    response.setContentType("application/json");
		    response.setCharacterEncoding("UTF-8");
		    ObjectMapper mapper = new ObjectMapper();
		    String jsonResponse = mapper.writeValueAsString(products);
		    response.getWriter().write(jsonResponse);
		    
	}
	 protected void getAllProductsAjax(HttpServletRequest request, HttpServletResponse response)
	            throws ServletException, IOException {
		 	System.out.print("7-");
	        response.setContentType("application/json");
	        System.out.print("8-");
	        response.setCharacterEncoding("UTF-8");
	        System.out.print("9-");
	        ProductDAO productDAO = new ProductDAO();
	        List<ProductDTO> allProducts = productDAO.getAllProducts();

	        ObjectMapper mapper = new ObjectMapper();
	        String jsonResponse = mapper.writeValueAsString(allProducts);

	        response.getWriter().write(jsonResponse);
	    }

}
