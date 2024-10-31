<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
/* 전체 컨테이너 */
.my_board_body {
    width: 1260px;
    margin: 0 auto;
    margin-top: 10px;
    font-family: Arial, sans-serif;
    color: #333;
}

/* 제목 스타일 */
.board_list_main h1 {
    font-size: 24px;
    font-weight: bold;
    color: #333;
    text-align: left;
    margin-bottom: 20px;
}

/* 테이블 스타일 */
.board_list_table {
    width: 100%;
    background-color: #f9f9f9;
    border-collapse: collapse;
    border: 1px solid #ddd;
    text-align: left;
    font-size: 14px;
}

.board_list_table th {
    padding: 10px;
    background-color: #f2f2f2;
    color: #555;
    border-bottom: 1px solid #ddd;
    font-weight: bold;
}

.board_list_table td {
    padding: 10px;
    border-bottom: 1px solid #ddd;
    color: #333;
}

.board_list_table tr:hover {
    background-color: #f1f1f1;
}

/* 열 너비 설정 */
.board_list_table tr th:first-child,
.board_list_table tr td:first-child {
    width: 5%;
    text-align: center;
}

.board_list_table tr th:nth-child(2),
.board_list_table tr td:nth-child(2) {
    width: 50%;
    text-align: left;
}

.board_list_table tr th:nth-child(3),
.board_list_table tr td:nth-child(3),
.board_list_table tr th:nth-child(4),
.board_list_table tr td:nth-child(4),
.board_list_table tr th:nth-child(5),
.board_list_table tr td:nth-child(5) {
    width: 15%;
    text-align: center;
}

/* 조회수 및 태그 강조 스타일 */
.board_list_table .best-tag {
    background-color: #6b3fcd;
    color: white;
    padding: 3px 6px;
    border-radius: 3px;
    font-size: 12px;
    font-weight: bold;
    margin-left: 5px;
}

/* 링크 스타일 */
.board_list_table a {
    color: #333;
    text-decoration: none;
}

.board_list_table a:hover {
    color: #6b3fcd;
}

.board_list_main {
	margin-bottom:50px;
}

.board_list_menu{
	display: flex;
	justify-content:space-between;
	align-items: center;
}

.board_list_menu a {
	text-decoration: none;
	color: white;
	border: 1px solid gray;
	text-align: center;
	width: 80px;
	line-height: 30px;
	background-color: gray;
}
</style>
</head>
<body>
    <div class="my_board_body">
        <header>
            <%@ include file="/Util/header.jsp" %>
            <%@ include file="/Util/side_bar.jsp" %>
        </header>
        <main class="board_list_main">
        	<div class="board_list_menu">
            	<h1>내가 쓴 글</h1>
            </div>
            <table class="board_list_table">
                <tr>
                    <th>번호</th>
                    <th>제목</th>
                    <th>작성자</th>
                    <th>작성일</th>
                    <th>조회수</th>
                </tr>
                <c:forEach var="i" items="${my_board_list}">
                    <tr>
                        <td><a href="/boardDetail?board_index=${i.board_index}">${i.board_index}</a></td>
                        <td>
                            <a href="/boardDetail?board_index=${i.board_index}">${i.theme}</a>
                       
                    </td>
                        <td><a href="/boardDetail?board_index=${i.board_index}">${i.person}</a></td>
                        <td><a href="/boardDetail?board_index=${i.board_index}">${i.enterdate}</a></td>
                        <td><a href="/boardDetail?board_index=${i.board_index}">${i.count}</a></td>
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