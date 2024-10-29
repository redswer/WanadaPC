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
        // 클라이언트에서 받은 요청 데이터를 UTF-8로 인코딩
        request.setCharacterEncoding("utf-8");
        
        // 데이터베이스 접근 객체 생성 및 사용자 정보를 저장할 DTO 객체 생성
        UserDAO dao = UserDAO.getInstance();
        UserDTO dto = new UserDTO();
        
        // 사용자 입력값을 안전하게 DTO에 저장
        String userEmail = request.getParameter("userEmail").trim()+"@"+request.getParameter("emailDomain");
        String userPassword = request.getParameter("userPassword");
        String userName = request.getParameter("userName");
        String gender = request.getParameter("gender");
        String tell = request.getParameter("tell");

        // 입력 값 검증 (null 체크 및 기본값 설정)
        if (userEmail != null) dto.setUserEmail(userEmail);
        if (userPassword != null) dto.setUserPassword(UserSHA256.getSHA256(userPassword));
        if (userName != null) dto.setUserName(userName);
        if (gender != null) dto.setGender(gender);
        if (tell != null) dto.setTell(tell);

        // 데이터베이스에 사용자 정보 저장 및 예외 처리
        int row = 0;
        try {
            row = dao.UserWrite(dto);
            request.setAttribute("row", row); // 요청 객체에 row 속성으로 저장
        } catch (Exception e) {
            e.printStackTrace();
            request.setAttribute("error", "회원가입 중 오류가 발생했습니다.");
        }

        // 회원가입 결과를 보여줄 JSP 페이지로 요청을 포워드
        RequestDispatcher rd = request.getRequestDispatcher("/User/user_insert_pro.jsp");
        rd.forward(request, response); // 요청과 응답 객체를 함께 전달하여 포워딩
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
   