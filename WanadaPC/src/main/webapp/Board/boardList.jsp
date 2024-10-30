<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>게시판</title>
<style type="text/css">
.board_list_body {
    width: 1260px;
    margin: 0 auto;
    margin-top: 10px;
}
</style>
</head>
<body>
	<div class="board_list_body">
		<header>
			<%@ include file="/Util/header.jsp" %>
		</header>
		<main>
			<table>
				<tr>
					<th>번호</th>
					<th>제목</th>
					<th>작성자</th>
					<th>작성일</th>
					<th>조회수</th>
				</tr>
				<c:forEach var="i" items="${board_list}">
					<tr>
						<td>${i.board_index}</td>
						<td>${i.theme}</td>
						<td>${i.person}</td>
						<td>${i.enterdate}</td>
						<td>${i.count}</td>
					</tr>
				</c:forEach>
			</table>
		</main>
		<footer>
			<%@ include file="/Util/footer.jsp" %>
		</footer>
	</div> 
</body>
</html>