package com.wanada.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.wanada.service.Action;
import com.wanada.service.IndexBannerDeleteAction;
import com.wanada.service.IndexBannerUpdateAction;

@WebServlet("/index_banner")
public class IndexBannerController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public IndexBannerController() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String cmd = request.getParameter("cmd");
		
		Action action = null;
		System.out.println(cmd);
		
		if (cmd.equals("update")) {
			action = new IndexBannerUpdateAction();
		} else if (cmd.equals("delete")) {
			action = new IndexBannerDeleteAction();
		}
		
		action.process(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
