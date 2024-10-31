<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>회원정보 수정</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
        }

        .lupdate-containe {
            background-color: #fff;
            padding: 40px;
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.5);
            max-width: 400px;
            width: 100%;
            text-align: center;
        }

        h2 {
            color: #333;
            margin-bottom: 20px;
        }

        .form-group {
            display: flex;
            flex-direction: column;
            margin-bottom: 20px;
            text-align: left;
        }

        label {
            color: #555;
            font-weight: bold;
            font-size: 15px;
            margin-bottom: 8px;
        }

        input[type="text"], input[type="password"], select {
            width: 100%;
            padding: 10px;
            border: 1px solid #ccc;
            border-radius: 4px;
        }

        .update-button {
            width: 100%;
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
            width: 48%;
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
<body>
    <div class="update-container">
        <h2>회원정보 수정</h2>
        <form action="/user_update" method="POST" name="modifyForm">
            <div class="form-group">
                <label for="userEmail">이메일</label>
                <input type="text" id="userEmail" name="userEmail" value="${user.userEmail}" readonly>
                <!-- read only는 수정 불가능  -->
            </div>
            <div class="form-group">
                <label for="userPassword">비밀번호</label>
                <input type="password" id="userPassword" name="userPassword" placeholder="새 비밀번호를 입력하세요">
            </div>
            <div class="form-group">
                <label for="userRepassword">비밀번호 확인</label>
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
</body>
</html>
