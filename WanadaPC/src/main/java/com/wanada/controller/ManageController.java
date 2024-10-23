package com.wanada.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.wanada.service.Action;
import com.wanada.service.ManageAction;
import com.wanada.service.ManageIndexAction;

@WebServlet("/manage")
public class ManageController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public ManageController() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		
		Action action = null;
		
		if (request.getParameter("cmd") == null) {
			action = new ManageAction();
		} else if (request.getParameter("cmd").equals("index")) {
			action = new ManageIndexAction();
		}
		
		action.process(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		doGet(request, response);
	}

}
