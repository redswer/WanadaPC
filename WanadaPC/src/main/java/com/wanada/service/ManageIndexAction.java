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

public class ManageIndexAction implements Action {

	@Override
	public void process(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		
		IndexDAO dao = IndexDAO.getInstance();
		
		List<IndexBannerDTO> list = dao.indexBannerList();
		List<IndexGamePcDTO> list2 = dao.indexGamePcList();
		int index = dao.findBannerIndex();
		
		request.setAttribute("index_banner_list", list);
		request.setAttribute("index_game_pc_list", list2);
		request.setAttribute("index", index);
		
		RequestDispatcher rd = request.getRequestDispatcher("/manage/index_page.jsp");
		rd.forward(request, response);
	}

}
