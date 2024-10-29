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
		String sql ="select count(*)from tbl_user where userEmail =?";
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
		// public: 접근 가능, int: 반환 타입, UserInsert: 메서드 이름, UserDTO dto: 사용자 정보 객체
	    int row = 0; // 삽입된 행 수를 저장할 변수 초기화
	    String sql = "insert into tbl_user(userEmail,userPassword,userName,gender,tell) values(?,?,?,?,?)"; // SQL 쿼리 정의
	    
	    try {
	        conn = DBConnPool.getConnection(); // 데이터베이스 연결 가져오기
	        pstmt = conn.prepareStatement(sql); // PreparedStatement 객체 생성
	        
	        pstmt.setString(1, dto.getUserEmail()); // 이메일 설정
	        pstmt.setString(2, dto.getUserPassword()); // 비밀번호 설정
	        pstmt.setString(3, dto.getUserName()); // 이름 
	        pstmt.setString(4, dto.getGender()); // 성별 설정
	        pstmt.setString(5, dto.getTell()); // 전화번호 설정
	        
	        row = pstmt.executeUpdate(); // 쿼리 실행 후 삽입된 행 수 저장 row값 반환 값을 1,0 뿐만 아니라 -1 도 추가하려면 if문 작성 
	    } catch (Exception e) {
	        e.printStackTrace(); // 예외 발생 시 스택 트레이스 출력
	    } finally {
	        DBConnPool.close(conn, pstmt); // 연결과 PreparedStatement 닫기
	    }
	    return row; // 삽입된 행 수 반환
	}
	//로그인 
	public int UserLogin(String userEmail, String userPassword) {
		int row = 0; // -1아이디(이메일) 없음, 0비번오류, 1성공 
		String sql = "select userPassword from tbl_user where userEmail=?";
		
		try {
			conn = DBConnPool.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1,userEmail);
			rs = pstmt.executeQuery();
			if(rs.next()) {
				String dbpass= rs.getString("userPassword");
				if(dbpass.equals(userPassword)) {
					//가장 최근 로그인한 날짜 업데이트 ? 
					sql="update tbl_user set last_time = sysdate where userEmail=?";
					pstmt = conn.prepareStatement(sql);
					pstmt.setString(1, userEmail);
					pstmt.executeUpdate();
					row=1;
				}else {
					row=0;
				}
			}else {
				//아이디가 없는 경우 
					row=-1;
			}
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			DBConnPool.close(conn,pstmt,rs);
		}
		return row;
	}
	//특정 email을 이용한 회원 검색 수정 
	public UserDTO userSelect(String email) {
		UserDTO dto = new UserDTO();
		String sql = "from tbl_user where userEmail=?";
		
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
				dto.setTell(rs.getString("tell"));
				dto.setFirst_time(rs.getString("first_time"));
				dto.setLast_time(rs.getString("last_time"));
			}
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			DBConnPool.close(conn, pstmt, rs);
		}
		return dto;
	}
	
}
