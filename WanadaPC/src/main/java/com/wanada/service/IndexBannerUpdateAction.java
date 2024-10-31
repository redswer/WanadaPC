package com.wanada.service;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.wanada.model.IndexBannerDTO;
import com.wanada.model.IndexDAO;
import com.wanada.model.IndexGamePcDTO;
import com.wanada.model.ManageDAO;

public class IndexBannerUpdateAction implements Action {

	@Override
	public void process(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		
		IndexDAO dao = IndexDAO.getInstance();
		ManageDAO mdao = ManageDAO.getInstance();
		
		int index = Integer.parseInt(request.getParameter("index"));
		String index_image = request.getParameter("index_image");
		String page_link = request.getParameter("page_link");
		String category = request.getParameter("category");
		String subject = request.getParameter("subject");
		String page_image = request.getParameter("page_image");
		
		IndexBannerDTO dto = new IndexBannerDTO();
		dto.setBanner_index(index);
		dto.setIndex_image(index_image);
		dto.setPage_link(page_link);
		dto.setCategory(category);
		dto.setSubject(subject);
		dto.setPage_image(page_image);
		
		mdao.indexBannerUpdate(dto);
		
		List<IndexBannerDTO> list = dao.indexBannerList();
		List<IndexGamePcDTO> list2 = dao.indexGamePcList();
		
		index = dao.findBannerIndex();
		
		request.setAttribute("index", index);
		request.setAttribute("index_banner_list", list);
		request.setAttribute("index_game_pc_list", list2);
		
		RequestDispatcher rd = request.getRequestDispatcher("/manage/index_page.jsp");
		rd.forward(request, response);
	}

}
