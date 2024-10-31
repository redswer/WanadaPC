<%@ page contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>로그인</title>
    <style>
        .login_body {
            font-family: Arial, sans-serif;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
            background-color: #f4f4f4;
        }

        .login-container {
            background-color: #fff;
            padding: 40px;
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.5);
            max-width: 400px;
            width: 100%;
            text-align: center;
        }

        .login-container h2 {
            color: #333;
            margin-bottom: 20px;
        }

        .form-group {
            display: flex;
            flex-direction: column;
            margin-bottom: 20px;
            text-align: left;
        }

        .form-group label {
            color: #555;
            font-weight: bold;
            font-size: 15px;
            margin-bottom: 8px;
        }

        .form-group input[type="text"], input[type="password"], select {
            width: 100%;
            padding: 10px;
            border: 1px solid #ccc;
            border-radius: 4px;
        }

        .login-button {
            width: 100%;
            padding: 10px;
            background-color: #FF3333;
            color: white;
            border: none;
            border-radius: 4px;
            cursor: pointer;
        }

        .login-button:hover {
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
<body class="login_body">
    <div class="login-container">
		<%@ include file="/Util/main_logo.jsp" %>
        <h2>로그인</h2>
        <form action="/user_login" method="POST" name="userlogin">
            <div class="form-group">
                <label>아이디 (e-mail)</label>
                <input type="text" name="userEmail" placeholder="아이디를 입력하세요">
                <span>@</span>
                <select name="emailDomain" onchange="updateDomain()">
                    <option value="gmail.com">gmail.com</option>
                    <option value="naver.com">naver.com</option>
                    <option value="daum.net">daum.net</option>
                    <option value="nate.com">nate.com</option>
                    <option value="yahoo.com">yahoo.com</option>
                    <option value="0">직접입력</option>
                </select>
                <input type="text" id="customEmailDomain" name="customEmailDomain" placeholder="직접 입력할 도메인" style="display: none;">
            </div>
            <div class="form-group">
                <label>비밀번호</label>
                <input type="password" name="userPassword" placeholder="비밀번호를 입력하세요">
            </div>
            <button type="submit" class="login-button">로그인</button>
            <% if (request.getAttribute("loginError") != null) { %>
                <p class="error-message"><%= request.getAttribute("loginError") %></p>
            <% } %>
        </form>
    </div>
</body>
<script>
    function updateDomain() {
        const emailDomain = document.querySelector("select[name='emailDomain']");
        const customDomain = document.querySelector("#customEmailDomain");

        if (emailDomain.value === "0") {
            customDomain.style.display = "inline";
            customDomain.value = ""; // 직접 입력을 위해 비움
        } else {
            customDomain.style.display = "none";
            customDomain.value = emailDomain.value; // 선택된 도메인으로 설정
        }
    }
</script>
</html>
