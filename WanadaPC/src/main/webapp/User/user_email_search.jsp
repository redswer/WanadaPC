<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv = "Content-Type" content="text/html; charset=euc-kr">
<title>사용자의 Email(아이디)를 검색</title>
<style>
body {
    /* 폰트를 Arial로 설정하고, 사용할 수 없을 경우 sans-serif로 대체 */
    font-family: Arial, sans-serif;
    /* 페이지의 배경 색상 설정 */
    background-color: #f4f4f4;
    /* 회원가입 컨테이너를 화면 가운데에 배치하기 위해 Flexbox 사용 */
    display: flex;
    justify-content: center;  /* 컨테이너를 수평 가운데 정렬 */
    align-items: center;      /* 컨테이너를 수직 가운데 정렬 */
    /* 전체 화면 높이를 사용 */
    height: 100vh;
    /* 기본 여백 제거 */
    margin: 0;
}

.userCheck-container {
	
    /* 회원가입 폼 컨테이너의 배경을 흰색으로 설정 */
    background-color: #fff;
    /* 컨테이너 내부 여백 */
    padding: 40px;
    /* 모서리를 둥글게 처리 */
    border-radius: 8px;
    /* 약간의 그림자 효과로 컨테이너가 떠 있는 듯한 느낌을 줌 */
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.5);
    /* 컨테이너의 최대 너비 설정 */
    max-width: 400px;
    /* 주어진 최대 너비 내에서 전체 너비 사용 */
    width: 100%;
}

h1 {
    /* 제목 텍스트를 가운데 정렬 */
    text-align: center;
    /* 제목 텍스트 색상을 진한 회색으로 설정 */
    color: #333;
}

.form-group {
    /* 폼 요소들을 세로로 배치 */
    display: flex;
    flex-direction: column;
    /* 폼 그룹 사이의 간격 추가 */
    margin-bottom: 10px;
}

label {
    /* 라벨 아래에 간격 추가 */
    margin-bottom: 35px;
    /* 라벨 텍스트 색상을 중간 회색으로 설정 */
    color: #555;
    /* 글씨 굵기를 bold로 설정 */
    font-weight: bold;
    /* 글씨 크기를 16px로 설정 */
    font-size: 15px;
}

input[type="text"], input[type="password"], input[type="email"] {
    /* 입력 필드의 너비를 컨테이너의 90%로 설정 */
    width: 90%;
    /* 입력 필드 내부 여백 */
    padding: 10px;
    /* 입력 필드에 연한 회색 테두리 추가 */
    border: 1px solid #ccc;
    /* 입력 필드 모서리를 둥글게 처리 */
    border-radius: 4px;
}

.button {
	
    /* 버튼의 너비를 100%로 설정 */
    width: 96%;
    /* 버튼 내부 여백 */
    padding: 10px;
    /* 버튼의 배경색을 밝은 빨간색으로 설정 */
    background-color: #FF3333;
    /* 버튼 텍스트 색상을 흰색으로 설정 */
    color: white;
    /* 버튼 테두리 없음 */
    border: none;
    /* 버튼의 모서리를 둥글게 처리 */
    border-radius: 4px;
    /* 마우스를 올렸을 때 포인터 모양으로 변경 */
    cursor: pointer;
}

.button:hover {
    /* 버튼에 마우스를 올렸을 때 더 진한 빨간색으로 변경 */
    background-color: #CC0033;
}

.terms {
    /* 약관 텍스트의 글씨 크기를 작게 설정 */
    font-size: 0.9em;
    /* 약관 텍스트 색상을 중간 회색으로 설정 */
    color: #555;
}
</style>
</head>
<body>
 <div class = "inner">
 	<%@ include file="/Util/main_logo.jsp" %>
 	<div class = "userCheck-container">
 		
 	</div>
 </div>
	
</body>
</html>