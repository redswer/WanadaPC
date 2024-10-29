<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
	int row = (int)request.getAttribute("row");
	
	if(row==1){
%>
	<script>
		alert("회원가입되었습니다");
		location.href="/index";
	</script>
<%
	}else{
%>	
	<script>
		alert("중복된 Email(아이디)입니다.");
		history.back();
	</script>
<%
	}
%>
