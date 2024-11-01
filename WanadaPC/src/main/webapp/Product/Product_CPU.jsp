<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<style>
/* 공통 스타일 */
.CPU_body {
	font-family: Arial, sans-serif;
	width: 1260px;
	margin: 0 auto;
	margin-top: 10px;
	background-color: #f9f9f9;
}

/* Product_Show와 compare의 크기를 통일 */
.Product_Show, .compare {
	
	margin: 5px auto;
	padding: 20px;
	border-radius: 8px;
	box-sizing: border-box;
	background-color: #f9f9f9;
}

/* 상품 목록 옵션 버튼 */
.Product_Show_List_option {
	width: 100%;
	table-layout: fixed; /* 셀 너비를 고정하여 균등하게 배치 */
	border-collapse: collapse;
}

.Product_Show_List_option ul {
	display: flex;
	justify-content: space-between;
	margin: 0;
	padding: 0;
	width: 100%;
	list-style-type: none;
	table-layout: fixed; /* 테이블의 셀 크기를 균등하게 */
}

.Product_Show_List_option ul li {
	flex: 1; /* 버튼들을 동일한 너비로 설정 */
	text-align: center; /* 텍스트 중앙 정렬 */
}

.Product_Show_List_option ul li p {
	text-decoration: none;
	color: black;
	padding: 10px 15px;
	background-color: #f9f9f9;
	border: 1px solid black;
	transition: background-color 0.3s;
	display: block;
}

.scrollable-tbody {
	display: block;
	max-height: 800px; /* 필요한 높이로 조정 가능 */
	overflow-y: auto;
	width: 100%;
}

/* 스크롤이 적용된 테이블의 셀 너비를 고정 */
.Product_Show_List_option, .Product_Show_List_option th,
	.Product_Show_List_option td {
	border: 1px solid #e5e5e5;
	border-collapse: collapse;
}

.Product_Show_List_option th, .scrollable-tbody td {
	width: 25%; /* 각 칸의 너비를 일정하게 */
}

/* 스크롤바 스타일 (웹킷 브라우저 전용) */
.scrollable-tbody::-webkit-scrollbar {
	width: 8px;
}

.scrollable-tbody::-webkit-scrollbar-thumb {
	background-color: #888;
	border-radius: 4px;
}

.scrollable-tbody::-webkit-scrollbar-track {
	background-color: #f1f1f1;
}

/* 상품 목록 스타일 */
.Product_Show_List {
	margin-top: 20px;
	border-radius: 8px;
	box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
}

.Product_Show_List table {
	width: 100%;
	border-collapse: collapse;
}

.Product_Show_List th, .Product_Show_List td {
	padding: 12px;
	text-align: center;
	border-bottom: 1px solid #e5e5e5;
}

.Product_Show_List th {
	background-color: #f1f1f1;
	font-weight: bold;
}

.Product_Show_List img {
	width: 70px;
	height: auto;
	border-radius: 5px;
}

/* 가격 강조 */
.Product_Show_List td.price {
	font-weight: bold;
	color: #e63946;
}


</style>
<%@ include file="/Util/header.jsp"%>
<body class="CPU_body">
	<div class="header">
		<section>
			<div class="Product_Show">
				<div class="Product_Show_List">
					<table>
						<tr>
							<th colspan="4" class="Product_Show_List_option">
								<ul class="show_List">
									<li><p>이미지</p></li>
									<li><p>정보</p></li>
									<li><p>가격</p></li>
								</ul>
							</th>
						</tr>
						<tbody class="scrollable-tbody">
							<c:forEach var="i" items="${CPU}">
								<tr class="showList">
									<td><img src="/Image/CPU/${i.CPU_IMAGE}" alt="CPU 이미지" /></td>
									<td colspan="1">${i.CPU_NAME}</td>
									<td colspan="1">${i.CPU_INFORMATION}</td>
									<td class="price">${i.CPU_PRICE}</td>
								</tr>
							</c:forEach>
						</tbody>
					</table>
				</div>
			</div>
		</section>
	</div>
</body>
<%@ include file="/Util/footer.jsp"%>
</html>