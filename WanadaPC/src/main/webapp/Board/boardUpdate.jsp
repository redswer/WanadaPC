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

.board_update_form table {
	margin-bottom: 50px;
}

.board_update_form textarea {
	resize: none;
}

.none_change_input {
	width: 1260px;
	display: flex;
	justify-content: space-between;
}
</style>
</head>
<body>
    <div class="board_update_body">
        <header>
            <%@ include file="/Util/header.jsp" %>
        </header>
        <main>
        	<form action="/boardUpdate" method="post" name="board_update_table" class="board_update_form">
        		<table>
        			<tr class="none_change_input">
	                    <th>번호</th>
	                    <th>작성자</th>
	                    <th>작성일</th>
	                    <th>조회수</th>
        			</tr>
        			<tr class="none_change_input">
        				<c:if test="${!empty dto}">
	        				<td><input type="hidden" value="${dto.board_index}" name="board_index"><div>${dto.board_index}</div></td>
	        				<td><input type="hidden" value="${dto.person}" name="person"><div>${dto.person}</div></td>
	        				<td><input type="hidden" value="${dto.enterdate}" name="enterdate"><div>${dto.enterdate}</div></td>
	        				<td><input type="hidden" value="${dto.count}" name="count"><div>${dto.count}</div></td>
        				</c:if>
        			</tr>
        		</table>
        		<table>
        			<tr>
        				<th>제목</th>
   						<td><input value="${dto.theme}" name="theme"></td>
        			</tr>
        			<tr>
        				<th>내용</th>
        				<td><textarea name="content" cols="100" rows="30">${dto.content}</textarea></td>
        			</tr>
        			<tr>
        				<td colspan=5>
        					<input type="submit" value="수정">
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