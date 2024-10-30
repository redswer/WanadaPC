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
    /* 폰트를 Arial로 설정하고, 사용할 수 없을 경우 sans-serif로 대체 */
    font-family: Arial, sans-serif;
    /* 페이지의 배경 색상 설정 */
    background-color: #f4f4f4;
    /* 회원가입 컨테이너를 화면 가운데에 배치하기 위해 Flexbox 사용 */
    display: flex;
    justify-content: center;  /* 컨테이너를 수평 가운데 정렬 */
    align-items: center;      /* 컨테이너를 수직 가운데 정렬 */
    /* 전체 화면 높이를 사용 */
    height: 100vh;
    /* 기본 여백 제거 */
    margin: 0;
}

.signup-container {
	
    /* 회원가입 폼 컨테이너의 배경을 흰색으로 설정 */
    background-color: #fff;
    /* 컨테이너 내부 여백 */
    padding: 40px;
    /* 모서리를 둥글게 처리 */
    border-radius: 8px;
    /* 약간의 그림자 효과로 컨테이너가 떠 있는 듯한 느낌을 줌 */
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.5);
    /* 컨테이너의 최대 너비 설정 */
    max-width: 400px;
    /* 주어진 최대 너비 내에서 전체 너비 사용 */
    width: 100%;
}

h1 {
    /* 제목 텍스트를 가운데 정렬 */
    text-align: center;
    /* 제목 텍스트 색상을 진한 회색으로 설정 */
    color: #333;
}

.form-group {
    /* 폼 요소들을 세로로 배치 */
    display: flex;
    flex-direction: column;
    /* 폼 그룹 사이의 간격 추가 */
    margin-bottom: 10px;
}

label {
    /* 라벨 아래에 간격 추가 */
    margin-bottom: 35px;
    /* 라벨 텍스트 색상을 중간 회색으로 설정 */
    color: #555;
    /* 글씨 굵기를 bold로 설정 */
    font-weight: bold;
    /* 글씨 크기를 16px로 설정 */
    font-size: 15px;
}

input[type="text"], input[type="password"], input[type="email"] {
    /* 입력 필드의 너비를 컨테이너의 90%로 설정 */
    width: 90%;
    /* 입력 필드 내부 여백 */
    padding: 10px;
    /* 입력 필드에 연한 회색 테두리 추가 */
    border: 1px solid #ccc;
    /* 입력 필드 모서리를 둥글게 처리 */
    border-radius: 4px;
}

.button {
	
    /* 버튼의 너비를 100%로 설정 */
    width: 96%;
    /* 버튼 내부 여백 */
    padding: 10px;
    /* 버튼의 배경색을 밝은 빨간색으로 설정 */
    background-color: #FF3333;
    /* 버튼 텍스트 색상을 흰색으로 설정 */
    color: white;
    /* 버튼 테두리 없음 */
    border: none;
    /* 버튼의 모서리를 둥글게 처리 */
    border-radius: 4px;
    /* 마우스를 올렸을 때 포인터 모양으로 변경 */
    cursor: pointer;
}

.button:hover {
    /* 버튼에 마우스를 올렸을 때 더 진한 빨간색으로 변경 */
    background-color: #CC0033;
}

.terms {
    /* 약관 텍스트의 글씨 크기를 작게 설정 */
    font-size: 0.9em;
    /* 약관 텍스트 색상을 중간 회색으로 설정 */
    color: #555;
}
</style>

