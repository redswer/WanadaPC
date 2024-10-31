<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>와나다 조립 PC</title>
<style type="text/css">
    .etcPC_body {
        width: 1260px;
        margin: 0 auto;
        margin-top: 10px;
    }

    .recommend_product_section {
        display: flex;
        flex-direction: column;
        gap: 20px;
    }

    .recommend_product_section div {
        display: flex;
        justify-content: flex-start;
        padding-bottom: 20px;
    }

    .recommend_product_section div:not(:last-child) {
        border-bottom: 1px solid silver;
    }

    .recommend_product_section div:nth-child(even) {
        justify-content: flex-end;
    }

    .etcPC_main_contents {
        background-color: #f9ebeb;
        padding: 5px 15px;
    }

    .image-section {
        margin-top: 20px;
    }

    .image-section img {
        max-width: 100%;
        height: auto;
    }

    .pc-list {
        list-style-type: none;
        padding: 0;
        display: flex; /* flex로 변경 */
        justify-content: space-between; /* 항목 사이의 간격 조정 */
        border: 1px solid black;
        width: 80%; /* 원하는 너비 조정 */
        margin: 0 auto; /* 중앙 정렬 */
    }

    .pc-item {
        display: flex;
        align-items: center;
        justify-content: center;
        padding: 10px 0; /* 위아래 패딩 추가 */
        cursor: pointer;
        transition: background-color 0.3s;
        flex-grow: 1; /* 동일한 너비로 확장 */
        text-align: center; /* 텍스트 중앙 정렬 */
        position: relative; /* 선을 위치시키기 위해 필요 */
    }

    .pc-item:not(:last-child)::after {
        content: '';
        position: absolute;
        right: 0;
        height: 100%; /* 선 높이 조정 */
        width: 1px; /* 선 두께 조정 */
        background-color: black; /* 선 색상 */
    }

    /* 마우스 오버 효과 */
    .pc-item:hover {
        background-color: rgba(255, 0, 0, 0.3); /* 원하는 색으로 변경 */
    }
</style>
<script>
	function showSection(sectionId) {
	    const sections = document.querySelectorAll('.image-section');
	    sections.forEach(section => {
	        section.style.display = 'none';
	    });
	    const activeSection = document.getElementById(sectionId);
	    if (activeSection) {
	        activeSection.style.display = 'block';
	    }
	}
	
	// 페이지 로드 시 섹션을 보여주는 함수
	window.onload = function() {
	    const category = '<%= request.getParameter("category") %>'; // 서버에서 전달받은 category
	    if (category) {
	        showSection(category); // 해당 섹션 보여주기
	    }
	};
</script>
</head>
<body>
    <div class="etcPC_body">
        <header>
            <%@ include file="/Util/header.jsp" %>
            <%@ include file="/Util/side_bar.jsp" %>
        </header>
        <main>
            <div class="ad">
                <a href="/etcPC?category=ryzen">
                    <img alt="main_ad" src="/Image/ad_index_1.jpg">
                </a>
            </div>
            <div class="etcPC_main_contents">
                <h2>조립 PC</h2>
                <div class="pc_list_container">
					<ul class="pc-list">
						<c:forEach var="i" items="${index_banner_list}" varStatus="status">
						    <li class="pc-item" onclick="showSection('${i.category}', '${i.subject}')">${i.subject}</li>
						</c:forEach>

					</ul>
                </div>
                <c:forEach var="i" items="${index_banner_list}" varStatus="status">
	                <div id="${i.category}" class="image-section" style="display:none;">
	                    <img src="/Image/${i.page_image}">
	                    <div>
	                        <ul>
	                            <li>가정용 PC 1</li>
	                            <li>가정용 PC 2</li>
	                            <li>가정용 PC 3</li>
	                            <li>가정용 PC 4</li>
	                        </ul>
	                    </div>
	                </div>
                </c:forEach>
                <div class="recommend_product_section">
   	                <c:forEach var="i" items="${recommand_pc_parts_list}">
	                	<div>
	                		<a href="/etcPC?category=${i.category}">
	                			<img src="/Image/${i.image}">
	                		</a>
	                	</div>
	                </c:forEach>
                </div>
            </div>
        </main>
        <footer>
            <%@ include file="/Util/footer.jsp" %>
        </footer>
    </div>
</body>
</html>
