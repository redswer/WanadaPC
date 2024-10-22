<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Community Post</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #111;
            color: #ddd;
            margin: 0;
            padding: 0;
        }
        .container {
            max-width: 1200px;
            margin: 0 auto;
            padding: 20px;
        }
        .header {
            display: flex;
            justify-content: space-between;
            align-items: center;
            padding: 10px 0;
        }
        .logo {
            color: #fff;
            font-size: 24px;
            font-weight: bold;
        }
        .nav {
            display: flex;
            gap: 15px;
        }
        .nav a {
            color: #bbb;
            text-decoration: none;
            font-size: 18px;
        }
        .nav a:hover {
            color: #fff;
        }
        .search-bar {
            margin: 20px 0;
            display: flex;
            justify-content: space-between;
            align-items: center;
        }
        .search-bar input {
            width: 80%;
            padding: 10px;
            border-radius: 5px;
            border: none;
            background-color: #222;
            color: #ddd;
        }
        .search-bar button {
            padding: 10px 20px;
            border-radius: 5px;
            border: none;
            background-color: #555;
            color: #fff;
            cursor: pointer;
        }
        .search-bar button:hover {
            background-color: #777;
        }
        .post-list {
            background-color: #222;
            padding: 15px;
            border-radius: 8px;
            margin-top: 20px;
        }
        .post-list table {
            width: 100%;
            border-collapse: collapse;
        }
        .post-list th, .post-list td {
            padding: 15px;
            text-align: left;
        }
        .post-list th {
            background-color: #333;
            color: #fff;
        }
        .post-list td {
            background-color: #444;
        }
        .post-list a {
            color: #1e90ff;
            text-decoration: none;
        }
        .post-list a:hover {
            text-decoration: underline;
        }
        .notice-section {
            background-color: #1c1c1e;
            border: 1px solid #333;
            padding: 20px;
            margin-bottom: 20px;
            border-radius: 10px;
        }
        .notice-section h2 {
            margin: 0;
            color: #f9f9f9;
        }
        .notice-section p {
            margin: 10px 0 0;
            color: #bbb;
        }
    </style>
</head>
<body>
   
        
        <section class="notice-section">
            <h2>정보게시판</h2>
            <p>조립PC와 관련된 팁, 강좌, 리뷰와 같은 다양하고 유용한 정보를 알려드립니다.</p>
        </section>
        
        <div class="post-list">
            <table>
                <tr>
                    <th>[정보] 알파스캔, 120Hz 지원 화이트 모니터 2종 출시</th>
                    <th>운영자</th>
                    <th>2024.10.18. 10:43:20</th>
                    <th>💬 14</th>
                </tr>
                <tr>
                    <td colspan="4">
                        <p>
                            알파스캔디스플레이가 고급스러운 화이트 컬러와 3면 보더리스 디자인으로 세련된 존재감을 뽐내며, 
                            120Hz의 높은 주사율로 업무와 게임을 완벽히 아우르는 가성비 하이브리드 모니터 24B30과 27B30을 출시했다.
                        </p>
                        <p>
                            일반적인 사무용 모니터의 주사율이 60~75Hz인 것에 비해, 이번 신제품인 24인치 24B30과 27인치 27B30은 
                            120Hz의 주사율과 1ms의 빠른 응답속도로 부드러운 화면 전환을 제공해 일반적인 업무 환경뿐만 아니라 
                            게이밍용으로도 최적화된 성능을 발휘한다. 이제품은 Full HD 해상도의 IPS 패널로 구현된 화이트 컬러의 
                            세련된 3면 보더리스 디자인, 일반 IPS 패널 대비 1.3배 높은 1,300:1의 명암비, 어댑티브 싱크, 눈 
                            건강을 위한 읽기 모드와 시력 보호 기능, 그리고 편리한 AOC 적용 소프트웨어 등 뛰어난 기능을 
                            제공한다.
                        </p>
                    </td>
                </tr>
            </table>
        </div>
    </div>
</body>
</html>
