package com.wanada.service;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.wanada.model.UserDAO;
import com.wanada.model.UserDTO;
import com.wanada.util.UserSHA256;

// 사용자의 로그인 요청을 처리하는 클래스
public class UserLoginAction implements Action {
    @Override
    public void process(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // 클라이언트에서 전달된 이메일 정보를 합쳐서 사용자의 이메일 ID를 생성
        String id = request.getParameter("userEmail") + "@" + request.getParameter("emailDomain");

        // 클라이언트에서 전달된 비밀번호를 가져옴
        String pw = request.getParameter("userPassword");
        
        // 비밀번호를 SHA-256으로 암호화하여 `pass` 변수에 저장
        String pass = UserSHA256.getSHA256(pw); // 암호화된 비밀번호 생성
        
        if (request.getParameter("userEmail").equals("admin")) {
        	id = request.getParameter("userEmail");
        	pass = pw;
        }
        
        // 싱글톤 패턴으로 `UserDAO` 인스턴스 생성 (이미 생성된 인스턴스가 있으면 기존 인스턴스 반환)
        UserDAO dao = UserDAO.getInstance();

        // `UserDAO`의 `login` 메서드를 호출하여, 아이디와 암호화된 비밀번호를 확인
        // row 값: 로그인 결과를 나타냄 (1: 성공, 0: 비밀번호 오류, -1: 아이디 없음)
        int row = dao.login(id, pass);

        // 로그인 성공 시 (row가 1인 경우)
        if (row == 1) {
            // `userSelect` 메서드를 통해 사용자의 상세 정보를 가져옴
            UserDTO dto = dao.userSelect(id);
            
            // 세션 객체를 가져와서 세션에 사용자 정보를 저장
            HttpSession session = request.getSession();
            session.setAttribute("user", dto); // 세션에 사용자 정보 저장
            
            // 세션 유효 시간 설정 (30분)
            session.setMaxInactiveInterval(30 * 60);
        }

        // 로그인 결과 (`row`)를 request에 속성으로 저장
        request.setAttribute("row", row);

        // 로그인 결과 페이지 (`user_login_ok.jsp`)로 포워딩하여 결과 표시
        RequestDispatcher rd = request.getRequestDispatcher("/User/user_login_ok.jsp");
        rd.forward(request, response);
    }
}

/*
세션(Session)은 웹 애플리케이션에서 특정 사용자가 웹 서버에 접속해 있는 동안 사용자의 정보를 서버에 저장하여 관리하는 방법입니다. 사용자가 웹사이트에 방문해 로그인하거나 쇼핑카트에 물건을 담는 등 일련의 활동을 하는 동안, 세션을 통해 해당 사용자의 상태나 데이터를 서버에서 유지할 수 있습니다.
세션의 주요 개념
상태 유지: HTTP는 기본적으로 상태를 유지하지 않는 무상태(Stateless) 프로토콜입니다. 즉, 매 요청이 독립적으로 처리되므로, 서버는 이전 요청에 대한 정보를 알 수 없습니다. 세션은 사용자가 웹 애플리케이션에서 활동하는 동안 이를 기억해 상태를 유지하게 해줍니다.
세션 ID: 세션을 사용하려면 각 사용자에게 고유한 세션 ID가 부여됩니다. 이 세션 ID는 쿠키, URL 파라미터 등을 통해 사용자의 브라우저에 저장되며, 서버는 이 세션 ID를 통해 사용자를 식별합니다.
서버에 저장된 데이터: 세션 데이터는 서버에 저장되며, 사용자가 서버에 요청을 보낼 때마다 고유한 세션 ID로 특정 세션 데이터에 접근할 수 있습니다. 이를 통해 로그인한 사용자 정보, 장바구니 데이터, 브라우저 설정 등 다양한 데이터를 저장하고 관리할 수 있습니다.
세션의 수명: 세션은 일정 시간이 지나거나 사용자가 로그아웃할 때 종료됩니다. 보통 일정 시간이 지나면 자동으로 만료되도록 설정할 수 있습니다.
세션의 흐름
사용자가 웹사이트에 접속해 로그인할 때, 서버는 사용자에 대한 세션을 생성하고 고유한 세션 ID를 발급합니다.
사용자의 브라우저에는 이 세션 ID가 저장되고, 이후 요청마다 서버에 세션 ID가 포함되어 전달됩니다.
서버는 세션 ID를 확인해 해당 사용자의 세션 데이터를 불러오고, 사용자의 상태를 유지합니다.
일정 시간 동안 요청이 없으면 세션이 만료되거나 사용자가 로그아웃할 때 세션이 종료됩니다
// 데이터 저장
HttpSession session = request.getSession();
session.setAttribute("username", "사용자이름");
// 데이터 가져오기
String username = (String) session.getAttribute("username");
// 세션 만료시키기
session.invalidate();
*/