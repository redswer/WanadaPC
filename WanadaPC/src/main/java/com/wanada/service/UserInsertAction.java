package com.wanada.service;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.wanada.model.UserDAO; // 데이터베이스 작업을 수행하는 DAO 클래스
import com.wanada.model.UserDTO; // 사용자 데이터를 담는 DTO 클래스
import com.wanada.util.UserSHA256; // 비밀번호 암호화를 위한 SHA-256 유틸리티 클래스

public class UserInsertAction implements Action {

	  // 인터페이스의 추상 메서드 구현: HTTP 요청과 응답을 받아 처리
    @Override
    public void process(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("utf-8");
        
        UserDAO dao = UserDAO.getInstance();
        UserDTO dto = new UserDTO();
        
        String userEmail = request.getParameter("userEmail").trim() + "@" + request.getParameter("emailDomain");
        String userPassword = request.getParameter("userPassword");
        String userName = request.getParameter("userName");
        String userBirthdate = request.getParameter("userBirthdate"); // 생년월일을 String으로 받음
        String gender = request.getParameter("gender");
        String tell = request.getParameter("tell");

        dto.setUserEmail(userEmail);
        dto.setUserPassword(UserSHA256.getSHA256(userPassword));
        dto.setUserName(userName);
        dto.setUserBirthdate(userBirthdate);  // String 타입으로 설정
        dto.setGender(gender);
        dto.setTell(tell);

        int row = 0;
        try {
            row = dao.UserWrite(dto);
            request.setAttribute("row", row);
        } catch (Exception e) {
            e.printStackTrace();
            request.setAttribute("error", "회원가입 중 오류가 발생했습니다.");
        }

        RequestDispatcher rd = request.getRequestDispatcher("/User/user_insert_pro.jsp");
        rd.forward(request, response);
    }
}

/*        
        // 사용자 입력값을 DTO 객체에 저장
        dto.setUserEmail(request.getParameter("userEmail")); // 사용자 이메일을 DTO에 저장
        dto.setUserPassword(UserSHA256.getSHA256(request.getParameter("userPassword"))); // 비밀번호는 SHA-256으로 암호화하여 저장
        dto.setUserName(request.getParameter("userName")); // 사용자 이름을 DTO에 저장
        dto.setGender(request.getParameter("gender")); // 성별 정보를 DTO에 저장
        dto.setTell(request.getParameter("tell")); // 전화번호를 DTO에 저장
        
        // DB에 사용자 정보를 저장하고, 결과(영향받은 행의 수)를 row에 저장
        int row = dao.UserWrite(dto);
        
        // 요청 객체에 row 속성으로 저장, row가 1 이상이면 데이터가 정상적으로 저장된 것
        request.setAttribute("row", row);
        
        // 회원가입 결과를 보여줄 JSP 페이지로 요청을 포워드?? 넘기는것 
        RequestDispatcher rd = request.getRequestDispatcher("User/user_insert_pro.jsp");
        rd.forward(request, response); // 요청과 응답 객체를 함께 전달하여 포워딩
*/
   