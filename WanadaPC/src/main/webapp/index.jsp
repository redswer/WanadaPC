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

.page_indicator {
    position: absolute;
    top: 5px;
    right: 5px;
    padding: 5px;
    border-radius: 5px;
    display: flex;
    align-items: center;
}

.page_indicator label {
    margin: 2px 0;
}

.page_indicator input[type="radio"] {
    appearance: none; /* 기본 라디오 버튼 스타일 제거 */
    width: 13px; /* 크기 설정 */
    height: 13px; /* 크기 설정 */
    margin-right: 5px; /* 라디오 버튼과 레이블 사이의 간격 */
    border: 2px solid white; /* 테두리 색상 */
    border-radius: 50%; /* 둥글게 만들기 */
    outline: none; /* 포커스 아웃라인 제거 */
    cursor: pointer; /* 커서 변경 */
    transition: background-color 0.2s; /* 배경 색상 전환 효과 */
}

.page_indicator input[type="radio"]:checked {
    background-color: white; /* 선택된 상태의 배경 색상 */
}

.page_indicator input[type="radio"]:disabled {
    border-color: white; /* 비활성화된 상태의 테두리 색상 */
}

.sub_section {
	margin-top: 70px;
}

.game_pc_section {
    display: flex;
    flex-wrap: wrap;
    gap: 20px; /* 이미지 사이 간격 설정 */
}

.game_pc_section a {
    text-decoration: none;
    color: black;
}

.game_pc_section div {
    flex: 1 1 calc(33.33% - 20px); /* 한 줄에 3개씩, 간격 고려 */
    text-align: center; /* 이미지 중앙 정렬 */
    transition: transform 0.3s; /* 호버 효과를 위한 전환 */
}

.game_pc_section div:hover {
    transform: scale(1.05); /* 호버 시 확대 효과 */
}

.game_pc_section img {
    max-width: 100%;
    height: auto;
    border-radius: 5px; /* 이미지 둥글게 */
}

.index_game_pc_main_txt {
    display: block; /* 텍스트 블록 형태로 표시 */
    font-weight: bold; /* 두꺼운 글씨 */
    margin: 10px 0 5px; /* 위 아래 마진 */
}

.index_game_pc_sub_txt {
    color: #777; /* 부가 텍스트 색상 */
    font-size: 0.9em; /* 작은 글씨 */
}

.ad {
	margin-top: 30px;
}

.recommend_product_section {
    display: flex;
    flex-direction: column; /* 세로 방향으로 정렬 */
    gap: 20px; /* 이미지 사이 간격 설정 */
}

.recommend_product_section div {
    display: flex; /* 각 항목을 flex로 설정 */
    justify-content: flex-start; /* 기본적으로 왼쪽 정렬 */
}

.recommend_product_section div:nth-child(even) {
    justify-content: flex-end; /* 짝수 번째 아이템은 오른쪽 정렬 */
}

