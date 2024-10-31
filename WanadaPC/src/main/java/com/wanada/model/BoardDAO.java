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
				dto.setPerson(rs.getString("person"));
				dto.setContent(rs.getString("content"));
				dto.setEnterdate(rs.getString("enterdate"));
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
	
	public BoardDTO boardDetail(int index) {
		BoardDTO dto = new BoardDTO();
		String sql = "select * from boardcomment where board_index = ?";
		
		try {
			conn = DBConnPool.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, index);
			rs = pstmt.executeQuery();
			
			if (rs.next()) {
				dto.setBoard_index(rs.getInt("board_index"));
				dto.setTheme(rs.getString("theme"));
				dto.setContent(rs.getString("content"));
				dto.setPerson(rs.getString("person"));
				dto.setEnterdate(rs.getString("enterdate"));
				dto.setCount(rs.getInt("count"));
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnPool.close(conn, pstmt, rs);
		}
		
		return dto;
	}
	
	public int boardUpdate(BoardDTO dto) {
		int row = 0;
		String sql = "update boardcomment set theme = ?, content = ? where board_index = ?";
		
		try {
			conn = DBConnPool.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, dto.getTheme());
			pstmt.setString(2, dto.getContent());
			pstmt.setInt(3, dto.getBoard_index());
			
			row = pstmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnPool.close(conn, pstmt);
		}
		
		return row;
	}
}
