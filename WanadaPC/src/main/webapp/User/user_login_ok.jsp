<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<c:if test="${row==1}">
		<script>
			alert("로그인 성공");
			window.location="/index";
		</script>
	</c:if>
	<c:if test="${row==0}">
		<script>
			alert("비밀번호가 다릅니다");
			history.back();
		</script>
	</c:if>
	<c:if test="${row==-1}">
		<script>
			alert("없는 아이디입니다.");
			history.back();
		</script>
	</c:if>
</body>
</html>