</head>
<body>
	<div class="inner">
		<h1 class="logo_wanada">
			<a href="http://wanada.com" class="link"> <span class="blind">
			 <%@ include file="/Util/main_logo.jsp" %></span>
			</a>
		</h1>
		<div class="signup-container">
			<h1>회원가입</h1>
			<form action="/user_insert" method="POST" name="userForm">
				<div class="form section">
					<div class="join_toggle" id="divToggle">
						<input type="checkbox" id="join_toggle" name="join_toggle" checked> 
						<label for="join_toggle">만)19세 이상입니다</label>
					</div>
				</div>
				<div class="form_group">
					<label for="userEmail">1) 아이디(e-mail)</label> 
					<input type="text" id="userEmail" name="userEmail" size="13" maxlength="15" placeholder="아이디를 입력하세요">
					@
					<input type="text" id="customEmailDomain" name="customEmailDomain" size="13" maxlength="15" placeholder="직접 입력할 도메인"> 
					<select name="emailDomain" id="emailDomain" onchange="updateDomain()">
						<option value="0">직접입력</option>
						<option value="naver.com">naver.com</option>
						<option value="daum.net">daum.net</option>
						<option value="nate.com">nate.com</option>
						<option value="gmail.com">gmail.com</option>
						<option value="yahoo.com">yahoo.com</option>
					</select>
				</div>
				<div class="form_group">
					<label for="userPassword">2) 비밀번호</label> 
					<input type="password" id="userPassword" name="userPassword" placeholder="비밀번호를 입력하세요">
				</div>
				<div class="form_group">
					<label for="userRepassword">3) 비밀번호 확인</label> 
					<input type="password" id="userRepassword" name="userRepassword" placeholder="비밀번호를 다시 입력하세요">
				</div>
				<div class="form_group"> 
					<label for="userName">4) 이름</label>
					<input type ="text" id ="userName" name="userName" placeholder="이름을 입력하세요">
				</div>
				<div class="form_group">
					<label for = "birthdate">5) 생년월일</label>
					<input type ="text" id="userBirthdate" name="userBirthdate" placeholder="생년월일을 입력하세요">
				</div>
				<div class="form_group" style="display: flex; align-items: center; justify-content: space-between;">
					<label for="gender">6) 성별</label> 
					<div>
						<input type="radio" id="gender1" name="gender" value="M"> 
						<label for="gender1">남자</label>
						<input type="radio" id="gender2" name="gender" value="F"> 
						<label for="gender2">여자</label>
					</div>
				</div>
				<div class="form_group">
					<label for="tel">7) 휴대폰 번호</label> 
					<input type="text" id="tell" name="tell" placeholder="휴대폰 번호를 입력하세요                   [예시) 010-1111-1111)]">
				</div>
				<p class="terms">
					<input type="checkbox" id="terms" name="terms"> 
					<label for="terms">본인 정보로 등록합니다.</label>
				</p>
				<button type="button" class="button" onclick="send()">가입하기</button>
			</form>
		</div>
	</div>
</body>

<script>
function send() {
    const form = document.forms['userForm'];
    
    if(!form.join_toggle.checked){
        alert("성인인증을 체크해주세요");
        return;
    }
    
    // 아이디 (이메일)
    if (!form.userEmail.value) {
        alert("이메일(아이디)를 입력하세요");
        form.userEmail.focus();
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
    if (!form.userPassword.value) {
        alert("비밀번호를 입력하세요");
        form.userPassword.focus();
        return;
    }

    // 비밀번호 확인
    if (!form.userRepassword.value) {
        alert("비밀번호 확인을 입력하세요");
        form.userRepassword.focus();
        return;
    }

    // 비밀번호 확인 체크
    if (form.userPassword.value !== form.userRepassword.value) {
        alert("비밀번호를 다시 확인해주세요");
        form.userRepassword.focus();
        return;
    }

    // 이름 체크
    if (!form.userName.value) {
        alert("이름을 입력하세요");
        form.userName.focus();
        return; 
    }

    // 생년월일 형식 체크
    const birthdateRegex = /^\d{4}-\d{2}-\d{2}$/; // YYYY-MM-DD 형식
    if (!form.userBirthdate.value || !birthdateRegex.test(form.userBirthdate.value)) {
        alert("생년월일을 올바른 형식(YYYY-MM-DD)으로 입력하세요");
        form.userBirthdate.focus();
        return;
    }

    // 성별 체크
    if (!form.gender.value) {
        alert("성별을 선택하세요");
        return;
    }

    // 전화번호 형식 검증 추가
    const phoneRegex = /^\d{3}-\d{3,4}-\d{4}$/; // "123-4567-8901" 형식
    if (!phoneRegex.test(form.tell.value)) {
        alert("올바른 전화번호 형식이 아닙니다. 예: 123-4567-8901");
        form.tell.focus();
        return;
    }

    // 약관 동의 체크
    if (!form.terms.checked) {
        alert("본인 확인에 동의해주세요.");
        return;
    }

    // 모든 검증 통과 시 제출
    form.submit();
}
    
  
    function updateDomain() {
        const emailDomain = document.getElementById("emailDomain");
        const customEmailDomain = document.getElementById("customEmailDomain");

        // 선택된 도메인이 "직접입력"이 아닐 경우
        if (emailDomain.value !== "0") {
            customEmailDomain.value = emailDomain.value; // 선택된 도메인으로 텍스트 박스 채우기
        } else {
            customEmailDomain.value = ""; // "직접입력" 선택 시 텍스트 박스 비우기
        }
    }
</script>
</html>