<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
a {
	text-decoration: none;
	color: black;
}

ul, li {
	list-style: none;
}

div {
	display: block;
	unicode-bidi: isolate;
}

.Search_option ul, li {
	float: left;
	padding: 0 20px
}

.Front_Space, .Product_list {
	display: block;
	width: 100%; /* Ensure they are full-width */
	clear: both; /* Ensure no floating affects them */
}
</style>
</head>
<body>
	<form action="" method="post" name="indexForm" id="indexForm">
		<div class="Product_main">
			<div class="Search_main">
				<input type="text" placeholder="상품을 검색해주세요" name="Product_search"
					id="Product_search">
				<button type="submit">
					<span>검색</span>
				</button>
			</div>
			<div class="Front_Space">
				<div class="Search_option">
					<ul>
						<li><a href="#">메인보드</a></li>
						<li><a href="#">CPU</a></li>
						<li><a href="#">쿨러</a></li>
						<li><a href="#">메모리</a></li>
						<li><a href="#">그래픽카드</a></li>
						<li><a href="#">SSD</a></li>
						<li><a href="#">HDD</a></li>
						<li><a href="#">케이스</a></li>
						<li><a href="#">파워</a></li>
					</ul>
				</div>
				<div class="Product_list">
					<div class="Option_item">
						<table>
							<tr>
								<th>제조사</th>
								<td><input type="checkbox">인텔</td>
								<td><input type="checkbox">AMD</td>
							</tr>
							<tr>
								<th>인텔CPU종류</th>
								<td><input type="checkbox">코어I9-14세대</td>
								<td><input type="checkbox">코어I7-14세대</td>
								<td><input type="checkbox">코어I5-14세대</td>
								<td><input type="checkbox">코어I3-14세대</td>
							</tr>
							<tr>
								<th>AMD CPU종류</th>
								<td><input type="checkbox">라이젠9-6세대</td>
								<td><input type="checkbox">라이젠7-6세대</td>
								<td><input type="checkbox">라이젠5-6세대</td>
								<td><input type="checkbox">라이젠9-5세대</td>
								<td><input type="checkbox">라이젠7-5세대</td>
							</tr>
						</table>
					</div>
				</div>
			</div>
			<div class="Product_Show">
			<div class="Product_option">
					<ul>
						<li><a href="#">이름순(오름차순)</a></li>
						<li><a href="#">이름순(내림차순)</a></li>
						<li><a href="#">낮은가격순</a></li>
						<li><a href="#">높은가격순</a></li>
					</ul>
				</div>
			</div>
		</div>
	</form>
</body>
</html>