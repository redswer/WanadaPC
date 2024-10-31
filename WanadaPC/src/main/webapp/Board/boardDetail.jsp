<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시판 상세보기</title>
<style type="text/css">
/* 전체 컨테이너 */
.board_detail_body {
    width: 80%;
    margin: 0 auto;
    margin-top: 20px;
    font-family: Arial, sans-serif;
    color: #333;
}

/* 제목 스타일 */
.board_detail_main h1 {
    font-size: 24px;
    font-weight: bold;
    color: #333;
    text-align: left;
    margin-bottom: 20px;
}

/* 테이블 스타일 */
.board_detail_table {
    width: 100%;
    background-color: #f9f9f9;
    border-collapse: collapse;
    border: 1px solid #ddd;
    font-size: 14px;
}

.board_detail_table th {
    padding: 10px;
    background-color: #f2f2f2;
    color: #555;
    border-bottom: 1px solid #ddd;
    font-weight: bold;
}

.board_detail_table td {
    padding: 10px;
    border-bottom: 1px solid #ddd;
    color: #333;
}

/* 제목, 작성자 등의 정보 행 */
.board_detail_table tr:first-child th {
    text-align: left;
    color: #555;
    font-size: 18px;
}

/* 본문 내용 스타일 (내용칸을 더 넓게) */
.board_detail_table tr:nth-child(3) th {
    text-align: left;
    font-size: 18px;
    color: #333;
}

.board_detail_table tr:nth-child(4) td[colspan="5"] {
    height: 300px;  /* 기본 높이 설정 */
    padding: 20px;
    font-size: 16px;
    line-height: 1.6;
    vertical-align: top;  /* 텍스트 상단 정렬 */
}

/* 조회수 및 기타 링크 스타일 */
.board_detail_table .view-count {
    color: #999;
    font-size: 13px;
    font-weight: normal;
}

.board_detail_main a {
    color: #6b3fcd;
    text-decoration: none;
    font-size: 14px;
    margin-right: 10px;
}

.board_detail_main a:hover {
    text-decoration: underline;
}

/* 버튼 스타일 */
.board_detail_main .action-buttons a {
    color: #fff;
    background-color: #6b3fcd;
    padding: 5px 10px;
    border-radius: 3px;
    margin-right: 10px;
    text-decoration: none;
}

.board_detail_main .action-buttons a:hover {
    background-color: #5a2db2;
}

</style>
</head>
<body>
    <div class="board_detail_body">
        <header>
            <%@ include file="/Util/header.jsp" %>
            <%@ include file="/Util/side_bar.jsp" %>
        </header>
        <main class="board_detail_main">
            <h1>게시판 상세보기</h1>
            <table class="board_detail_table">
                <tr>
                    <th>번호</th>
                    <th>제목</th>
                    <th>작성자</th>
                    <th>작성일</th>
                    <th class="view-count">조회수</th>
                </tr>
                 <tr>
                 	<c:if test="${!empty dto}">
                      <td>${dto.board_index}</td>
                      <td>${dto.theme}</td>
                      <td>${dto.person}</td>
                      <td>${dto.enterdate}</td>
                      <td>${dto.count}</td>
                     </c:if>
                 </tr>
                 <tr>
                 	<th colspan="5" >내용</th>
                 </tr>
                 <tr>
                 	<c:if test="${!empty dto}">
                 		<td colspan="5">${dto.content}</td>
                 	</c:if>
                 </tr>
            </table>
            <div class="action-buttons">
                <c:if test="${(!empty dto && dto.person eq user.userEmail) || user.userEmail eq 'admin'}">
                 	<a href="boardUpdatePage?board_index=${dto.board_index}">수정</a>
                 	<a href="boardDelete?board_index=${dto.board_index}">삭제</a>
                </c:if>
                <a href="/boardList">목록으로</a>
            </div>
        </main>
        <footer>
            <%@ include file="/Util/footer.jsp" %>
        </footer>
    </div>
</body>
</html>