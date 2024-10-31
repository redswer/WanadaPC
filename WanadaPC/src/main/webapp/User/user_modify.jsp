<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>회원정보 수정</title>
    <style>
        /* CSS 스타일 */
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
        }
        .modify-container {
            background-color: #fff;
            padding: 40px;
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.5);
            max-width: 400px;
            width: 100%;
        }
        h1 {
            text-align: center;
            color: #333;
        }
        .form-group {
            display: flex;
            flex-direction: column;
            margin-bottom: 15px;
        }
        label {
            color: #555;
            font-weight: bold;
            margin-bottom: 5px;
        }
        input[type="text"], input[type="password"], input[type="email"] {
            width: 100%;
            padding: 10px;
            border: 1px solid #ccc;
            border-radius: 4px;
        }
        .button {
            width: 100%;
            padding: 10px;
            background-color: #FF3333;
            color: white;
            border: none;
            border-radius: 4px;
            cursor: pointer;
        }
        .button:hover {
            background-color: #CC0033;
        }
    </style>
</head>
<body>
    <div class="modify-container">
        <h1>회원정보 수정</h1>
        <form action="/user_modify" method="POST" name="modifyForm">
            <div class="form-group">
                <label for="userEmail">이메일</label>
                <input type="text" id="userEmail" name="userEmail" value="${userDTO.userEmail}" readonly>
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
                <input type="text" id="userName" name="userName" value="${userDTO.userName}">
            </div>
            <div class="form-group">
                <label for="gender">성별</label>
                <div>
                    <input type="radio" id="gender1" name="gender" value="M" <c:if test="${userDTO.gender == 'M'}">checked</c:if>> 
                    <label for="gender1">남자</label>
                    <input type="radio" id="gender2" name="gender" value="F" <c:if test="${userDTO.gender == 'F'}">checked</c:if>> 
                    <label for="gender2">여자</label>
                </div>
            </div>
            <div class="form-group">
                <label for="tell">휴대폰 번호</label>
                <input type="text" id="tell" name="tell" value="${userDTO.tell}" placeholder="휴대폰 번호를 입력하세요">
            </div>
            <button type="submit" class="button">수정하기</button>
        </form>
    </div>
</body>
</html>
