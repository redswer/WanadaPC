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
.CPU_body {
    font-family: 'Arial', sans-serif;
    width: 1260px;
    margin: 10px auto 0;
}

/* Product_Show와 compare의 크기를 통일 */
.Product_Show, .compare {
    width: 80%;
    margin: 5px auto;
    padding: 20px;
    border-radius: 8px;
    box-sizing: border-box;
    background-color: #f9f9f9;
}

/* 상품 목록 옵션 버튼 */
.Product_Show_List_option {
    width: 100%;
    table-layout: fixed; /* 셀 너비를 고정하여 균등하게 배치 */
    border-collapse: collapse;
}

.Product_Show_List_option ul {
    display: flex;
    justify-content: space-between;
    margin: 0;
    padding: 0;
    width: 100%;
    list-style-type: none;
    table-layout: fixed; /* 테이블의 셀 크기를 균등하게 */
}

.Product_Show_List_option ul li {
    flex: 1; /* 버튼들을 동일한 너비로 설정 */
    text-align: center; /* 텍스트 중앙 정렬 */
}

.Product_Show_List_option ul li a {
    text-decoration: none;
    color: black;
    padding: 10px 15px;
    background-color: #f9f9f9;
    border: 1px solid black;
    transition: background-color 0.3s;
    display: block;
}

.Product_Show_List_option ul li a:hover {
    background-color: #0056b3;
}

/* 선택된 항목 강조 (선택 시 배경색) */
.Product_Show_List_option ul li a.selected {
    background-color: #d1e7fd;
    border-color: #0056b3;
}

/* 상품 목록 스타일 */
.Product_Show_List {
    margin-top: 20px;
    border-radius: 8px;
    box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
}

.Product_Show_List table {
    width: 100%;
    border-collapse: collapse;
}

.Product_Show_List th, .Product_Show_List td {
    padding: 12px;
    text-align: center;
    border-bottom: 1px solid #e5e5e5;
}

.Product_Show_List th {
    background-color: #f1f1f1;
    font-weight: bold;
}

.Product_Show_List img {
    width: 70px;
    height: auto;
    border-radius: 5px;
}

/* 가격 강조 */
.Product_Show_List td.price {
    font-weight: bold;
    color: #e63946;
}

/* compare_cpu_one과 compare_cpu_two를 같은 박스에 넣기 */
.compare_cpu_container {
    display: flex;
    justify-content: space-between;
    padding: 20px;
    border: 1px solid #ddd;
    border-radius: 8px;
    box-sizing: border-box;
    margin-top: 20px;
    width: 100%;
}

/* 비교 테이블 스타일 */
.compare_cpu_one, .compare_cpu_two {
    width: 100%;
    background-color: #f9f9f9;
    border: 1px solid #ddd;
    border-radius: 8px;
    padding: 15px;
    box-sizing: border-box;
}

/* 테이블 스타일 */
.compare_cpu_one th, .compare_cpu_two th {
    background-color: #f1f1f1;
    font-weight: bold;
    text-align: center;
    white-space: nowrap;
    padding: 12px;
}

.compare_cpu_one td, .compare_cpu_two td {
    padding: 12px;
    text-align: left;
    border-bottom: 1px solid #ddd;
}

/* 인텔 CPU종류까지만 보이고 나머지 항목 스크롤 */
.compare_cpu_two {
    max-height: 300px;
    overflow-y: auto;
}

/* 스크롤바 스타일 (웹킷 기반 브라우저) */
.compare_cpu_two::-webkit-scrollbar {
    width: 8px;
}

.compare_cpu_two::-webkit-scrollbar-thumb {
    background-color: #888;
    border-radius: 4px;
}

.compare_cpu_two::-webkit-scrollbar-track {
    background-color: #f1f1f1;
}
</style>
<%@ include file="/Util/header.jsp" %>
<body class="CPU_body">
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
            <div class="compare_cpu_one" id="defaultOption">
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

            <div class="compare_cpu_two">
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
                        <th>CPU종류</th>
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