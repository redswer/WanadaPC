package com.wanada.service;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.wanada.model.IndexBannerDTO;
import com.wanada.model.IndexDAO;
import com.wanada.model.ManageDAO;

public class IndexBannerDeleteAction implements Action {

	@Override
	public void process(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int index = Integer.parseInt(request.getParameter("index"));
		
		IndexDAO dao = IndexDAO.getInstance();
		ManageDAO mdao = ManageDAO.getInstance();
		
		mdao.indexBannerDelete(index);
		
		List<IndexBannerDTO> list = dao.indexBannerList();
		
		request.setAttribute("index_banner_list", list);
		
		RequestDispatcher rd = request.getRequestDispatcher("/manage/index_page.jsp");
		rd.forward(request, response);
	}

}