</style>
</head>
<body class="index_body">
    <header>
        <%@ include file="./Util/header.jsp" %>
    </header>
    <main class="index_main">
        <section class="main_banner">
            <div class="banner_content active">
                <div class="banner_images">
                	<a href="">
                    	<img class="active" alt="" src="./Image/index_banner_pc_rtx_40.jpg">
                    </a>
                    <a href="/Pc/etcPC.jsp">
                    	<img alt="" src="./Image/index_banner_pc_home.jpg">
                   	</a>
                   	<a href="">
                    	<img alt="" src="./Image/index_banner_pc_office.jpg">
                    </a>
                    <a href="">
                    	<img alt="" src="./Image/index_banner_pc_ryzen_9000.jpg">
                   	</a>
                   	<a href="">
                    	<img alt="" src="./Image/index_banner_pc_intel.jpg">
                   	</a>
                   	<a href="">
                    	<img alt="" src="./Image/index_banner_pc_edit.jpg">
                    </a>
                   	<a href="">
                    	<img alt="" src="./Image/index_banner_pc_bj.jpg">
                    </a>
                </div>
                <div class="page_indicator">
                    <label>
                        <input type="radio" name="page" value="1" checked disabled>
                    </label>
                    <label>
                        <input type="radio" name="page" value="2" disabled>
                    </label>
                    <label>
                        <input type="radio" name="page" value="3" disabled>
                    </label>
                    <label>
                        <input type="radio" name="page" value="4" disabled>
                    </label>
                    <label>
                        <input type="radio" name="page" value="5" disabled>
                    </label>
                    <label>
                        <input type="radio" name="page" value="6" disabled>
                    </label>
                    <label>
                        <input type="radio" name="page" value="7" disabled>
                    </label>
                </div>
            </div>
            <div class="arrow left" onclick="prevImage()">&#10094;</div>
            <div class="arrow right" onclick="nextImage()">&#10095;</div>
        </section>
        <section class="sub_section">
        	<h2>게임용 PC</h2>
        	<div class="game_pc_section">
	        	<div>
	        		<a href="">
	        			<img alt="" src="./Image/index_game_pc_godOfWar.jpeg">
	        			<span class="index_game_pc_main_txt">갓 오브 워: 라그나로츠 추천 PC</span>
	        			<span class="index_game_pc_sub_txt">pc로 돌아온 라그나로크</span>
	        		</a>
	        	</div>
	        	<div>
	        		<a href="">
	        			<img alt="" src="./Image/index_game_pc_blackMyth.jpeg">
	        			<span class="index_game_pc_main_txt">검은 신화: 오공 추천 PC</span>
	        			<span class="index_game_pc_sub_txt">새로운 신화를 써내려가다</span>
	        		</a>
	        	</div>
	        	<div>
	        		<a href="">
	        			<img alt="" src="./Image/index_game_pc_diablo.jpeg">
	        			<span class="index_game_pc_main_txt">디아블로4 추천 PC</span>
	        			<span class="index_game_pc_sub_txt">증오의 군주를 막아라</span>
	        		</a>
	        	</div>
	        	<div>
	        		<a href="">
	        			<img alt="" src="./Image/index_game_pc_battleGround.jpeg">
	        			<span class="index_game_pc_main_txt">배틀그라운드 추천 PC</span>
	        			<span class="index_game_pc_sub_txt">최적의 사양으로 즐거운 치킨 사냥</span>
	        		</a>
	        	</div>
	        	<div>
	        		<a href="">
	        			<img alt="" src="./Image/index_game_pc_leagueOfLegend.jpeg">
	        			<span class="index_game_pc_main_txt">리그 오브 레전드 추천 PC</span>
	        			<span class="index_game_pc_sub_txt">오늘도 전설은 계속된다</span>
	        		</a>
	        	</div>
	        	<div>
	        		<a href="">
	        			<img alt="" src="./Image/index_game_pc_lostArk.jpeg">
	        			<span class="index_game_pc_main_txt">로스트아크 추천 PC</span>
	        			<span class="index_game_pc_sub_txt">고대하던 시즌3 시작</span>
	        		</a>
	        	</div>
        	</div>
        </section>
        	<div class="ad">
		       	<a href="">
		    		<img alt="main_ad" src="./Image/ad_index_1.jpg">
		    	</a>
       		</div>
        <section class="sub_section">
        	<h2>추천 상품</h2>
        	<div class="recommend_product_section">
        		<div>
        			<a>
        				<img alt="" src="./Image/index_recommend_product_intel.jpg">
        			</a>
        			<a>
        				상품 내용
        			</a>
        		</div>
        		<div>
        			<a>
        				상품 내용
        			</a>
        			<a>
        				<img alt="" src="./Image/index_recommend_product_ryzen_7000.jpg">
        			</a>
        		</div>
        		<div>
        			<a>
        				<img alt="" src="./Image/index_recommend_product_nvidia.jpg">
        			</a>
        			<a>
        				상품 내용
        			</a>
        		</div>
        		<div>
        			<a>
        				상품 내용
        			</a>
        			<a>
        				<img alt="" src="./Image/index_recommend_product_radeon.jpg">
        			</a>
        		</div>
        		
        	</div>
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
	let currentImageIndex = 0;
	let autoSlideInterval;
	
	function nextImage() {
	    const images = document.querySelectorAll('.banner_images img');
	    currentImageIndex = (currentImageIndex + 1) % images.length; // 다음 이미지로 이동 (순환)
	    updateImages();
	}
	
	function prevImage() {
	    const images = document.querySelectorAll('.banner_images img');
	    currentImageIndex = (currentImageIndex - 1 + images.length) % images.length; // 이전 이미지로 이동 (순환)
	    updateImages();
	}
	
	function updateImages() {
	    const images = document.querySelectorAll('.banner_images img');
	    const indicators = document.querySelectorAll('.page_indicator input[type="radio"]');
	
	    images.forEach((image) => {
	        image.classList.remove('active');
	    });
	
	    images[currentImageIndex].classList.add('active'); // 현재 이미지 활성화
	
	    // 모든 페이지 인디케이터 비활성화
	    indicators.forEach((indicator) => {
	        indicator.disabled = true; // 모든 인디케이터 비활성화
	    });
	
	    // 현재 인디케이터 활성화
	    indicators[currentImageIndex].checked = true;
	}
	
	function resetAutoSlide() {
	    clearInterval(autoSlideInterval); // 기존 인터벌을 클리어
	    autoSlideInterval = setInterval(nextImage, 5000); // 5초마다 다음 이미지로 이동
	}
	
	window.onload = function() {
	    resetAutoSlide();
	};
</script>

</body>
</html>