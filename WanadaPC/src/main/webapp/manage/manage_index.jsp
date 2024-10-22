<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>관리자 페이지 index</title>
<style type="text/css">
	.manage_index_body {
		width: 1260px;
		margin: auto;
	}
</style>
</head>
<body>
	<div class="manage_index_body">
		<div>
			<%@ include file="/Util/main_logo.jsp" %>
		</div>
		<h3>관리자 페이지</h3>
		<ul>
			<li><a href="/manage?cmd=index">index 관리</a></li>
			<li><a href="">회원 관리</a></li>
			<li><a href="">상품 관리</a></li>
			<li><a href="">게시판 관리</a></li>
		</ul>
	</div>
</body>
</html>