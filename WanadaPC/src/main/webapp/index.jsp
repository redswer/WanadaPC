<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>index</title>
<style type="text/css">
.index_body {
    width: 1260px;
    margin: 0 auto;
    margin-top: 10px;
}

.index_main {
    margin: 20px 0;
}

.main_banner {
    position: relative;
    overflow: hidden;
}

.main_banner ul {
    display: flex;
    list-style: none;
    padding: 0;
    margin: 0;
    cursor: pointer;
    justify-content: center;
}

.main_banner li {
    padding: 10px 20px;
    background-color: #f0f0f0;
    margin-right: 5px;
    border-radius: 5px;
    transition: background-color 0.3s;
}

.main_banner li.active {
    background-color: #007bff;
    color: white;
}

.banner_content {
    display: none; /* 모든 배너를 기본적으로 숨김 */
}

.banner_content.active {
    display: block; /* 활성화된 배너만 표시 */
}

.arrow {
    position: absolute;
    top: 50%;
    cursor: pointer;
    background-color: rgba(0, 0, 0, 0.5); /* 배경을 약간 투명하게 설정 */
    font-size: 30px; /* 화살표 크기 조정 */
    color: white; /* 화살표 색상 변경 */
    padding: 10px; /* 여백 추가 */
    transform: translateY(-25%); /* 중앙 정렬 */
}

.arrow.left {
    left: 0px;
    border-radius: 0 50% 50% 0; /* 왼쪽 화살표 둥글게 */
}

.arrow.right {
    right: 0px;
    border-radius: 50% 0 0 50%; /* 오른쪽 화살표 둥글게 */
}

.banner_images {
    position: relative; /* 상대 위치 설정 */
    overflow: hidden; /* 이미지가 넘치지 않도록 */
    height: 300px; /* 높이 설정 */
}

.banner_images img {
    max-width: 100%;
    height: auto;
    position: absolute; /* 절대 위치로 배치 */
    transition: opacity 0.5s ease; /* 부드러운 전환 효과 */
    opacity: 0; /* 기본적으로 투명하게 설정 */
}

.banner_images img.active {
    opacity: 1; /* 활성화된 이미지만 보이게 설정 */
}

.page-indicator {
    position: absolute;
    top: 5px;
    right: 5px;
    padding: 5px;
    border-radius: 5px;
    display: flex;
    align-items: center;
}

.page-indicator label {
    margin: 2px 0;
}
</style>
</head>
<body class="index_body">
    <header>
        <%@ include file="./Util/header.jsp" %>
    </header>
    <main class="index_main">
    	<a href="">
    		<img alt="main_ad" src="./Image/main_ad_1.jpg">
    	</a>
        <section class="main_banner">
            <div>
                <ul>
                    <li class="active" onclick="showBanner(0)">게임용 PC</li>
                    <li onclick="showBanner(1)">사무용 PC</li>
                    <li onclick="showBanner(2)">전문가용 PC</li>
                    <li onclick="showBanner(3)">브랜드존</li>
                </ul>
            </div>
            <div class="banner_content active">
                <div class="banner_images">
                	<a href="">
                    	<img class="active" alt="" src="./Image/game_pc_banner_leagueOfLegend.jpg">
                    </a>
                    <a href="#">
                    	<img alt="" src="./Image/game_pc_banner_battleGround.jpg">
                   	</a>
                   	<a href="#">
                    	<img alt="" src="./Image/game_pc_banner_blackMyth.jpg">
                    </a>
                    <a href="#">
                    	<img alt="" src="./Image/game_pc_banner_diablo.jpg">
                   	</a>
                   	<a href="#">
                    	<img alt="" src="./Image/game_pc_banner_godOfWar.jpg">
                   	</a>
                   	<a href="#">
                    	<img alt="" src="./Image/game_pc_banner_lostArk.jpg">
                    </a>
                    <a href="#">
                    	<img alt="" src="./Image/game_pc_banner_worldOfWarcraft.jpg">
                    </a>
                </div>
                <div class="page-indicator">
                    <label>
                        <input type="radio" name="page" value="1" checked>
                    </label>
                    <label>
                        <input type="radio" name="page" value="2">
                    </label>
                    <label>
                        <input type="radio" name="page" value="3">
                    </label>
                    <label>
                        <input type="radio" name="page" value="4">
                    </label>
                    <label>
                        <input type="radio" name="page" value="5">
                    </label>
                    <label>
                        <input type="radio" name="page" value="6">
                    </label>
                    <label>
                        <input type="radio" name="page" value="7">
                    </label>
                </div>
            </div>
            <div class="banner_content">사무용 PC 배너 내용</div>
            <div class="banner_content">전문가용 PC 배너 내용</div>
            <div class="banner_content">브랜드존 배너 내용</div>
            <div class="arrow left" onclick="prevImage()">&#10094;</div>
            <div class="arrow right" onclick="nextImage()">&#10095;</div>
        </section>
        <section>
        	<h3>커뮤니티</h3>
           	<div>커뮤니티 내용</div>
        </section>
        <section>
        	<h3>유튜브 / 쇼츠</h3>
        	<div>링크</div>
        </section>
    </main>
    <footer>
        <%@ include file="./Util/footer.jsp" %>
    </footer>

<script>
    let currentIndex = 0;
    let currentImageIndex = 0;
    let autoSlideInterval;

    function showBanner(index) {
        const banners = document.querySelectorAll('.banner_content');
        const tabs = document.querySelectorAll('.main_banner li');

        banners.forEach((banner, i) => {
            banner.classList.remove('active');
            tabs[i].classList.remove('active');
        });

        banners[index].classList.add('active');
        tabs[index].classList.add('active');
        currentIndex = index; // 현재 인덱스 업데이트
        currentImageIndex = 0; // 이미지 인덱스 초기화
        updateImages(index); // 선택한 배너의 이미지를 업데이트

        // 자동 슬라이드 초기화
        resetAutoSlide();
    }

    function nextImage() {
        const images = document.querySelectorAll('.banner_content.active .banner_images img');
        currentImageIndex = (currentImageIndex + 1) % images.length; // 다음 이미지로 이동 (순환)
        updateImages(currentIndex);
    }

    function prevImage() {
        const images = document.querySelectorAll('.banner_content.active .banner_images img');
        currentImageIndex = (currentImageIndex - 1 + images.length) % images.length; // 이전 이미지로 이동 (순환)
        updateImages(currentIndex);
    }

    function updateImages(bannerIndex) {
        const images = document.querySelectorAll('.banner_content.active .banner_images img');
        const indicators = document.querySelectorAll('.page-indicator input[type="radio"]');

        images.forEach((image, i) => {
            image.classList.remove('active');
        });

        images[currentImageIndex].classList.add('active'); // 현재 이미지 활성화

        // 페이지 인디케이터 업데이트
        indicators.forEach((indicator, i) => {
            indicator.checked = (i === currentImageIndex);
        });
    }

    function resetAutoSlide() {
        clearInterval(autoSlideInterval); // 기존 인터벌을 클리어
        autoSlideInterval = setInterval(nextImage, 5000); // 10초마다 다음 이미지로 이동
        
    }
    
    window.onload = function() {
        showBanner(0);
    }
</script>

</body>
</html>