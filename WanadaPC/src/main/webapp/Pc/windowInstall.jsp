<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>윈도우 설치 방법</title>
<style type="text/css">
.window_install_body {
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
	<div class="window_install_body">
		<header>
			<%@ include file="/Util/header.jsp" %>
			<%@ include file="/Util/side_bar.jsp" %>
		</header>
		<main>
			<%@ include file="/Util/ad.jsp" %>
			<h3>윈도우 설치 방법</h3>
			<hr>
			<div class="guide_explain">와나다에서 윈도우11 설치방법을 자세하게 알려드립니다.</div>
			<div class="guide_img">
				<img src="/Image/window_install.jpg">
			</div>
		</main>
		<footer>
			<%@ include file="/Util/footer.jsp" %>
		</footer>
	</div>
</body>
</html>