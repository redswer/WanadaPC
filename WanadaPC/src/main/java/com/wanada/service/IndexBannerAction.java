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

public class IndexBannerAction implements Action {

	@Override
	public void process(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		
		IndexDAO dao = IndexDAO.getInstance();
		ManageDAO mdao = ManageDAO.getInstance();
		
		String x_img = request.getParameter("x_image");
		String image = request.getParameter("image");
		String page_link = request.getParameter("page_link");
		String category = request.getParameter("category");
		
		mdao.indexBannerUpdate(x_img, image, page_link, category);
		List<IndexBannerDTO> list = dao.indexBannerList();
		
		request.setAttribute("index_banner_list", list);
		
		RequestDispatcher rd = request.getRequestDispatcher("/manage/index_page.jsp");
		rd.forward(request, response);
	}

}
