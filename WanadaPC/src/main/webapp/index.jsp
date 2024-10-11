<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>index</title>
<style type="text/css">
.index_body {
    width: 80%;
    margin: 0 auto;
    margin-top: 10px;
}

.index_main {
    margin: 20px 0;
}

.main_banner {
    position: relative;
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
</style>
</head>
<body class="index_body">
    <header>
        <%@ include file="./Util/header.jsp" %>
    </header>
    <main class="index_main">
        <section class="main_banner">
            <div>
                <ul>
                    <li class="active" onclick="showBanner(0)">베스트</li>
                    <li onclick="showBanner(1)">게임용 PC</li>
                    <li onclick="showBanner(2)">사무용 PC</li>
                    <li onclick="showBanner(3)">전문가용 PC</li>
                </ul>
            </div>
            <div class="banner_content active">베스트 배너 내용</div>
            <div class="banner_content">게임용 PC 배너 내용</div>
            <div class="banner_content">사무용 PC 배너 내용</div>
            <div class="banner_content">전문가용 PC 배너 내용</div>
        </section>
        <section>
            section2
        </section>
        <section>
            section3
        </section>
    </main>
    <footer>
        <%@ include file="./Util/footer.jsp" %>
    </footer>

    <script>
        function showBanner(index) {
            // 모든 배너와 탭 비활성화
            const banners = document.querySelectorAll('.banner_content');
            const tabs = document.querySelectorAll('.main_banner li');

            banners.forEach((banner, i) => {
                banner.classList.remove('active');
                tabs[i].classList.remove('active');
            });

            // 클릭한 탭과 해당 배너 활성화
            banners[index].classList.add('active');
            tabs[index].classList.add('active');
        }
    </script>
</body>
</html>
