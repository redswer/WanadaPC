<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>와나다 PC</title>
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
    width: 100%;
    height: 300px; /* 배너 높이 설정 */
    overflow: hidden; /* 넘치는 부분 숨김 */
}

.banner_images {
    display: flex;
    transition: opacity 0.5s ease-in-out; /* 부드러운 전환 효과 */
}

.banner_item {
    min-width: 100%; /* 슬라이드의 너비를 100%로 설정 */
}

.banner_images img {
    width: 100%; /* 이미지 너비 100% 설정 */
    height: auto; /* 자동 높이 조정 */
    border-radius: 5px; /* 둥근 모서리 */
}

.arrow {
    position: absolute;
    top: 50%;
    cursor: pointer;
    background-color: rgba(0, 0, 0, 0.5); /* 배경을 약간 투명하게 설정 */
    font-size: 30px; /* 화살표 크기 조정 */
    color: white; /* 화살표 색상 변경 */
    padding: 10px; /* 여백 추가 */
    transform: translateY(-50%); /* 중앙 정렬 */
}

.arrow.left {
    left: 0px;
    border-radius: 0 50% 50% 0; /* 왼쪽 화살표 둥글게 */
}

.arrow.right {
    right: 0px;
    border-radius: 50% 0 0 50%; /* 오른쪽 화살표 둥글게 */
}

.image-counter {
    position: absolute;
    top: 10px; /* 상단에서 위치 조정 */
    right: 10px; /* 오른쪽에서 위치 조정 */
    color: white; /* 글자 색상 */
    font-size: 15px; /* 글자 크기 */
    background-color: rgba(0, 0, 0, 0.3); /* 배경을 약간 투명하게 설정 */
    padding: 5px 10px; /* 여백 */
    border-radius: 50px; /* 모서리 둥글게 */
    z-index: 1; /* 다른 요소들 위에 표시 */
}

.sub_section {
    margin: 50px 0;
    background-color: #FFF0F5;
    padding: 15px;
}

.game_pc_section {
    display: flex;
    flex-wrap: wrap;
    gap: 20px; /* 이미지 사이 간격 설정 */
    justify-content: space-between;
}

.windows_guide {
	width: 30%;
	display: flex;
	flex-flow: column;
	justify-content: space-between;
	align-items: center;
	background-color: #FFE4E1;
}

.windows {
	width: 50%;
	padding-bottom: 50px;
}

.windows a {
	display: flex;
	flex-flow: column;
	align-items: center;
}

.windows a img {
	margin-bottom: 10px;
}

.game_pc {
	display: flex;
	flex-wrap: wrap;
	gap: 50px;
	width: 65%;
	justify-content: space-around;
	padding: 25px 0;
	background-color: #FFE4E1;
}

.game_pc_section a {
    text-decoration: none;
    color: black;
}

.game_pc_section div {
    text-align: center; /* 이미지 중앙 정렬 */
    transition: transform 0.3s; /* 호버 효과를 위한 전환 */
}

.game_pc_section div div:hover {
    transform: scale(1.05); /* 호버 시 확대 효과 */
}

.game_pc img {
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

.recommend_product_section div:not(:last-child) {
    border-bottom: 1px solid silver;
}

.recommend_product_section div:nth-child(even) {
    justify-content: flex-end; /* 짝수 번째 아이템은 오른쪽 정렬 */
}

</style>
</head>
<body>
	<div class="index_body">
	    <header>
	        <%@ include file="/Util/header.jsp" %>
	    </header>
	    <main class="index_main">
	    	<%@ include file="/Util/side_bar.jsp" %>
	        <section class="main_banner">
	            <div class="banner_images">
	                <c:forEach var="i" items="${index_banner_list}" varStatus="status">
	                    <div class="banner_item" style="display: ${status.index == 0 ? 'block' : 'none'};">
	                        <a href="${i.page_link}?category=${i.category}">
	                            <img src="./Image/${i.image}">
	                        </a>
	                        <div class="image-counter">${status.index + 1} / ${fn:length(index_banner_list)}</div>
	                    </div>
	                </c:forEach>
	            </div>
	            <div class="arrow left" onclick="prevImage()">&#10094;</div>
	            <div class="arrow right" onclick="nextImage()">&#10095;</div>
	        </section>
	        <section class="sub_section">
	            <h2>게임용 PC</h2>
	            <div class="game_pc_section">
	            	<div class="game_pc">
		                <c:forEach var="i" items="${index_game_pc_list}">
		                    <div class="game_pc_contents">
		                        <a href="/gamePC?category=${i.category}">
		                            <img alt="" src="./Image/${i.image}">
		                            <span class="index_game_pc_main_txt">${i.subject}</span>
		                            <span class="index_game_pc_sub_txt">${i.information}</span>
		                        </a>
		                    </div>
		                </c:forEach>
	                </div>
	                <div class="windows_guide">
	            		<h3>초보자를 위한 조립 PC 가이드</h3>
	            		<div class="windows">
	            			<a href="">
	            				<img src="/Image/windows_guide_1.png">
	            				<span>윈도우 구매 가이드</span>
	            			</a>
	            		</div>
	            		<div class="windows">
	            			<a href="">
	            				<img src="/Image/windows_guide_2.png">
	            				<span>윈도우 설치방법</span>
	            			</a>
	            		</div>
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
    </div>
</body>
<script>
    let currentIndex = 0;
    const items = document.querySelectorAll('.banner_item');
    
    function showImage(index) {
        items.forEach((item, i) => {
            item.style.display = (i === index) ? 'block' : 'none'; // 현재 이미지만 보이게
        });
    }

    function nextImage() {
        currentIndex = (currentIndex + 1) % items.length; // 다음 이미지 인덱스
        showImage(currentIndex);
    }

    function prevImage() {
        currentIndex = (currentIndex - 1 + items.length) % items.length; // 이전 이미지 인덱스
        showImage(currentIndex);
    }

    setInterval(nextImage, 5000); // 5초마다 다음 이미지로 이동
</script>
</html>
