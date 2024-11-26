<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>footer</title>
<link rel="stylesheet" type="text/css" href="./Css/footer.css" />
<style type="text/css">
.footer_container {
	background-color: #F5F5F5;
}

.footer_menu {
	background-color: #DCDCDC;
	display: flex;
	justify-content: space-between;
	line-height: 50px;
	font-size: 13px;
}

.footer_menu div:first-child {
	margin-left: 10px;
}

.footer_menu div:first-child span {
	font-weight: bold;
}

.footer_menu div a {
	margin: 0 15px;
	text-decoration: none;
	color: black;
}

.footer_menu a:hover {
	text-decoration: underline;
}

.footer_info {
	display: flex;
	padding: 20px 0;
	font-size: 13px;
}

.footer_logo {
	align-content: center;
}

.footer_logo, .footer_text {
	margin: auto 50px;
}

.footer_logo .main_logo svg {
	fill: #666;
}

.footer_logo .main_logo span {
	color: #666;
}

.footer_logo .main_logo span:last-child {
	color: #666;
}

.footer_main_text div {
	margin: 10px auto;
}

.footer_main_text div:first-child {
	font-weight: bold;
}

.footer_main_text div:not(:first-child) {
	color: #666;
}

.footer_sub_text {
	color: #666;
	margin-top: 30px;
}

.footer_sub_text div {
	margin: 20px 0;
}
</style>
</head>
<body>
	<div class="footer_container">
		<div class="footer_menu">
			<div>
				<span>공지</span>
				<a href="/boardList">공지 게시판의 최신내용</a>
			</div>
			<div>
				<a href="">회사소개</a>
				<a href="">이용약관</a>
				<a href="">개인정보처리방침</a>
				<a href="">청소년 보호정책</a>
			</div>
		</div>
		<div class="footer_info">
			<div class="footer_logo">
				<%@ include file="/Util/main_logo.jsp"%>
			</div>
			<div class="footer_text">
				<div class="footer_main_text">
					<div>와나다 PC</div>
					<div>주소 : 대전광역시 중구 계룡료 825 희영빌딩 5F, 7F</div>
					<div>* 팀장 : 안진혁</div>
					<div>* 팀원 : 김현규, 서광제, 조유남, ChatGPT</div>
				</div>
				<div class="footer_sub_text">
					<div>결재 및 장바구니는 추후에 시간이 된다면 추가합니다.</div>
					<div>살려줘...</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>