<%@page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>News Section</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #1a1b1e;
            color: #ddd;
            margin: 0;
            padding: 0;
        }
        .container {
            max-width: 1200px;
            margin: 0 auto;
            padding: 20px;
        }
        header {
            padding: 10px 0;
            display: flex;
            justify-content: space-between;
            align-items: center;
        }
        .news-title {
            color: #fff;
            font-size: 20px;
        }
        .description {
            color: #bbb;
            margin: 5px 0;
        }
        .search-filter {
            display: flex;
            justify-content: space-between;
            align-items: center;
            margin: 20px 0;
        }
        .search-filter select, .search-filter input {
            padding: 10px;
            border-radius: 5px;
            border: none;
            background-color: #2c2d30;
            color: #ddd;
        }
        .search-filter button {
            padding: 10px 15px;
            border-radius: 5px;
            border: none;
            background-color: #555;
            color: #fff;
            cursor: pointer;
        }
        .search-filter button:hover {
            background-color: #777;
        }
        .announcement-list {
            background-color: #2c2d30;
            padding: 20px;
            border-radius: 10px;
        }
        .announcement-list table {
            width: 100%;
            border-collapse: collapse;
        }
        .announcement-list th, .announcement-list td {
            padding: 15px;
            text-align: left;
        }
        .announcement-list th {
            background-color: #333;
            color: #fff;
            border-bottom: 2px solid #444;
        }
        .announcement-list td {
            background-color: #3a3b3e;
            border-bottom: 1px solid #444;
        }
        .announcement-list a {
            color: #1e90ff;
            text-decoration: none;
        }
        .announcement-list a:hover {
            text-decoration: underline;
        }
        .announcement-list td span {
            background-color: #4a4b4e;
            padding: 3px 6px;
            border-radius: 3px;
        }
        .announcement-list .icon {
            color: #999;
        }
        .announcement-list .views {
            text-align: right;
        }
        .button-post {
            position: absolute;
            top: 20px;
            right: 20px;
            background-color: #5a5af0;
            color: white;
            padding: 10px 15px;
            border-radius: 5px;
            text-decoration: none;
        }
        .button-post:hover {
            background-color: #6b6bf2;
        }
    </style>
</head>
<body>
    <div class="container">
        <header>
            <div>
                <div class="news-title">뉴스</div>
                <div class="description">PC업계 관련 국내외 최신 소식과 신상품소식을 빠르게 전달해드립니다.</div>
            </div>
        </header>
        
        <div class="search-filter">
            <button>선택 초기화</button>
            <select>
                <option value="all">제목+내용</option>
                <option value="title">제목</option>
                <option value="content">내용</option>
            </select>
            <input type="text" placeholder="검색어를 입력해 주세요" />
            <button>검색</button>
        </div>

        <div class="announcement-list">
            <table>
                <tr>
                    <th>알림판</th>
                    <th>작성자</th>
                    <th>작성일</th>
                    <th>조회</th>
                </tr>
                <tr>
                    <td>
                        <span class="icon">🔔</span>
                        <a href="#">PC26 커뮤니티 이용 규칙</a>
                    </td>
                    <td>운영자</td>
                    <td>2024.10.18</td>
                    <td class="views">11</td>
                </tr>
                <tr>
                    <td>
                        <span class="icon">📢</span>
                        <a href="#">몬스타기어, 작은 크기에 편의성 갖춘 'Y623M 아쿠아' PC 케이스 출시</a>
                    </td>
                    <td>운영자</td>
                    <td>2024.10.18</td>
                    <td class="views">6</td>
                </tr>
                <tr>
                    <td>
                        <span class="icon">📢</span>
                        <a href="#">마이크로닉스 'EZDIY-FAB SHIELD' 시리즈 전원 어댑터 출시</a>
                    </td>
                    <td>운영자</td>
                    <td>2024.10.18</td>
                    <td class="views">6</td>
                </tr>
                <tr>
                    <td>
                        <span class="icon">📢</span>
                        <a href="#">몬스타기어, 콤팩트 고성능 PC 케이스 '가즈 Y424 MESH' 출시</a>
                    </td>
                    <td>운영자</td>
                    <td>2024.10.18</td>
                    <td class="views">6</td>
                </tr>
                <tr>
                    <td>
                        <span class="icon">📢</span>
                        <a href="#">맥스엘리트, 12V-2x6 커넥터 포함 'MAXWELL DUO' 파워 출시</a>
                    </td>
                    <td>운영자</td>
                    <td>2024.10.17</td>
                    <td class="views">8</td>
                </tr>
                <tr>
                    <td>
                        <span class="icon">📢</span>
                        <a href="#">디앤디컴 '애즈락 X870E Taichi' 및 'X870 스틸레전드 WiFi' 출시</a>
                    </td>
                    <td>운영자</td>
                    <td>2024.10.17</td>
                    <td class="views">10</td>
                </tr>
                <tr>
                    <td>
                        <span class="icon">📢</span>
                        <a href="#">커세어 'iCUE 링크 9000D RGB 에어플로우' 슈퍼타워 PC 케이스 출시</a>
                    </td>
                    <td>운영자</td>
                    <td>2024.10.17</td>
                    <td class="views">10</td>
                </tr>
            </table>
        </div>
    </div>
</body>
</html>
