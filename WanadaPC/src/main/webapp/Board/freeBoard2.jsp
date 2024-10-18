<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>커뮤니티</title>
    <style type="text/css">
/* 기본 레이아웃 설정 */
.freeboard {
    font-family: 'Arial', sans-serif;
    background-color: #f9f9f9;
    margin: 0 auto;
    margin-top:10px;
    padding: 0;  
    color: #333;
	width:1260px;
	



}
/* Header 스타일 */
.header-container {
    display: flex;
    justify-content: center; 
    align-items: center;
    padding: 10px 20px;
    background-color: #fff;
    border-bottom: 1px solid #ddd;
}

.logo img {
    width: 150px; /* 로고 크기 /
    height: auto;*
}

nav.topmenu {
	display: flex;             /* 가로로 배치 */
    justify-content: center; 
}

nav.topmenu ul {
    display: flex;             /* ul을 flex 컨테이너로 설정 */
    justify-content: center;   /* ul 내부의 li들을 가로로 가운데 정렬 */
    padding: 0;
    margin: 0;
}

nav.topmenu ul li {
    list-style: none;          /* 리스트 스타일 제거 */
    margin-right: 20px;        /* li 간 간격 설정 */
}

nav.topmenu ul li:last-child {
    margin-right: 0;           /* 마지막 항목 오른쪽 마진 제거 */
}

nav.topmenu ul li a {
    text-decoration: none;     /* 링크 밑줄 제거 */
    color: #333;               /* 링크 기본 색상 */
    font-size: 14px;           /* 글씨 크기 */
    padding: 10px;
}

nav.topmenu ul li a:hover {
    color: #6200ea;            /* 마우스 오버 시 색상 변경 */
}
/* 반응형을 위한 추가 설정 */
@media (max-width: 768px) {
    .navbar {
        flex-direction: column;
        align-items: flex-start;
    }

    .navbar li {
        margin-left: 0;
        margin-bottom: 10px;
    }
}
/* 검색창 및 글쓰기 버튼 스타일 */
	.search-bar  {
    display: flex;
    justify-content: flex-end;
    margin-bottom: 20px;
	width: 100%;
}

.search-bar input {
    width: 80%;
    padding: 10px;
    font-size: 16px;
	border: 2px solid #ddd; /* 테두리 추가 */
    border-radius: 5px; /* 모서리 둥글게 */
    outline: none; /* 클릭 시 기본 테두리 제거 */
    transition: border-color 0.3s ease; /* 애니메이션 추가 */
}
.search-bar input:focus {
    border-color: #6200ea; /* 포커스 시 테두리 색상 변경 */
}


.search-bar button {
    padding: 10px 20px;
    margin-left: 10px;
    background: linear-gradient(45deg, #6200ea, #3700b3); /* 그라데이션 배경 */
	background-color: #6200ea;
    color: #fff;
    border: none;
    border-radius: 5px;
    cursor: pointer;
	box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1); /* 그림자 추가 */
    transition: transform 0.2s, background 0.3s ease; /* 클릭 시 애니메이션 */	
}

