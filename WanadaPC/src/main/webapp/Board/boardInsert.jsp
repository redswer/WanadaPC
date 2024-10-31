<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
.board_insert_body {
    width: 1260px;
    margin: 0 auto;
    margin-top: 10px;
}

.board_insert_text {
	resize: none;
}
</style>
</head>
<body>
	<div class="board_insert_body">
		<header>
			<%@ include file="/Util/header.jsp" %>
			<%@ include file="/Util/side_bar.jsp" %>
		</header>
		<main>
			<h2>글 등록</h2>
			<form action="/boardInsert" method="post" name="board_insert_form">
				<table>
					<tr>
						<th>제목</th>
						<td><input name="theme"></td>
					</tr>
					<tr>
						<th>내용</th>
						<td><textarea name="content" class="board_insert_text" cols="100" rows="30"></textarea></td>
					</tr>
				</table>
				<button type="submit">등록</button>
				<button type="button">취소</button>
			</form>
		</main>
		<footer>
			<%@ include file="/Util/footer.jsp" %>
		</footer>
	</div>
</body>
</html>