package com.wanada.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.wanada.model.CpuDTO;
import com.wanada.model.ProductDAO;

/**
 * Servlet implementation class Product_CPU
 */
@WebServlet("/Product_CPU")
public class Product_CPU extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Product_CPU() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String action = request.getParameter("action");

        if ("getCpuProducts".equals(action)) {
            ProductDAO dao = ProductDAO.getInstance();
            List<CpuDTO> cpuProducts = dao.getComputerCpuProducts();
            request.setAttribute("cpuProducts", cpuProducts);
            request.getRequestDispatcher("Product_CPU.jsp").forward(request, response);
        } else {
            response.getWriter().append("Served at: ").append(request.getContextPath());
        }
    }
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
