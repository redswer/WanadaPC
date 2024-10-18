<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<style>
/* 공통 스타일 */
.POWER_body {
    font-family: 'Arial', sans-serif;
    width:1260;
	margin:0 auto;
	margin-top:10px;
}

/* Product_Show와 compare의 크기를 통일 */
.Product_Show, .compare {
   	width: 80%; /* 동일한 너비 설정 */
    margin: 0 auto;
    border-radius: 8px; /* 모서리 둥글게 */
    padding: 20px;
    box-sizing: border-box;
    margin-top: 5px; /* 두 영역 간 간격을 설정 */
}

/* 상품 목록 옵션 버튼 */
.Product_Show_List_option ul {
    list-style-type: none;
    padding: 0;
    margin: 0;
    display: flex;
    justify-content: space-between; /* 버튼을 양 끝으로 배치 */
}

.Product_Show_List_option ul li {
    margin: 0;
    flex:1;
}

.Product_Show_List_option ul li a {
	text-decoration: none;
    color: black;
    padding: 10px 15px;
   	background-color: #f9f9f9;
    border: 1px solid black;
    border-radius: 1; /* 버튼 모서리를 각지게 하여 여백 없이 붙이기 */
    transition: background-color 0.3s;
    display: block;
    text-align: center; /* 텍스트 중앙 정렬 */
}

.Product_Show_List_option ul li a:hover {
    background-color: #0056b3;
}

/* 상품 목록 스타일 */
.Product_Show_List {
    width: 100%; /* 부모 요소에 맞춰 전체 너비 설정 */
    margin-top: 20px;
    border-radius: 8px;
    background-color: #f9f9f9;
    box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
}

.Product_Show_List table {
    width: 100%;
    border-collapse: collapse;
}

.Product_Show_List th, .Product_Show_List td {
    padding: 12px;
    text-align: left;
    border-bottom: 1px solid #e5e5e5;
}

.Product_Show_List th {
    background-color: #f1f1f1;
    font-weight: bold;
    text-align: center;
}

.Product_Show_List td {
    text-align: center;
}

.Product_Show_List img {
    width: 70px; /* 상품 이미지 크기 설정 */
    height: auto;
    border-radius: 5px;
   
}
.compare_power_container {
    display: flex; /* 두 요소를 가로로 배치 */
    flex-direction: row;
    justify-content: space-between;
    background-color: #f9f9f9;
    padding: 20px;
    border: 1px solid #ddd;
    border-radius: 8px;
    box-sizing: border-box;
    margin-top: 20px;
    width: 100%; /* Product_Show_List와 동일한 너비로 설정 */
}

/* 비교 테이블 스타일 */
.compare_power_one, .compare_power_two {
    width: 100%; /* 두 요소가 같은 박스 안에서 균등한 크기로 나란히 */
    margin-top: 0;
    background-color: #f9f9f9;
    border: 1px solid #ddd;
    border-radius: 8px;
    padding: 15px;
    box-sizing: border-box;
}


/* 테이블 스타일 */
.compare_power_one th, .compare_power_two th {
    background-color: #f1f1f1;
    font-weight: bold;
    text-align: center;
    white-space: nowrap; /* 텍스트가 줄바꿈되지 않도록 설정 */
    width: 100px; /* 텍스트 길이에 맞추어 너비를 자동 조정 */
    padding: 12px; /* 여백을 통해 가독성 향상 */
}

.compare_power_one td, .compare_power_two td {
    padding: 12px;
    text-align: left;
    border-bottom: 1px solid #ddd;
}



.compare_power_two {
    max-height: 300px; /* 스크롤이 필요한 높이 설정 */
    overflow-y: auto;
}

.compare_power_two table {
    width: 100%;
}

.compare_power_two tr:nth-child(1) ~ tr {
     width: 100%;
}

/* 스크롤바 스타일 (웹킷 기반 브라우저) */
.compare_power_two::-webkit-scrollbar {
    width: 8px;
}

.compare_power_two::-webkit-scrollbar-thumb {
    background-color: #888;
    border-radius: 4px;
}

.compare_power_two::-webkit-scrollbar-track {
    background-color: #f1f1f1;
}

/* 가격 강조 */
.Product_Show_List td.price {
    font-weight: bold;
    color: #e63946;
}

</style>
<%@ include file="/Util/header.jsp" %>
<body class="POWER_body">
    <div class="header">
        <header>
            <div class="Product_Show">
                <div class="Product_Show_List">
                    <table>
                        <tr>
                            <th colspan="3" class="Product_Show_List_option">
                                <ul>
                                    <li><a href="#">이름순(오름차순)</a></li>
                                    <li><a href="#">이름순(내림차순)</a></li>
                                    <li><a href="#">낮은가격순</a></li>
                                    <li><a href="#">높은가격순</a></li>
                                </ul>
                            </th>
                        </tr>
                        <tr>
                            <td><img src="example.jpg" alt="상품 이미지"></td>
                            <td>상품 설명 예시</td>
                            <td>₩100,000</td>
                        </tr>
                    </table>
                </div>
            </div>
        </header>
    </div>
    <div class="compare">
        <section>
            <div class="compare_power_one" id="defaultOption">
                <table>
                    <colgroup>
                        <col style="width:130px;" />
                    </colgroup>
                    <tr class="prod_image dark_line">
                        <th>이미지</th>
                        <td></td>
                    </tr>
                    <tr class="prod_name">
                        <th>상품명</th>
                        <td></td>
                    </tr>
                    <tr class="prod_price">
                        <th>가격</th>
                        <td></td>
                    </tr>
                </table>
            </div>

            <div class="compare_power_two">
                <table>
                    <tr>
                        <th>제조사</th>
                        <td></td>
                    </tr>
                    <tr>
                        <th>출시년월</th>
                        <td></td>
                    </tr>
                    <tr>
                        <th>파워종류</th>
                        <td></td>
                    </tr>
                    <!-- 아래는 스크롤 영역 -->
                    <tr>
                        <th>소켓 구분</th>
                        <td></td>
                    </tr>
                    <tr>
                        <th>제조 공정</th>
                        <td></td>
                    </tr>
                    <tr>
                        <th>코어 수</th>
                        <td></td>
                    </tr>
                    <tr>
                        <th>스레드 수</th>
                        <td></td>
                    </tr>
                    <tr>
                        <th>기본 클럭</th>
                        <td></td>
                    </tr>
                    <tr>
                        <th>최대 클럭</th>
                        <td></td>
                    </tr>
                </table>
            </div>
        </section>
    </div>
</body>
<%@ include file="/Util/footer.jsp" %>
</html>