package com.wanada.model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.wanada.util.DBConnPool;

public class ManageDAO {
	private ManageDAO() {}
	
	private static ManageDAO instance = new ManageDAO();
	
	public static ManageDAO getInstance() {
		return instance;
	}
	
	Connection con = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	
	public int indexBannerUpdate(int index, String image, String page_link, String category) {
		int row = 0; 
		String sql= "update index_banner set image = ?, page_link = ?, category = ? where banner_index = ?";
		
		try {
			con = DBConnPool.getConnection();
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, image);
			pstmt.setString(2, page_link);
			pstmt.setString(3, category);
			pstmt.setInt(4, index);
			
			row = pstmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnPool.close(con, pstmt);
		}
		
		return row;
	}
	
	public int indexBannerDelete(int index) {
		int row = 0; 
		String sql= "delete from index_banner where banner_index = ?";
		
		try {
			con = DBConnPool.getConnection();
			pstmt = con.prepareStatement(sql);
			pstmt.setInt(1, index);
			
			row = pstmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnPool.close(con, pstmt);
		}
		return row;
	}
}
