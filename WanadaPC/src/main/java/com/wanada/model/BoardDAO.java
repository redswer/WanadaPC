package com.wanada.model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.wanada.util.DBConnPool;

public class BoardDAO {
	private BoardDAO() {}
	
	private static BoardDAO instance = new BoardDAO();
	
	public static BoardDAO getInstance() {
		return instance;
	}
	
	Connection conn = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	
	public List<BoardDTO> boardList() {
		List<BoardDTO> list = new ArrayList<>();
		String sql = "select * from boardcomment";
		
		try {
			conn = DBConnPool.getConnection();
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				BoardDTO dto = new BoardDTO();
				
				dto.setBoard_index(rs.getInt("board_index"));
				dto.setTheme(rs.getString("theme"));
				dto.setTheme(rs.getString("person"));
				dto.setTheme(rs.getString("enterdate"));
				dto.setCount(rs.getInt("count"));
				
				list.add(dto);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnPool.close(conn, pstmt, rs);
		}
		
		return list;
	}
}
