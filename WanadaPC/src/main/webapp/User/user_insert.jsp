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
        .form-group {
            display: flex;
            flex-direction: column;
            margin-bottom: 15px;
        }
        label {
            margin-bottom: 5px;
            color: #555;
        }
        input[type="text"],
        input[type="password"],
        input[type="email"] {
            width: 90%;
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
    <div class="inner">
        <h1 class="logo_wanada">
            <a href="http://wanada.com" class="link">
            <span class="blind">와나다</span>
            </a>
        </h1>
        <div class="signup-container">
            <h1>회원가입</h1>
            <div class="form section">
                <div class="join_toggle" id="divToggle">
                    <input type="checkbox" id="join_toggle" checked>
                    <label for="join_toggle">실명 인증된 아이디로 가입</label>
                </div>
            </div>
            <form action="/user_insert" method="POST" name="userForm">
                <div class="User_email">
                    <label for="email">아이디(e-mail)</label>
                    <input type="text" id="email" name="email" size="13" maxlength="15" placeholder=" (아이디)이메일을 입력하세요">@ 
                    <input type="text" name="customEmailDomain" size="13" maxlength="15" placeholder="직접 입력할 도메인">
                    <select name="emailDomain" id="emailDomain">
                        <option value="0">직접입력</option>
                        <option value="naver.com">naver.com</option>    
                        <option value="daum.net">daum.net</option>
                        <option value="nate.com">nate.com</option>
                        <option value="gmail.com">gmail.com</option>
                        <option value="yahoo.com">yahoo.com</option>
                    </select>
                </div>
                <div class="User_password">
                    <label for="password">비밀번호</label>
                    <input type="password" id="password" name="password" placeholder="비밀번호를 입력하세요">
                </div>
                <div class="User_repassword">
                    <label for="repassword">비밀번호 확인</label>
                    <input type="password" id="repassword" name="repassword" placeholder="비밀번호를 다시 입력하세요">
                </div>
                <div class="User_gender">
                    <label for="gender">성별</label>
                    <input type="radio" id="gender1" name="gender" value="M">
                    <label for="gender1">남자</label>
                    <input type="radio" id="gender2" name="gender" value="F">
                    <label for="gender2">여자</label>
                </div>
                <div class="User_phone">
                    <label for="tel">휴대폰 번호</label>
                    <input type="text" id="tel" name="tel" placeholder="휴대폰 번호를 입력하세요">
                </div>
                <p class="terms">
                    <input type="checkbox" id="terms" name="terms">
                    <label for="terms">약관에 동의합니다</label>
                </p>
                <button type="button" class="button" onclick="send()">가입하기</button>
            </form>
        </div>
    </div>
</body>
<script>
    function send() {
        const form = document.forms['userForm'];

        // 아이디 (이메일)
        if (!form.email.value) {
            alert("이메일을 입력하세요");
            form.email.focus();
            return;
        }
     // 이메일 도메인 체크
        const emailDomain = form.emailDomain.value === "0" ? form.customEmailDomain.value : form.emailDomain.value;
        if (!emailDomain) {
            alert("이메일 도메인을 입력하세요");
            form.customEmailDomain.focus();
            return;
        }
        // 비밀번호 체크
        if (!form.password.value) {
            alert("비밀번호를 입력하세요");
            form.password.focus();
            return;
        }
        // 비밀번호 확인 체크
        if (form.password.value !== form.repassword.value) {
            alert("비밀번호를 확인해주세요");
            form.repassword.focus();
            return;
        }
        // 성별 체크
        if (!form.gender.value) {
            alert("성별을 선택하세요");
            return; // radio button의 경우 focus()는 필요 없음
        }
        // 전화번호 체크
        if (!form.tel.value) {
            alert("전화번호를 입력하세요");
            form.tel.focus();
            return;
        }

        // 모든 검증 통과 시 제출
        form.submit();
    }
</script>
</html>
