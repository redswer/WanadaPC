package com.wanada.model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.wanada.util.DBConnPool;

public class IndexDAO {
	private IndexDAO() {}
	
	private static IndexDAO instance = new IndexDAO();
	
	public static IndexDAO getInstance() {
		return instance;
	}
	
	Connection con = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	
	public List<IndexBannerDTO> indexBannerList() {
		List<IndexBannerDTO> list = new ArrayList<>();
		String sql = "select * from index_banner order by banner_index";
		
		try {
			con = DBConnPool.getConnection();
			pstmt = con.prepareStatement(sql);
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				IndexBannerDTO dto = new IndexBannerDTO();
				
				dto.setBanner_index(rs.getInt("banner_index"));
				dto.setImage(rs.getString("image"));
				dto.setPage_link(rs.getString("page_link"));
				dto.setCategory(rs.getString("category"));
				
				list.add(dto);
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnPool.close(con, pstmt, rs);
		}
		
		return list;
	}
	
	public List<IndexGamePcDTO> indexGamePcList() {
		List<IndexGamePcDTO> list = new ArrayList<>();
		String sql = "select * from index_game_pc";
		
		try {
			con = DBConnPool.getConnection();
			pstmt = con.prepareStatement(sql);
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				IndexGamePcDTO dto = new IndexGamePcDTO();
				
				dto.setImage(rs.getString("image"));
				dto.setSubject(rs.getString("subject"));
				dto.setInfomation(rs.getString("infomation"));
				dto.setCategory(rs.getString("category"));
				dto.setGame_pc_menu(rs.getString("game_pc_menu"));
				dto.setGame_pc_image(rs.getString("game_pc_image"));
				
				list.add(dto);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnPool.close(con, pstmt, rs);
		}
		
		return list;
	}
}
