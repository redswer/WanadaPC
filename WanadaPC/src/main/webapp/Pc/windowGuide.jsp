<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>윈도우 구매가이드</title>
<style type="text/css">
.window_guide_body {
    width: 1260px;
    margin: 0 auto;
    margin-top: 10px;
}

.guide_explain {
	margin-top: 10px;
	color: gray;
}

.guide_img {
	text-align: center;
}
</style>
</head>
<body>
	<div class="window_guide_body">
		<header>
			<%@ include file="/Util/header.jsp" %>
			<%@ include file="/Util/side_bar.jsp" %>
		</header>
		<main>
			<%@ include file="/Util/ad.jsp" %>
			<h3>윈도우 구매가이드</h3>
			<hr>
			<div class="guide_explain">운영체제 윈도우 구매 시 필요한 정보를 알려드립니다.</div>
			<div class="guide_img">
				<img src="/Image/window_guide.jpeg">
			</div>
		</main>
		<footer>
			<%@ include file="/Util/footer.jsp" %>
		</footer>
	</div>
</body>
</html>