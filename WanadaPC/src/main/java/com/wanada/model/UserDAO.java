package com.wanada.model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

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
	public UserDTO userSelect(String userEmail) {
		UserDTO dto = new UserDTO();
		String sql = "select * from user_table where userEmail=?";
		
		try {
			conn = DBConnPool.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, userEmail);
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
		// 특정 회원 정보를 수정하는 메서드
		public int userUpdate(UserDTO dto, String rePass) {
	    int row = 0;
	    String sql = "update user_table set userName = ?, userPassword = ?, tell = ? where userEmail = ?";
	    
	    int loginCheck = login(dto.getUserEmail(), dto.getUserPassword());
	    
	    if (loginCheck == 1) {
	    	try {
	    		Connection conn = DBConnPool.getConnection();
	    		pstmt = conn.prepareStatement(sql); // 쿼리문을 매개변수로 준비된 Statement 생성
	    		pstmt.setString(1, dto.getUserName()); // 세 번째 매개변수에 회원이름
	    		pstmt.setString(2, rePass); //두번쨰 매게 변수에 회원 비밀번호 설정 
	    		pstmt.setString(3, dto.getTell()); // 네 번째 매게변수에 회원 번호
	    		pstmt.setString(4, dto.getUserEmail()); // 여섯 번째 매게변수에 회원 생년월일 설정
	    		
	    		row = pstmt.executeUpdate();
	    	} catch (Exception e) {
	    		e.printStackTrace(); // 예외 발생 시 오류 메시지 출력
	    	} finally {
	    		// 자원 해제 - DB 연결과 PreparedStatement를 닫음
	    		DBConnPool.close(conn, pstmt);//?
	    	}
	    }
	    
	    return row; // 수정된 행 수 반환 (0이면 수정 실패, 1 이상이면 수정 성공)
	}
		
	public List<BoardDTO> myBoard (String id) {
		List<BoardDTO> list = new ArrayList<>();
		String sql = "select * from boardcomment where person = ?";
		
		try {
			conn = DBConnPool.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, id);
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
}
