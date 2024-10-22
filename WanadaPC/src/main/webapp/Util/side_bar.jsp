<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>사이드 바</title>
    <style type="text/css">
        .side_bar {
            position: fixed;
            z-index: 1;
            right: 10px;
            bottom: 10px;
            transition: color 0.3s; /* 호버 효과에 부드러운 전환 추가 */
        }

        .side_bar:hover svg {
            fill: #808080;
        }

        /* 클릭 영역을 넓히기 위한 패딩 추가 (선택 사항) */
        .side_bar a {
            display: inline-block;
            padding: 10px;
        }
    </style>
</head>
<body>
    <div class="side_bar">
        <a href="javascript:void(0);" onclick="scrollToTop()">
            <svg xmlns="http://www.w3.org/2000/svg" width="50" height="50" fill="#C0C0C0" class="bi bi-arrow-up-square-fill" viewBox="0 0 16 16">
                <path d="M2 16a2 2 0 0 1-2-2V2a2 2 0 0 1 2-2h12a2 2 0 0 1 2 2v12a2 2 0 0 1-2 2zm6.5-4.5V5.707l2.146 2.147a.5.5 0 0 0 .708-.708l-3-3a.5.5 0 0 0-.708 0l-3 3a.5.5 0 1 0 .708.708L7.5 5.707V11.5a.5.5 0 0 0 1 0"/>
            </svg>
        </a>
    </div>
    <script>
        function scrollToTop() {
            window.scrollTo({
                top: 0,
                behavior: 'smooth'
            });
        }
    </script>
</body>
</html>
