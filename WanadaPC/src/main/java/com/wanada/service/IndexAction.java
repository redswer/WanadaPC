package com.wanada.service;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.wanada.model.BoardDAO;
import com.wanada.model.BoardDTO;
import com.wanada.model.IndexBannerDTO;
import com.wanada.model.IndexDAO;
import com.wanada.model.IndexGamePcDTO;
import com.wanada.model.RecommandPcDTO;

public class IndexAction implements Action {

	@Override
	public void process(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		
		IndexDAO dao = IndexDAO.getInstance();
		BoardDAO bdao = BoardDAO.getInstance();
		
		List<IndexBannerDTO> list = dao.indexBannerList();
		List<IndexGamePcDTO> list2 = dao.indexGamePcList();
		List<RecommandPcDTO> list3 = dao.recommandPcGame();
		List<RecommandPcDTO> list4 = dao.recommandPcParts();
		List<BoardDTO> blist = bdao.indexBoardList();
		
		List<BoardDTO> list5 = new ArrayList<>(blist.subList(0, 4));
		List<BoardDTO> list6 = new ArrayList<>(blist.subList(4, 8));
		
		request.setAttribute("index_banner_list", list);
		request.setAttribute("index_game_pc_list", list2);
		request.setAttribute("recommand_pc_game_list", list3);
		request.setAttribute("recommand_pc_parts_list", list4);
		request.setAttribute("index_board_list_1", list5);
		request.setAttribute("index_board_list_2", list6);
		
		RequestDispatcher rd = request.getRequestDispatcher("/index.jsp");
		rd.forward(request, response);
	}

}
