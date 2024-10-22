<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>인덱스 페이지 관리</title>
<style type="text/css">
.index_page {
	width: 1260px;
	margin: auto;
}

.manage_home {
	margin-top: 15px;
	display: inline-block;
}

.manage_home a {
	display: flex;
	align-items: center;
	text-decoration: none;
	color: black;
}

.manage_home span {
	font-size: 30px;
	margin-left: 10px;
}

.banner_item {
	display: flex;
}

.banner_item img {
	margin: 5px 20px;
	width: 70%;
}

.index_banner_form * {
	margin: 5px 0;
}
</style>
</head>
<body>
<%@ include file="/Util/side_bar.jsp" %>
	<div class="index_page">
		<%@ include file="/Util/main_logo.jsp" %>
		<div class="manage_home">
			<a href="/manage/manage_index.jsp">
				<svg xmlns="http://www.w3.org/2000/svg" width="50" height="50" fill="currentColor" class="bi bi-house-gear-fill" viewBox="0 0 16 16">
				  <path d="M7.293 1.5a1 1 0 0 1 1.414 0L11 3.793V2.5a.5.5 0 0 1 .5-.5h1a.5.5 0 0 1 .5.5v3.293l2.354 2.353a.5.5 0 0 1-.708.708L8 2.207 1.354 8.854a.5.5 0 1 1-.708-.708z"/>
				  <path d="M11.07 9.047a1.5 1.5 0 0 0-1.742.26l-.02.021a1.5 1.5 0 0 0-.261 1.742 1.5 1.5 0 0 0 0 2.86 1.5 1.5 0 0 0-.12 1.07H3.5A1.5 1.5 0 0 1 2 13.5V9.293l6-6 4.724 4.724a1.5 1.5 0 0 0-1.654 1.03"/>
				  <path d="m13.158 9.608-.043-.148c-.181-.613-1.049-.613-1.23 0l-.043.148a.64.64 0 0 1-.921.382l-.136-.074c-.561-.306-1.175.308-.87.869l.075.136a.64.64 0 0 1-.382.92l-.148.045c-.613.18-.613 1.048 0 1.229l.148.043a.64.64 0 0 1 .382.921l-.074.136c-.306.561.308 1.175.869.87l.136-.075a.64.64 0 0 1 .92.382l.045.149c.18.612 1.048.612 1.229 0l.043-.15a.64.64 0 0 1 .921-.38l.136.074c.561.305 1.175-.309.87-.87l-.075-.136a.64.64 0 0 1 .382-.92l.149-.044c.612-.181.612-1.049 0-1.23l-.15-.043a.64.64 0 0 1-.38-.921l.074-.136c.305-.561-.309-1.175-.87-.87l-.136.075a.64.64 0 0 1-.92-.382ZM12.5 14a1.5 1.5 0 1 1 0-3 1.5 1.5 0 0 1 0 3"/>
				</svg>
				<span>관리자 홈</span>
			</a>
		</div>
		<div>
			<h2>index 배너</h2>
			<c:forEach var="i" items="${index_banner_list}" varStatus="status">
			    <div class="banner_item">
			    	<img src="/Image/${i.image}">
			    	<form action="/index_banner" method="get" name="index_banner_form" enctype="multipart/form-data" class="index_banner_form">
			    		<div>size : 1260 * 310</div>
			    		<input type="hidden" name="x_image" value="${i.image}">
			    		<div>image: <input type="file" name="image"></div>
			    		<div>page_link: <input name="page_link" value="${i.page_link}"></div>
			    		<div>category: <input name="category" value="${i.category}"></div>
			    		<div>
				    		<button onClick="send()">수정</button>
			    		</div>
			    	</form>
			    </div>
			</c:forEach>
		</div>
	</div>
</body>
<script type="text/javascript">
	function send() {
		alert("수정합니다.");
		
		index_banner_form.submit();
	}
</script>
</html>