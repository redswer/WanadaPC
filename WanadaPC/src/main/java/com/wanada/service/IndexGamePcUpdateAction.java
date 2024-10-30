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

public class IndexGamePcUpdateAction implements Action {

	@Override
	public void process(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		
		IndexDAO dao = IndexDAO.getInstance();
		ManageDAO mdao = ManageDAO.getInstance();
		
		int index = Integer.parseInt(request.getParameter("index"));
		String image = request.getParameter("image");
		String subject = request.getParameter("subject");
		String information = request.getParameter("information");
		String category = request.getParameter("category");
		String game_pc_menu = request.getParameter("game_pc_menu");
		String game_pc_image = request.getParameter("game_pc_image");
		
		IndexGamePcDTO dto = new IndexGamePcDTO();
		dto.setGame_pc_index(index);
		dto.setImage(image);
		dto.setSubject(subject);
		dto.setInformation(information);
		dto.setCategory(category);
		dto.setGame_pc_menu(game_pc_menu);
		dto.setGame_pc_image(game_pc_image);
		
		mdao.indexGamePcUpdate(dto);
		
		List<IndexBannerDTO> list = dao.indexBannerList();
		List<IndexGamePcDTO> list2 = dao.indexGamePcList();
		
		request.setAttribute("index_banner_list", list);
		request.setAttribute("index_game_pc_list", list2);
		
		RequestDispatcher rd = request.getRequestDispatcher("/manage/index_page.jsp");
		rd.forward(request, response);
	}

}
