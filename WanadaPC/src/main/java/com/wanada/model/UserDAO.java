package com.wanada.model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.wanada.util.DBConnPool;

public class UserDAO {
	private UserDAO() {}
	private static UserDAO instance = new UserDAO();
	
	public static UserDAO getInstance() {
			return instance;
	}
	Connection conn = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	
	//이메일 중복체크 
	public int userEmailCheck(String userEmail) {
		int row = 0;
		String sql ="select count(*)from user_table where userEmail =?";
		try {
				conn = DBConnPool.getConnection();
				pstmt = conn.prepareStatement(sql);
				pstmt.setString(1,userEmail);
				rs = pstmt.executeQuery();
				if(rs.next()) {
					row = rs.getInt(1);
				}
				
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			DBConnPool.close(conn, pstmt, rs);
		}
		return row;
	}
	//회원가입
	// 사용자 정보를 데이터베이스에 삽입하는 메서드
	public int UserWrite(UserDTO dto) {
	    int row = 0;
	    String sql = "INSERT INTO user_table(userEmail, userPassword, userName, userBirthdate, gender, tell) VALUES(?, ?, ?, ?, ?, ?)";

	    try {
	        conn = DBConnPool.getConnection();
	        pstmt = conn.prepareStatement(sql);
	        pstmt.setString(1, dto.getUserEmail());
	        pstmt.setString(2, dto.getUserPassword());
	        pstmt.setString(3, dto.getUserName());
	        pstmt.setString(4, dto.getUserBirthdate());  // String으로 설정
	        pstmt.setString(5, dto.getGender());
	        pstmt.setString(6, dto.getTell());

	        row = pstmt.executeUpdate();
	    } catch (Exception e) {
	        e.printStackTrace();
	    } finally {
	        DBConnPool.close(conn, pstmt);
	    }
	    return row;
	}
	//로그인 
	   public int login(String userid, String passwd) {
		      String sql = "select userPassword from user_table where userEmail = ?";
		      int row = 0;
		      
		      try {
		         conn = DBConnPool.getConnection();
		         pstmt = conn.prepareStatement(sql);
		         pstmt.setString(1, userid);
		         rs = pstmt.executeQuery();
		         
		         if (rs.next()) {
		            String pass = rs.getString("userPassword");
		            if (pass.equals(passwd)) {
		               row = 1; //로그인 성공 
		            }
		            // 비밀번호가 틀렸으면 0
		         } else {
		            row = -1; //아이디가 틀렸으면 -1 
		         }
		      } catch (Exception e) {
		         e.printStackTrace();
		      } finally {
		         DBConnPool.close(conn, pstmt, rs);
		      }
		      
		      return row;
		   }
	//특정 email을 이용한 회원 검색 수정 
	public UserDTO userSelect(String email) {
		UserDTO dto = new UserDTO();
		String sql = "select * from user_table where userEmail=?";
		
		try {
			conn = DBConnPool.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, email);
			rs = pstmt.executeQuery(); // 쿼리문 실행 값을 rs 에 넣는다 
			
				//if(rs.next())는 결과가 존재하는지 확인하는 조건문입니다.
				//만약 데이터가 존재하면 true를 반환하여, 그 다음의 코드를 실행하게 됩니다.
			if(rs.next()) {
				dto.setUserEmail(rs.getString("userEmail"));
				dto.setUserPassword(rs.getString("userPassword"));
				dto.setUserName(rs.getString("userName"));
				dto.setGender(rs.getString("gender"));
				dto.setUserBirthdate(rs.getString("userbirthdate"));
				dto.setTell(rs.getString("tell"));
			}
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			DBConnPool.close(conn, pstmt, rs);
		}
		return dto;
	}
	
	//비밀번호업데이트
	public void updatePassword(String userEmail, String newPassword) {
	    String sql = "UPDATE user_table SET userPassword = ? WHERE userEmail = ?";
	    
	    try (Connection con = DBConnPool.getConnection();
	         PreparedStatement pstmt = con.prepareStatement(sql)) {
	        
	        pstmt.setString(1, newPassword);
	        pstmt.setString(2, userEmail);
	        
	        pstmt.executeUpdate();
	    } catch (Exception e) {
	        e.printStackTrace();
	    }
	}
	//아래 코드는 이름과 전화번호를 사용하여 해당 사용자의 이메일을 조회하는
	public UserDTO findEmailByNameAndTell(String userName, String tell) {
	    UserDTO user = null;
	    String sql = "SELECT userEmail FROM user_table WHERE userName = ? AND tell = ?";
	    
	    try (Connection con = DBConnPool.getConnection();
	         PreparedStatement pstmt = con.prepareStatement(sql)) {
	        
	        pstmt.setString(1, userName);
	        pstmt.setString(2, tell);
	        
	        try (ResultSet rs = pstmt.executeQuery()) {
	            if (rs.next()) {
	                // UserDTO 객체에 이메일 설정
	                user = new UserDTO();
	                user.setUserEmail(rs.getString("userEmail"));
	            }
	        }
	    } catch (Exception e) {
	        e.printStackTrace();
	    }
	    return user;
	}
	//이메일과 비밀번호 찾는거 
	public UserDTO findUserByEmailAndTell(String userEmail, String tell) {
	    UserDTO user = null;
	    String sql = "SELECT * FROM user_table WHERE userEmail = ? AND tell = ?";
	    
	    try (Connection con = DBConnPool.getConnection();
	         PreparedStatement pstmt = con.prepareStatement(sql)) {
	        
	        pstmt.setString(1, userEmail);
	        pstmt.setString(2, tell);
	        
	        try (ResultSet rs = pstmt.executeQuery()) {
	            if (rs.next()) {
	                // UserDTO 객체 생성 및 데이터 설정
	                user = new UserDTO();
	                user.setUserEmail(rs.getString("userEmail"));
	                user.setUserPassword(rs.getString("userPassword"));
	                user.setUserName(rs.getString("userName"));
	                user.setUserBirthdate(rs.getString("userbirthdate"));
	                user.setTell(rs.getString("tell"));
	                user.setGender(rs.getString("gender"));
	                user.setUserBirthdate(rs.getString("userBirthdate"));
	            }
	        }
	    } catch (Exception e) {
	        e.printStackTrace();
	    }
	    return user;
	}
}
