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

.topmenu {
	
	justify-content: center;    
}

.navbar ul,li{
    display: flex;
    justify-content: flex-start; /* 메뉴가 왼쪽 정렬 */
    list-style: none;
    padding: 0;
    margin: 0 10px;
    float:left;

}

.navbar li {
    margin-right: 20px; /* 각 메뉴 사이 간격 */
}

.navbar li a {
    text-decoration: none;
    color: #000;
    font-size: 14px;
    padding: 10px;
}

.navbar li a:hover {
    color: #6200ea; /* 메뉴에 마우스 오버 시 색상 변경 */
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
.search-write-section {
    display: flex;
    justify-content: center;
    margin-bottom: 20px;
}

.search-write-section input {
    width: 60%;
    padding: 10px;
    font-size: 16px;
}

.search-write-section button {
    padding: 10px 20px;
    margin-left: 10px;
    background-color: #6200ea;
    color: #fff;
    border: none;
    border-radius: 5px;
    cursor: pointer;
}

.search-write-section button:hover {
    background-color: #3700b3;
}

/* 알림 및 공지 사항 */
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
    text-align: center;
}

.best-community-section h2 {
    margin-bottom: 15px;
    font-size: 18px;
    color: #6200ea;
}

.best-community-section ol {
    list-style: none;
    padding: 0;
    text-align: left;
    max-width: 600px;
    margin: 0 auto;
}

.best-community-section ol li {
    display: flex;
    align-items: center;
    margin-bottom: 15px;
}

.best-community-section ol li img {
    width: 50px;
    height: 50px;
    margin-right: 10px;
    border-radius: 5px;
}

.best-community-section ol li a {
    text-decoration: none;
    color: #333;
    font-size: 14px;
}

.best-community-section ol li a:hover {
    color: #6200ea;
}
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
    <h2>베스트 커뮤니티</h2>
    <ol>
        <li>
            <img src="image1.jpg" alt="코카콜라 화장실 표시" />
            <a href="#">코카콜라 본사의 화장실 표시</a> (25)
        </li>
        <li>
            <img src="image2.jpg" alt="어른용 용가리 치킨 출시" />
            <a href="#">어른용 용가리 치킨 출시</a> (27)
        </li>
        <li><a href="#">컴퓨터 부품을 주워왔네요</a> (25)</li>
        <li><a href="#">[포인트 마켓] 찰만 ZM-GP3 A 만수...</a> (35)</li>
        <!-- 추가 항목 -->
    </ol>
	</div>


        <div class="notice-section">
            <div class="alert">
                <strong>안내:</strong> 찾은 오류, PC속도 잡자! PC안정화 위해 이건 꼭!
            </div>
            <div class="alert">
                <strong>안내:</strong> 자유게시판 이용안내
            </div>
            <div class="alert">
                <strong>안내:</strong> 게임별 VGA 성능평가표
            </div>
        </div>

        <!-- Post List Section -->
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

 <!-- 종합 주요 뉴스 부분 -->
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
        </ul>
    </div>



    </main>

    <!-- Footer Section -->
    <footer>
        <p>© 2024 커뮤니티. All Rights Reserved.</p>
    </footer>

</body>
</html>