.search-bar button:hover {
   	background: linear-gradient(45deg, #3700b3, #6200ea); /* 호버 시 그라데이션 반전 */
    transform: translateY(-2px); /* 호버 시 약간 위로 이동 */
}
.search-bar button:active {
    transform: translateY(0); /* 클릭 시 원래 위치로 돌아옴 */
}

/* 알림 및 공지 사항 */
.notice.section {
    width: 80%; /* 너비 조정 (필요에 따라 변경) */
    max-width: 600px; /* 최대 너비 설정 */
    margin: 20px auto; /* 위 아래 여백 20px, 좌우 자동으로 가운데 정렬 */
    padding: 20px; /* 내부 여백 */
    background-color: #f1f1f1; /* 배경색 */
    border: 1px solid #ddd; /* 테두리 */
    border-radius: 5px; /* 모서리 둥글게 */
    text-align: center; /* 텍스트 가운데 정렬 */
}
.notice-header {
    display: flex;
    align-items: center;
    margin-bottom: 10px; /* 헤더와 내용 사이 간격 */
}

.notice-header .icon {
    margin-right: 10px; /* 아이콘과 텍스트 간격 */
    font-size: 18px; /* 아이콘 크기 */
    color: #000; /* 아이콘 색상 */
}

.notice-header .title {
    font-weight: bold; /* 알림판 텍스트 굵게 */
    font-size: 18px; /* 알림판 텍스트 크기 */
}


.notice {
    background-color: #f1f1f1;
    padding: 10px;
    border: 1px solid #ddd;
    margin-bottom: 20px;
	
}


.notice p {
    margin: 0;
    padding: 5px 0;
    font-size: 14px;
	
}

.notice p span {
    color: #6200ea;
    font-weight: bold;
	
.notice-icon {
    display: inline-block;
    margin-right: 5px;
    color: #6200ea; /* 아이콘 색상 */
}



}

/* 게시판 테이블 스타일 */
.board {
    background-color: #fff;
    padding: 20px;
    border-radius: 4px;
    margin-top: 20px;
    box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
	max-height: 600px; /* 게시판 최대 높이 설정 */
    overflow-y: auto;  /* 내용이 많으면 스크롤 가능하게 설정 */
}

.board table {
    width: 100%;
    border-collapse: collapse;
}

.board th, .board td {
    padding: 15px;
    text-align: left;
    border-bottom: 1px solid #ddd;
    font-size: 14px;
}
.board th, .board td {
    padding: 15px;
    text-align: center; /* 가운데 정렬 */
    font-size: 14px;
    border-bottom: none; /* 밑줄 제거 */
}

.board th {
    background-color: #f9f9f9;
    font-weight: bold;
}
/* 각 열의 너비를 조정하여 간격 늘리기 */
.board th, .board td {
    padding: 15px;
}

.board th:nth-child(1), .board td:nth-child(1) {
    width: 40%; /* 제목 열의 너비를 40%로 설정 */
}

.board th:nth-child(2), .board td:nth-child(2) {
    width: 20%; /* 작성자 열의 너비를 20%로 설정 */
}

.board th:nth-child(3), .board td:nth-child(3) {
    width: 20%; /* 작성일 열의 너비를 20%로 설정 */
}

.board th:nth-child(4), .board td:nth-child(4) {
    width: 20%; /* 조회 열의 너비를 20%로 설정 */
}

.board td {
    color: #333;
}

.board .title {
    font-weight: bold;
    color: #6200ea;
}

.board .date, .board .views {
    color: #666;
    font-size: 12px;
}

/* 반응형 게시판 조정 */
@media (max-width: 768px) {
    .board {
        max-height: 400px; /* 작은 화면에서는 높이를 줄임 */
    }
}
/* 게시글과 배너 컨테이너 레이아웃 설정 */
.post-list-container {
    display: flex;
    justify-content: space-between;
    align-items: flex-start;
    margin-top: 20px;
}

/* 게시글 테이블 스타일 */
.post-list {
    width: 75%; /* 게시글 영역의 너비 설정 */
	margin-right: 20px;
}

.post-list table tbody td a {
text-decoration:none;
color:black;

}


/* 서비스 배너 스타일 */
.service-banner {
    width: 20%; /* 배너의 너비를 게시글의 1/5로 설정 */
    padding: 20px;
    background-color: #f9f9f9;
    border-radius: 5px;
    box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
}

.service-banner h2 {
    margin-bottom: 15px;
    font-size: 18px;
    color: #6200ea;
}

.service-banner ul {
    list-style: none;
    padding: 0;
    margin: 0;
}

.service-banner ul li {
    margin-bottom: 10px;
}

.service-banner ul li a {
    text-decoration: none;
    color: #333;
    font-size: 14px;
}

.service-banner ul li a:hover {
    color: #6200ea;
}
/* 베스트 커뮤니티 스타일 */
.best-community-section {
    width: 100%;
    padding: 20px;
    background-color: #f9f9f9;
    border-radius: 5px;
    box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
    margin-top: 20px;
    display: flex; /* 플렉스박스 사용 */
    flex-direction: column; /* 세로 방향으로 정렬 */
    align-items: center; /* 가운데 정렬 */
}

/* 제목 스타일 - 가운데 정렬 */
.best-community-title {
    margin-bottom: 15px;
    font-size: 18px;
    color: #6200ea;
    text-align: center; /* 제목을 가운데 정렬 */
}

/* 리스트 스타일 */
.left_community, .right_community {
    width: 100%; /* 전체 너비 사용 */
    max-width: 600px; /* 최대 너비 설정 */
    padding: 0;
    list-style: none;
    display: flex; /* 플렉스박스 사용 */
    justify-content: space-between; /* 좌우 정렬 */
}

/* 왼쪽 리스트 스타일 */
.left_community li {
    display: flex;
    align-items: center;
    margin-bottom: 20px;
    justify-content: flex-start; /* 왼쪽 정렬 */
}

/* 오른쪽 리스트 스타일 */
.right_community li {
    display: flex;
    align-items: center;
    margin-bottom: 20px;
    justify-content: flex-end; /* 오른쪽 정렬 */
}

.left_community li img, .right_community li img {
    width: 70px;
    height: 60px;
    margin-right: 10px; /* 이미지와 텍스트 간 간격 */
    border-radius: 5px;
}

.left_community li a, .right_community li a {
    text-decoration: none;
    color: #333;
    font-size: 14px;
}

.left_community li a:hover, .right_community li a:hover {
    color: #6200ea;
}
/* 종합 주요 뉴스 스타일 */
.news-section {
    width: 30%; /* 뉴스 영역 너비 설정 */
    padding: 20px;
    background-color: #f9f9f9;
    border-radius: 5px;
    box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
	float:right;
	margin-left:20px;
	text-decoration: none;

}

.news-section h2 {
    margin-bottom: 15px;
    font-size: 18px;
    color: #6200ea;
}

.news-section ul {
    list-style: none;
    padding: 0;
    margin: 0;
}

.news-section ul li {
    margin-bottom: 10px;

}

.news-section ul li a {
   	text-decoration: none;
	list-style:none;
    color: #333;
    font-size: 14px;
}

.news-section ul li a:hover {
    color: #6200ea;
}

.topmenu ul li a {
	text-decoration: none;
}

/* 이미지 섹션 스타일 */
.image-section {
  text-align: center;   /* 이미지 중앙 정렬 */
  margin-top: 20px;     /* 뉴스와 이미지 사이의 추가 여백 */
}

.image-section img {
  max-width: 100%;      /* 이미지 크기를 화면에 맞게 조절 */
  height: auto;         /* 비율 유지하며 높이 자동 조절 */
  border-radius: 8px;   /* 이미지 모서리 둥글게 */
}


/* 푸터 스타일 */
.footer {
    text-align: center;
    padding: 20px;
    background-color: #fff;
    margin-top: 20px;
    border-top: 1px solid #ddd;
    font-size: 12px;
    color: #666;
}
.content-container {
    display: flex;
    justify-content: space-between; /* 양쪽 섹션 사이에 여유 공간 */
    margin-top: 20px;
    gap: 20px; /* 두 섹션 사이 간격 */
}

/* 게시글 리스트 스타일 */
.post-list {
    width: 65%; /* post-list는 왼쪽에서 더 많은 공간을 차지 */
    border: 1px solid #ddd;
    padding: 20px;
    border-radius: 5px;
}

.post-list table {
    width: 100%;
    border-collapse: collapse;
}

.post-list th, .post-list td {
    border-bottom: 1px solid #ddd;
    padding: 10px;
    text-align: left;
}

/* 뉴스 섹션 스타일 */
.news-section {
    width: 30%; /* news-section은 오른쪽에서 상대적으로 작은 공간을 차지 */
    background-color: #f9f9f9;
    padding: 20px;
    border-radius: 5px;
    box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
}

.news-section h2 {
    margin-bottom: 15px;
    color: #6200ea;
}

.news-section ul {
    list-style: none;
    padding: 0;
}

.news-section ul li {
    margin-bottom: 10px;
}

.news-section ul li a {
    text-decoration: none;
    color: #333;
    font-size: 14px;
}

.news-section ul li a:hover {
    color: #6200ea;
}
</style>
</head>
<%@ include file="/Util/header.jsp" %>
<body class="freeboard">
    <!-- Header Section -->
    <header>
        <div class="header-container">
            <div class="logo">
            </div>
            <nav class="topmenu">
                <ul>
                    <li><a href="#">전체보기</a></li>
                    <li><a href="#">최신뉴스</a></li>
                    <li><a href="#">구매가이드</a></li>
                    <li><a href="#">동영상</a></li>
                    <li><a href="#">벤치마크</a></li>
                    <li><a href="#">소비자사용기</a></li>
                    <li><a href="#">이벤트</a></li>
                </ul>
            </nav>
        </div>
    </header>

    <!-- Main Section -->
    <main>
        <div class="search-bar">
            <input type="text" placeholder="검색어를 입력하세요">
            <button>검색</button>
            <button>글쓰기</button>
        </div>
	<!-- 베스트 커뮤니티 섹션 추가 -->
	<div class="best-community-section">
    <h2 class="best-community-title">베스트 커뮤니티</h2>
    <ol class="left_community">
        <li class="left-align">
            <img src="https://img.danawa.com/images/descFiles/6/673/5672795_tr9n3ZiSqc_1729058763190.png" alt="특가몰에서 PentaWave Z06D (화이트)를 빠르게 구매 했네요" />
            <a href="#">특가몰에서 PentaWave Z06D (화이트)를 빠르게 구매 했네요</a> (25)
        </li>
        <li class="left-align">
            <img src="https://img.danawa.com/images/descFiles/6/672/5671987_1728954766582.png" alt="어른용 용가리 치킨 출시" />
            <a href="#">어른용 용가리 치킨 출시</a> (27)
        </li>
    </ol>
    <ol class="right_community">
        <li class="right-align">
            <img src="https://img.danawa.com/images/descFiles/6/673/5672729_M7IB5R69R7_1729052842019.jpeg" alt="우동+공기밥" />
            <a href="#">우동+공기밥</a> (25)
        </li>
        <li class="right-align">
            <img src="https://img.danawa.com/images/attachFiles/6/674/5673189_1.jpg?fitting=Large|140:105&crop=140:105;*,*" alt="어이없는 실수" />
            <a href="#">어이없는 실수</a> (35)
        </li>
    </ol>
</div>
	

        <div class="notice-section">
            <div class="notice-header">
        <span class="icon">📢</span> <!-- 아이콘 추가 -->
        <span class="title">알림판</span> <!-- 알림판 텍스트 -->
    </div>
            <div class="notice">
                <strong>안내:</strong> 잦은 오류, PC속도 잡자! PC안정화 위해 이건 꼭!
            </div>
            <div class="notice">
                <strong>안내:</strong> 자유게시판 이용안내
            </div>
            <div class="notice">
                <strong>안내:</strong> 게임별 VGA 성능평가표
            </div>
        </div>

      <div class="content-container">
    <!-- 게시글 리스트 -->
    <div class="post-list">
        <table>
            <thead>
                <tr>
                    <th>제목</th>
                    <th>작성자</th>
                    <th>작성일</th>
                    <th>조회</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                        <td><a href="#">쿠팡 댓글 알바라고 하는 사기 미리 체험해보세요</a></td>
                        <td>민들레차</td>
                        <td>2024.10.14</td>
                        <td>1469</td>
                    </tr>
                    <tr>
                        <td><a href="#">우리나라 0.0001%가 되어봅시다</a></td>
                        <td>트루레인</td>
                        <td>2024.10.14</td>
                        <td>1221</td>
                    </tr>
                    <tr>
                        <td><a href="#">홀로리다 허리케인 수준 ㄷㄷ</a></td>
                        <td>plc-wave</td>
                        <td>2024.10.14</td>
                        <td>1219</td>
                    </tr>
                	<tr>
                	<td><a href="#">안개가 짙네요</a></td>
                	<td>HomeRun</td>
                	<td>2024.10.14</td>
                	<td>15</td>          	
                	</tr>
                <tr>
                <td><a href="#">나만의 노트북 팁 공유합니다</a></td>
                <td>코딩왕</td>
                <td>2024.10.13</td>
                <td>1022</td>
            </tr>
            <tr>
                <td><a href="#">2024년 최신 스마트폰 리뷰</a></td>
                <td>테크마스터</td>
                <td>2024.10.13</td>
                <td>540</td>
            </tr>
            <tr>
                <td><a href="#">자취생 필수템 추천</a></td>
                <td>요리사</td>
                <td>2024.10.12</td>
                <td>1123</td>
            </tr>
            <tr>
                <td><a href="#">왜 자꾸 이 컴퓨터가 느려지죠?</a></td>
                <td>헬프미</td>
                <td>2024.10.12</td>
                <td>320</td>
            </tr>
            <tr>
                <td><a href="#">가을맞이 아이템 쇼핑 리스트</a></td>
                <td>쇼핑러버</td>
                <td>2024.10.11</td>
                <td>256</td>
            </tr>
            <tr>
                <td><a href="#">프로그래밍 문제 풀이 모음</a></td>
                <td>코딩짱</td>
                <td>2024.10.11</td>
                <td>412</td>
            </tr>
            <tr>
                <td><a href="#">주식 초보자를 위한 종목 추천</a></td>
                <td>금융꾼</td>
                <td>2024.10.10</td>
                <td>763</td>
            </tr>
            <tr>
                <td><a href="#">3D 프린터로 만드는 소품들</a></td>
                <td>3D디자이너</td>
                <td>2024.10.09</td>
                <td>874</td>
            </tr>
            <tr>
                <td><a href="#">애플 vs 삼성, 어느 것이 더 좋을까요?</a></td>
                <td>기술덕후</td>
                <td>2024.10.08</td>
                <td>942</td>
            </tr>
            <tr>
                <td><a href="#">디지털 아트 도구 추천</a></td>
                <td>그림쟁이</td>
                <td>2024.10.07</td>
                <td>1523</td>
            </tr>
            <tr>
                <td><a href="#">무료 웹호스팅 서비스 비교</a></td>
                <td>웹개발자</td>
                <td>2024.10.07</td>
                <td>295</td>
            </tr>
            <tr>
                <td><a href="#">무비 리뷰: 2024년 최고의 영화</a></td>
                <td>영화광</td>
                <td>2024.10.06</td>
                <td>1247</td>
            </tr>
            <tr>
                <td><a href="#">헬스장 운동 팁과 트릭</a></td>
                <td>운동왕</td>
                <td>2024.10.05</td>
                <td>301</td>
            </tr>
            <tr>
                <td><a href="#">지금 가장 핫한 패션 트렌드</a></td>
                <td>패셔니스타</td>
                <td>2024.10.04</td>
                <td>1117</td>
            </tr>
            <tr>
                <td><a href="#">자전거 타고 즐기는 주말 여행</a></td>
                <td>자전거매니아</td>
                <td>2024.10.03</td>
                <td>214</td>
            </tr>
            <tr>
                <td><a href="#">구독 서비스 리뷰: 넷플릭스 vs 왓챠</a></td>
                <td>콘텐츠마스터</td>
                <td>2024.10.02</td>
                <td>530</td>
            </tr>
            <tr>
                <td><a href="#">이상한 나라의 앨리스 인형들</a></td>
                <td>인형수집가</td>
                <td>2024.10.01</td>
                <td>765</td>
            </tr>           
            </tbody>
        </table>
    </div>

    <!-- 종합 주요 뉴스 -->
    <div class="news-section">
        <h2>종합 주요 뉴스</h2>

        <ul>
            <li><a href="#">2024년 최고로 뜨는 기술 트렌드 발표</a></li>
            <li><a href="#">세계 경제 전망: 불황 극복할 수 있을까?</a></li>
            <li><a href="#">스마트폰 시장의 미래는?</a></li>
            <li><a href="#">2024 올림픽, 유망 종목에 대한 예측</a></li>
           <li><a href="#">AI가 바꾸는 미래의 직업</a></li>
            <li><a href="#">최신 건강관리법: 웨어러블 기기 사용법</a></li>
            <li><a href="#">넥스트 제너레이션 게임 콘솔 출시 예정</a></li>
            <li><a href="#">자율주행차 상용화 시점, 그리고 대응 전략</a></li>
            <li><a href="#">세계적인 스타트업들이 주목하는 시장</a></li>
            <li><a href="#">가상 현실의 새로운 혁신: 더 넓은 세상으로</a></li>
            <li><a href="#">플라스틱 없는 지구 만들기 위한 글로벌 노력</a></li>
            <li><a href="#">탄소 배출 감축을 위한 정부의 새로운 정책 발표</a></li>
            <li><a href="#">음악과 AI의 결합, 새로운 창작의 시대</a></li>
            <li><a href="#">2024년 테크놀로지 혁신을 주도할 10대 기업</a></li>
            <li><a href="#">디지털 화폐의 미래와 그로 인한 경제 변화</a></li>
         <img src="https://images.dable.io/t/img.danawa.com/200X125/m001/40e1da3ac3fb5c4bd358e65675e1826a.webp" alt="뉴스 이미지">           
        </ul>
    </div>
	</div>



    </main>

    <!-- Footer Section -->
    <footer>
        <p>© 2024 커뮤니티. All Rights Reserved.</p>
    </footer>

</body>
</html>