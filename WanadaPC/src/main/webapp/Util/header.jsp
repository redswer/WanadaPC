<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>header</title>
<!-- <link rel="stylesheet" type="text/css" href="./Css/header.css"/> -->
<style type="text/css">
	body {
    margin: 0;
    font-family: Arial, sans-serif;
}

.header_body {
    background-color: #f8f8f8;
}

.header_all {
    display: flex;
    align-items: center;
    justify-content: space-between;
    padding: 10px 20px;
    border-bottom: 1px solid #ddd;
}

.main_logo {
	display: flex;
	text-decoration: none;
	font-style: italic; 
}

.main_logo svg {
    width: 50px; /* 아이콘 크기 조정 */
    height: 50px; /* 아이콘 크기 조정 */
    fill: red; /* 아이콘 색상 설정 */
    margin-right: 10px;
}

.main_logo span {
	line-height: 50px;
	color: red;
	font-size: 30px;
}

.main_logo span:last-child {
	color: black;
	font-style: initial;
	margin-left: 7px;
}

.header_search_bar {
    flex: 1;
    display: flex;
    justify-content: center;
}

.search_container {
    position: relative;
    width: 500px; /* 검색바 너비 조정 */
    margin-bottom: 10px;
}

.header_search_bar input {
    line-height: 30px;
    padding: 8px;
    border: 2px solid red;
    border-radius:52px;
    width: 100%; /* 검색창이 부모 컨테이너에 맞게 조정 */
    outline: none;
    font-size: 18px;
}

.header_search_bar button {
    position: absolute;
    right: 0;
    top: 0;
    bottom: 0;
    padding: 0; /* 패딩 제거 */
    background-color: transparent; /* 배경색 투명으로 설정 */
    border: none; /* 테두리 제거 */
    cursor: pointer;
    height: 100%; /* 버튼 높이를 검색창과 동일하게 설정 */
    display: flex;
    align-items: center; /* 버튼 안의 텍스트를 수직 중앙 정렬 */
}

.header_search_bar button svg {
    width: 25px; /* 아이콘 크기 조정 */
    height: 25px; /* 아이콘 크기 조정 */
    fill: black; /* 아이콘 색상 설정 */
}

.header_link {
    display: flex;
    gap: 15px;
}

.header_link a {
    text-decoration: none;
    color: #333;
}

.header_link a:hover {
    color: #007bff;
}

.header_navigation {
    list-style: none;
    padding: 0;
    display: flex;
    justify-content: space-between;
    margin: 0;
    line-height: 60px;
}

.header_navigation li {
    margin: 0 15px;
}

.header_navigation a {
    text-decoration: none;
    color: #333;
    padding: 10px 0;
}

.header_navigation a:hover {
    color: #007bff;
    border-bottom: 2px solid #007bff;
}
</style>
</head>
<body class="header_body">
	<div>
		<div class="header_all">
			<div>
				<a href="index.jsp" class="main_logo">
					<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-pc-display-horizontal" viewBox="0 0 16 16">
						<path d="M1.5 0A1.5 1.5 0 0 0 0 1.5v7A1.5 1.5 0 0 0 1.5 10H6v1H1a1 1 0 0 0-1 1v3a1 1 0 0 0 1 1h14a1 1 0 0 0 1-1v-3a1 1 0 0 0-1-1h-5v-1h4.5A1.5 1.5 0 0 0 16 8.5v-7A1.5 1.5 0 0 0 14.5 0zm0 1h13a.5.5 0 0 1 .5.5v7a.5.5 0 0 1-.5.5h-13a.5.5 0 0 1-.5-.5v-7a.5.5 0 0 1 .5-.5M12 12.5a.5.5 0 1 1 1 0 .5.5 0 0 1-1 0m2 0a.5.5 0 1 1 1 0 .5.5 0 0 1-1 0M1.5 12h5a.5.5 0 0 1 0 1h-5a.5.5 0 0 1 0-1M1 14.25a.25.25 0 0 1 .25-.25h5.5a.25.25 0 1 1 0 .5h-5.5a.25.25 0 0 1-.25-.25"/>
					</svg>
					<span>Wanada</span>
					<span>PC</span>
				</a>
			</div>
			<div class="header_search_bar">
			    <form name="" action="" method="get">
			        <div class="search_container">
			            <input name="" placeholder="검색어를 입력하세요.">
			            <button type="submit">
			            	<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-search" viewBox="0 0 16 16">
								<path d="M11.742 10.344a6.5 6.5 0 1 0-1.397 1.398h-.001q.044.06.098.115l3.85 3.85a1 1 0 0 0 1.415-1.414l-3.85-3.85a1 1 0 0 0-.115-.1zM12 6.5a5.5 5.5 0 1 1-11 0 5.5 5.5 0 0 1 11 0"/>
							</svg>
			            </button>
			        </div>
			    </form>
			</div>
			<div class="header_link">
				<a href="">로그인</a>
				<a href="">회원가입</a>
				<a href="">고객센터</a>
			</div>
		</div>
		<div>
			<ul class="header_navigation">
				<li><a href="">PC 견적</a></li>
				<li><a href="">CPU</a></li>
				<li><a href="">쿨러/튜닝</a></li>
				<li><a href="">메인보드</a></li>
				<li><a href="">그래픽카드</a></li>
				<li><a href="">SSD</a></li>
				<li><a href="">HDD</a></li>
				<li><a href="">케이스</a></li>
				<li><a href="">파워</a></li>
				<li><a href="">소프트웨어</a></li>
				<li><a href="">커뮤니티</a></li>
			</ul>
		</div>
	</div>
</body>
</html>