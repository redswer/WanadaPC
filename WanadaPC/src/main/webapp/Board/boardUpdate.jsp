<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
.board_update_body {
    width: 1260px;
    margin: 0 auto;
    margin-top: 10px;
}
</style>
</head>
<body>
    <div class="board_update_body">
        <header>
            <%@ include file="/Util/header.jsp" %>
        </header>
        <main>
        	<form action="/boardUpdate" method="post" name="board_update_table">
        		<table>
        			<tr>
	                    <th>번호</th>
	                    <th>제목</th>
	                    <th>내용</th>
	                    <th>작성자</th>
	                    <th>작성일</th>
	                    <th>조회수</th>
        			</tr>
        			<tr>
        				<c:if test="${!empty dto}">
	        				<td><input value="${dto.board_index}" name="board_index" readOnly></td>
	        				<td><input value="${dto.theme}" name="theme"></td>
	        				<td><input value="${dto.content}" name="content"></td>
	        				<td><input value="${dto.person}" name="person" readOnly></td>
	        				<td><input value="${dto.enterdate}" name="enterdate" readOnly></td>
	        				<td><input value="${dto.count}" name="count" readOnly></td>
        				</c:if>
        			</tr>
        			<tr>
        				<td colspan=5>
        					<input type="button" value="수정">
        					<input type="button" value="취소">
        				</td>
        			</tr>
        		</table>
        	</form>
        </main>
        <footer>
            <%@ include file="/Util/footer.jsp" %>
        </footer>
    </div>
</body>
</html>