<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
    function showSection(sectionId, menuName) {
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
        const category = '<%= request.getAttribute("category") %>'; // 서버에서 전달받은 category
        if (category) {
            let menuName = '조립 PC'; // 기본값

            // 카테고리 확인 및 메뉴 이름 설정
            switch (category) {
                case 'home':
                    menuName = '가정용 PC';
                    break;
                case 'office':
                    menuName = '사무용 PC';
                    break;
                case 'edit':
                    menuName = '편집용 PC';
                    break;
                case 'bj':
                    menuName = '방송용 PC';
                    break;
            }

            showSection(category, menuName); // 해당 섹션 보여주기
        }
    };
</script>
</head>
<body>
    <div class="etcPC_body">
        <header>
            <%@ include file="/Util/header.jsp" %>
        </header>
        <main>
            <div class="ad">
                <a href="">
                    <img alt="main_ad" src="/Image/ad_index_1.jpg">
                </a>
            </div>
            <div class="etcPC_main_contents">
                <h2>조립 PC</h2>
                <div class="pc_list_container">
					<ul class="pc-list">
					    <li class="pc-item" onclick="showSection('home', '가정용 PC')">가정용 PC</li>
					    <li class="pc-item" onclick="showSection('office', '사무용 PC')">사무용 PC</li>
					    <li class="pc-item" onclick="showSection('edit', '편집용 PC')">편집용 PC</li>
					    <li class="pc-item" onclick="showSection('bj', '방송용 PC')">방송용 PC</li>
					</ul>
                </div>
                <div id="home" class="image-section" style="display:none;">
                    <img src="/Image/pc_home_main.jpeg" alt="가정용 PC">
                    <div>
                        <ul>
                            <li>가정용 PC 1</li>
                            <li>가정용 PC 2</li>
                            <li>가정용 PC 3</li>
                            <li>가정용 PC 4</li>
                        </ul>
                    </div>
                </div>
                <div id="office" class="image-section" style="display:none;">
                    <img src="/Image/pc_office_main.jpeg" alt="사무용 PC">
                    <div>
                        <ul>
                            <li>사무용 PC 1</li>
                            <li>사무용 PC 2</li>
                            <li>사무용 PC 3</li>
                            <li>사무용 PC 4</li>
                        </ul>
                    </div>
                </div>
                <div id="edit" class="image-section" style="display:none;">
                    <img src="/Image/pc_edit_main.jpeg" alt="편집용 PC">
                    <div>
                        <ul>
                            <li>편집용 PC 1</li>
                            <li>편집용 PC 2</li>
                            <li>편집용 PC 3</li>
                            <li>편집용 PC 4</li>
                        </ul>
                    </div>
                </div>
                <div id="bj" class="image-section" style="display:none;">
                    <img src="/Image/pc_bj_main.jpeg" alt="방송용 PC">
                    <div>
                        <ul>
                            <li>방송용 PC 1</li>
                            <li>방송용 PC 2</li>
                            <li>방송용 PC 3</li>
                            <li>방송용 PC 4</li>
                        </ul>
                    </div>
                </div>
                <div class="recommend_product_section">
                    <div>
                        <img alt="" src="/Image/pc_home_banner.jpg">
                        <a>
                            <img alt="" src="">
                        </a>
                        <a>
                            <img alt="" src="">
                        </a>
                        <a>
                            <img alt="" src="">
                        </a>
                    </div>
                    <div>
                        <img alt="" src="/Image/pc_office_banner.jpg">
                        <a>
                            <img alt="" src="">
                        </a>
                        <a>
                            <img alt="" src="">
                        </a>
                        <a>
                            <img alt="" src="">
                        </a>
                    </div>
                    <div>
                        <img alt="" src="/Image/pc_edit_banner.jpg">
                        <a>
                            <img alt="" src="">
                        </a>
                        <a>
                            <img alt="" src="">
                        </a>
                        <a>
                            <img alt="" src="">
                        </a>
                    </div>
                    <div>
                        <img alt="" src="/Image/pc_bj_banner.jpg">
                        <a>
                            <img alt="" src="">
                        </a>
                        <a>
                            <img alt="" src="">
                        </a>
                        <a>
                            <img alt="" src="">
                        </a>
                    </div>
                </div>
            </div>
        </main>
        <footer>
            <%@ include file="/Util/footer.jsp" %>
        </footer>
    </div>
</body>
</html>
