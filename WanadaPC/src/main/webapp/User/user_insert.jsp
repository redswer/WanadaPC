<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<meta charset="utf-8">
<meta name = "viewport" content="wigth=device-width", inital-scale=1.0, maxinum-scale=1.0, mininum-scale=1.0, user-scalable=no">
<meta http-equlv ="X-UA-Compatible" content="IE=edge">
<meta name="supported-color-schmes" content="light">
<title>와나다 회원가입</title>

<html>
<head>
<Style TYPE="text/css">

</Style>
<title>Insert title here</title>
</head>
<body>
	<div class ="container">
		<div class ="inner">
			<h1 class ="logo_naver">
				<a href="http://wanada.com" class="link">
				::before
				<spasn class="blind">와나다</spasn>
				</a>
			</h1>
			<div class="content">
				<from id="join from" method="post" action="/user2/join/end" class="from">
					<input type="hidden" id="token_sjoin" name="token_sjoin" value="hk@ybFJ6gpSgyDD2">
					<input type="hidden" id="nid_kb2" name="nid_kb2" value>
					<input type="hidden" id="joinMode" name="joinMode" value="joindentity">
					<input type="hidden" id="encPswd" name="encPswd" value>
					<input type="hidden" id="enKey" name="enKey" value>
					<input type="hidden" id="telecom" name="telecom" value>
					<input type="hidden" id="birthday" name="birthday" value>
					<div class ="from_content">
						<div class="from_section">
							<div class="join_toggle" id="divToggle">
								<input type="checkbox" id=join_toggle" checked>
								<label for ="join_toggle">
								"실명 인증된 아이디로 가입"
								::after
								</label>
							</div>
							<div class="form_list"> <div>
								<div class="from_item user" id="divld">
									::before
									<input type="text" id="id" name="id" placeholder="아이디" class="input" value maxlength="20"
									autocapitalize="off">
									<div class="id_naver">@naver.com</div>
									::after
								</div>
								<div class="from_item lock password" id="divpasswd">
									::before
									<input type="password" id="pswd" name="pswd1" placeholder="비밀번호" class="input" value maxlength="20"
									autocomplete="new-password">
									<div class="password_info">
										<em class="how_secure" id=secureLevel"></em>
										<button type="button" class="btn_show hide">
											::before
											<span class="blind">비밀번호 보기</span>
										</button>
									</div>
									::after
								</div>
								<div class="from_item email" id="divEmail">
									::before
									<span class="placeholder_prefix">[선택]</span>
									<input type="email" id="email" name="email" placeholder="[선택] 이메일주소 (비밀번호 찾기 등 본인 확인용)" 
									class="input" value maxlength="100">
									::after
								</div>
								::after
							</div>	
							<div class="error_text item_style" id="idMsg" style=display: none"></div>
							<div class="error_text item_style" id="pswd1Msg" style=display: none"></div>
							<div class="error_text item_style" id="emailMsg" style=display: none"></div>
							<div class="form_list">
								<div class="form_item user" id="divName"></div>
								::before
								<input type="text" id="name" name="name" placeholder="이름" class="input" value maxlength="40">
								::after
							</div>
							<div class="form_item calendar" id="divBirthday"> 
								::before
								<input type="text" id=birthdayinput" placeholder="생년월일 8자리" class="input" value maxiength="13"> 
								::after 
							</div>
							<div class="form_item telecom" id="divTelecom">
								::before
								<button type="button" id="btn_telecom" class="btn_telecom" aria-expanded="false" aria-controls="telecom_menu">
									<span class="placeholder">통신사 선택</span>
									::after
								</button>
								<ul role="menu" id="telecom_menu" class="telecom_menu">
									<li role="presentation" class="item">
										<button types="button" role="menuitem" class="button" id="btnTelecom1">
											<span class="text">SKT</span>
										</button>
									</li>
									<li role="presentation" class="item">
										<button types="button" role="menuitem" class="button" id="btnTelecom2">
											<span class="text">SKT 알뜰폰</span>
										</button>
									</li>
									<li role="presentation" class="item">
										<button types="button" role="menuitem" class="button" id="btnTelecom3">
											<span class="text">KT</span>
										</button>
									</li>
									<li role="presentation" class="item">
										<button types="button" role="menuitem" class="button" id="btnTelecom4">
											<span class="text">KT 알뜰폰</span>
										</button>
									</li>
									<li role="presentation" class="item">
										<button types="button" role="menuitem" class="button" id="btnTelecom5">
											<span class="text">LG U+</span>
										</button>
									</li>
									<li role="presentation" class="item">
										<button types="button" role="menuitem" class="button" id="btnTelecom6">
											<span class="text">LG U+ 알뜰폰</span>
										</button>
									</li>	
								</ul>
								::after
							</div>
							<div class="from_item adult" id="divIdentityGender">
								<ul class=adult_list" id="listIdentityGender">
									<li class="radio_item">
										<input type="radio" id="IdentityGender1" name="IdentityGender" value="M" class="blind">
										<label for="IdentityGender1">남자</label>
									</li>
									<li class="radio_item">
										<input type="radio" id="IdentityGender2" name="IdentityGender" value="F" class="blind">
										<label for="IdentityGender1">여자</label>
									</li>
								</ul>
								
					</div>
			</div>		
		</div>
	</div>
</body>
</html>