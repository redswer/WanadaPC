<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>회원정보 수정</title>
    <style>
        .user_update_body {
            font-family: Arial, sans-serif;
	   		width: 1260px;
		    margin: 0 auto;
		    margin-top: 10px;       
        }

        .lupdate-container {
            background-color: #f4f4f4;
            padding: 40px;
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.5);
            max-width: 400px;
            text-align: center;
        }
        
        .update-container form {
        	text-align: center;
        	margin-bottom: 50px;
        }

        .update-container h2 {
            color: #333;
            margin-bottom: 20px;
        }

        .form-group {
        	width: 50%;
            display: flex;
            flex-direction: column;
            text-align: left;
            margin: 20px auto;
        }

        .form-group label {
            color: #555;
            font-weight: bold;
            font-size: 15px;
            margin-bottom: 8px;
        }

        .form-group input[type="text"], .form-group input[type="password"], .form-group select {
            padding: 10px;
            border: 1px solid #ccc;
            border-radius: 4px;
        }

        .update-button {
            padding: 10px;
            background-color: #FF3333;
            color: white;
            border: none;
            border-radius: 4px;
            cursor: pointer;
        }

        .update-button:hover {
            background-color: #CC0033;
        }

        .error-message {
            color: red;
            margin-top: 10px;
        }

        .find-buttons {
            display: flex;
            justify-content: space-between;
            margin-top: 10px;
        }

        .find-buttons button {
            background-color: #ddd;
            color: #000;
            padding: 10px;
            border: none;
            border-radius: 4px;
            cursor: pointer;
        }

        .find-buttons button:hover {
            background-color: #bbb;
        }
    </style>
</head>
<body class="user_update_body">
	<div>
		<%@ include file="/Util/header.jsp" %>
		<%@ include file="/Util/side_bar.jsp" %>
	</div>
    <div class="update-container">
        <h2>회원정보 수정</h2>
        <form action="/user_update" method="POST" name="modifyForm">
            <div class="form-group">
                <label for="userEmail">이메일</label>
                <input type="text" id="userEmail" name="userEmail" value="${user.userEmail}" readonly>
                <!-- read only는 수정 불가능  -->
            </div>
            <div class="form-group">
                <label for="userPassword">현재 비밀번호</label>
                <input type="password" id="userPassword" name="userPassword" placeholder="새 비밀번호를 입력하세요">
            </div>
            <div class="form-group">
                <label for="userRepassword">새 비밀번호</label>
                <input type="password" id="userRepassword" name="userRepassword" placeholder="비밀번호를 다시 입력하세요">
            </div>
            <div class="form-group">
                <label for="userName">이름</label>
                <input type="text" id="userName" name="userName" value="${user.userName}">
            </div>
            <div class="form-group">
                <label for="gender">성별</label>
                <div>
                    <input type="radio" id="gender" name="gender" value="M" <c:if test="${user.gender eq 'M'}">checked</c:if>> 
                    <label for="gender">남자</label>
                    <input type="radio" id="gender" name="gender" value="F" <c:if test="${user.gender eq 'F'}">checked</c:if>> 
                    <label for="gender">여자</label>
                </div>
            </div>
            <div class="form-group">
                <label for="tell">휴대폰 번호</label>
                <input type="text" id="tell" name="tell" value="${user.tell}" placeholder="휴대폰 번호를 입력하세요">
            </div>
            <button type="submit" class="update_button">수정하기</button>
        </form>
    </div>
    <div>
    	<%@ include file="/Util/footer.jsp" %>
    </div>
</body>
</html>
