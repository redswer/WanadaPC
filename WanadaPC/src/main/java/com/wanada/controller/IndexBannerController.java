package com.wanada.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.wanada.service.Action;
import com.wanada.service.IndexBannerDeleteAction;
import com.wanada.service.IndexBannerInsertAction;
import com.wanada.service.IndexBannerUpdateAction;

@WebServlet("/index_banner")
public class IndexBannerController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public IndexBannerController() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String sql = request.getParameter("sql");
		
		Action action = null;
		System.out.println(sql);
		
		if (sql.equals("update")) {
			action = new IndexBannerUpdateAction();
		} else if (sql.equals("delete")) {
			action = new IndexBannerDeleteAction();
		} else if (sql.equals("insert")) {
			action = new IndexBannerInsertAction();
		}
		
		action.process(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
