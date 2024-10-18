<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- JSP 페이지의 지시어. 
     - language: 페이지에서 사용할 프로그래밍 언어(JAVA)로 설정합니다.
     - contentType: 페이지의 콘텐츠 유형과 문자 인코딩(UTF-8) 설정.
     - pageEncoding: JSP 페이지의 문자 인코딩(UTF-8) 설정. 
-->

<%
	// 요청(request) 객체에서 "row"라는 속성(attribute)을 가져와 정수형(int)으로 변환하여 변수 row에 저장합니다.
	int row = (int)request.getAttribute("row");
	
	// row 값이 1인 경우, 즉 로그인 성공 시
	if(row==1){
%>
	<script>
		alert("로그인 성공");
		// 사용자에게 "로그인 성공"이라는 알림 메시지를 표시합니다.
		location.href="/index";
		// 알림 메시지 후에 /index 페이지로 리디렉션합니다.
	</script>
<%
	// row 값이 0인 경우, 즉 비밀번호가 틀린 경우
	}else if(row==0){
%>	
	<script>
		alert("비밀번호가 맞지 않습니다");
		// 사용자에게 "비밀번호가 맞지 않습니다"라는 경고 메시지를 표시합니다.
		history.back();
		// 알림 메시지 후에 이전 페이지로 돌아갑니다.
	</script>
<%
	// row 값이 0이나 1이 아닌 경우, 즉 아이디가 존재하지 않는 경우
	}else{
%>
	<script>
		alert("아이디가 존재하지 않습니다.\n 회원가입후 이용하세요");
		// 사용자에게 "아이디가 존재하지 않습니다"라는 경고 메시지를 표시합니다.
		// "\n"은 줄 바꿈을 의미합니다. 
		history.back();
		// 알림 메시지 후에 이전 페이지로 돌아갑니다.
	</script>
<%		
	}
%>
<!-- JSP 코드 블록의 끝. 
     if-else 조건문을 통해 다양한 상황에 따라 사용자에게 알림을 보여주는 스크립트를 동적으로 생성합니다. -->
