<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>와나다 회원가입</title>
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
        .signup-container {
            background-color: #fff;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            max-width: 400px;
            width: 100%;
        }
        h1 {
            text-align: center;
            color: #333;
        }
        /* 레이블과 입력 필드를 정렬하기 위한 스타일 */
        .form-group {
            display: flex;
            flex-direction: column; /* 수직 정렬 */
            margin-bottom: 15px; /* 각 입력 필드 사이의 여백 */
        }
        label {
            margin-bottom: 5px; /* 레이블과 입력 필드 사이의 여백 */
            color: #555; /* 레이블 색상 */
        }
        input[type="text"],
        input[type="password"],
        input[type="email"] {
            width: 100%; /* 너비를 100%로 설정 */
            padding: 10px;
            border: 1px solid #ccc;
            border-radius: 4px;
        }
        .button {
            width: 100%;
            padding: 10px;
            background-color: #1ec800;
            color: white;
            border: none;
            border-radius: 4px;
            cursor: pointer;
        }
        .button:hover {
            background-color: #17a300;
        }
        .terms {
            font-size: 0.9em;
            color: #555;
        }
    </style>
</head>
<body>

    <div class="signup-container">
        <h1>회원가입</h1>
        <form action="/submit_signup" method="POST">
            <div class="form-group">
                <label for="username">아이디</label>
                <input type="text" id="username" name="username" placeholder="아이디를 입력하세요" required>
            </div>

            <div class="form-group">
                <label for="password">비밀번호</label>
                <input type="password" id="password" name="password" placeholder="비밀번호를 입력하세요" required>
            </div>

            <div class="form-group">
                <label for="confirm_password">비밀번호 확인</label>
                <input type="password" id="confirm_password" name="confirm_password" placeholder="비밀번호를 다시 입력하세요" required>
            </div>

            <div class="form-group">
                <label for="email">이메일</label>
                <input type="email" id="email" name="email" placeholder="이메일을 입력하세요" required>
            </div>

            <div class="form-group">
                <label for="phone">휴대폰 번호</label>
                <input type="text" id="phone" name="phone" placeholder="휴대폰 번호를 입력하세요" required>
            </div>

            <p class="terms">
                <input type="checkbox" id="terms" name="terms" required>
                <label for="terms">약관에 동의합니다</label>
            </p>

            <button type="submit" class="button">가입하기</button>
        </form>
    </div>

</body>
</html>
