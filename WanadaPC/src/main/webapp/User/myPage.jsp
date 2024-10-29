<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>마이 페이지</title>
<style type="text/css">
.my_page_body {
    width: 1260px;
    margin: 0 auto;
    margin-top: 10px;
    height: calc(100vh - 18px);
}

.d-flex {
	display: flex;
}

.my_page_container {
	justify-content: space-around;
	margin-top: calc((100vh - 450px) / 2)
}

.my_page_container svg {
	fill: #696969;
}

.my_page_container a {
	text-decoration: none;
	color: #696969;
}

.my_page_menu {
	flex-direction: column;
	justify-content: center;
	align-items: center;
}

.my_page_menu span {
	font-size: 25px;
	margin-top: 10px;
}

.favorite:hover svg{
	fill: red;
}
.favorite:hover span{
	color: red;
	font-weight: bold;
}
.myText:hover svg{
	fill: red;
}
.myText:hover span{
	color: red;
	font-weight: bold;
}
.userInfoUpdate:hover svg{
	fill: red;
}
.userInfoUpdate:hover span{
	color: red;
	font-weight: bold;
}
</style>
</head>
<body>
	<div class="my_page_body">
		<%@ include file="/Util/header.jsp" %>
		<h2>마이 페이지</h2>
		<div class="d-flex my_page_container">
			<a class="d-flex my_page_menu favorite" href="">
				<svg xmlns="http://www.w3.org/2000/svg" width="100" height="100" fill="currentColor" class="bi bi-chat-square-heart" viewBox="0 0 16 16">
					<path d="M14 1a1 1 0 0 1 1 1v8a1 1 0 0 1-1 1h-2.5a2 2 0 0 0-1.6.8L8 14.333 6.1 11.8a2 2 0 0 0-1.6-.8H2a1 1 0 0 1-1-1V2a1 1 0 0 1 1-1zM2 0a2 2 0 0 0-2 2v8a2 2 0 0 0 2 2h2.5a1 1 0 0 1 .8.4l1.9 2.533a1 1 0 0 0 1.6 0l1.9-2.533a1 1 0 0 1 .8-.4H14a2 2 0 0 0 2-2V2a2 2 0 0 0-2-2z"/>
					<path d="M8 3.993c1.664-1.711 5.825 1.283 0 5.132-5.825-3.85-1.664-6.843 0-5.132"/>
				</svg>
				<span>관심상품</span>
			</a>
			<a class="d-flex my_page_menu myText" href="">
				<svg xmlns="http://www.w3.org/2000/svg" width="100" height="100" fill="currentColor" class="bi bi-chat-square-text" viewBox="0 0 16 16">
			  		<path d="M14 1a1 1 0 0 1 1 1v8a1 1 0 0 1-1 1h-2.5a2 2 0 0 0-1.6.8L8 14.333 6.1 11.8a2 2 0 0 0-1.6-.8H2a1 1 0 0 1-1-1V2a1 1 0 0 1 1-1zM2 0a2 2 0 0 0-2 2v8a2 2 0 0 0 2 2h2.5a1 1 0 0 1 .8.4l1.9 2.533a1 1 0 0 0 1.6 0l1.9-2.533a1 1 0 0 1 .8-.4H14a2 2 0 0 0 2-2V2a2 2 0 0 0-2-2z"/>
			  		<path d="M3 3.5a.5.5 0 0 1 .5-.5h9a.5.5 0 0 1 0 1h-9a.5.5 0 0 1-.5-.5M3 6a.5.5 0 0 1 .5-.5h9a.5.5 0 0 1 0 1h-9A.5.5 0 0 1 3 6m0 2.5a.5.5 0 0 1 .5-.5h5a.5.5 0 0 1 0 1h-5a.5.5 0 0 1-.5-.5"/>
				</svg>
				<span>내가 쓴 글</span>
			</a>
			<a class="d-flex my_page_menu userInfoUpdate" href="">
				<svg xmlns="http://www.w3.org/2000/svg" width="100" height="100" fill="currentColor" class="bi bi-person-vcard" viewBox="0 0 16 16">
			  		<path d="M5 8a2 2 0 1 0 0-4 2 2 0 0 0 0 4m4-2.5a.5.5 0 0 1 .5-.5h4a.5.5 0 0 1 0 1h-4a.5.5 0 0 1-.5-.5M9 8a.5.5 0 0 1 .5-.5h4a.5.5 0 0 1 0 1h-4A.5.5 0 0 1 9 8m1 2.5a.5.5 0 0 1 .5-.5h3a.5.5 0 0 1 0 1h-3a.5.5 0 0 1-.5-.5"/>
			  		<path d="M2 2a2 2 0 0 0-2 2v8a2 2 0 0 0 2 2h12a2 2 0 0 0 2-2V4a2 2 0 0 0-2-2zM1 4a1 1 0 0 1 1-1h12a1 1 0 0 1 1 1v8a1 1 0 0 1-1 1H8.96q.04-.245.04-.5C9 10.567 7.21 9 5 9c-2.086 0-3.8 1.398-3.984 3.181A1 1 0 0 1 1 12z"/>
				</svg>
				<span>회원정보 수정</span>
			</a>
		</div>
	</div>
</body>
</html>