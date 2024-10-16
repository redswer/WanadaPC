<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
.Product_body {
	font-family: Arial, sans-serif;
	background-color: #f5f5f5;
}

.Product_main {
	width: 80%;
	margin: 0 auto;
	padding: 20px;
}

.Product_Kategorie ul {
	list-style-type: none;
	padding: 0;
	margin: 0;
	display: flex; /* 항목들이 한 줄로 나열되도록 설정 */
	justify-content: space-between; /* 항목들이 경계에 맞게 균등하게 분배 */
	width: 100%; /* ul 너비를 부모 컨테이너에 맞춤 */
}

.Product_Kategorie ul li {
	flex: 1; /* 모든 li가 동일한 너비를 가지도록 설정 */
	margin: 0 10px; /* 각 li 사이에 여백 추가 */
	box-sizing: border-box; /* padding과 border를 포함한 크기 계산 */
}

.Product_Kategorie ul li:first-child {
	margin-left: 0; /* 첫 번째 li의 좌측 여백 제거 */
}

.Product_Kategorie ul li:last-child {
	margin-right: 0; /* 마지막 li의 우측 여백 제거 */
}

.Product_Kategorie ul li a {
	height: 65%;
	text-decoration: none;
	color: #333;
	font-size: 20px;
	padding: 10px;
	display: block;
	background-color: #f9f9f9;
	border: 1px solid #ddd;
	border-radius: 5px;
	transition: background-color 0.3s;
	text-align: center;
	width: 100%;/* a 태그가 li의 전체 너비를 차지하도록 설정 */
}

.Product_Kategorie ul li a:hover {
	background-color: #e9e9e9;
}

/* 제품 옵션 테이블 스타일 */
.Product_list {
	display: none;
	margin-top: 10px;
	padding: 10px;
	background-color: #f0f0f0;
	border: 1px solid #ccc;
	border-radius: 5px;
	width: 100%;
}

.Product_list table {
	width: 100%;
	border-collapse: collapse;
}

.Product_list th, .Product_list td {
	text-align: left;
	padding: 10px;
	border-bottom: 1px solid #ddd;
}

.Product_list th {
	background-color: #f9f9f9;
	padding: 10px;
	text-align: left;
	border-bottom: 1px solid #ddd;
	width: 150px; /* th의 너비를 고정 */
	box-sizing: border-box; /* 패딩과 보더를 포함한 너비 계산 */
}

.Product_list td input[type="checkbox"] {
	margin-right: 10px;
}

/* 카테고리 클릭 시 나타나는 스타일 */
.Product_Show {
	width: 100%;
	display: flex;
	flex-direction: column;
	align-items: center; /* 가운데 정렬 */
	margin: 0 auto;
	padding: 20px 0;
}

.Product_Show_Option {
	width: 100%; /* 부모 요소에 맞춰 전체 너비 설정 */
}

.Product_Show_Option ul {
	list-style-type: none;
	padding: 0;
	display: flex;
	justify-content: space-between; /* 옵션들이 부모의 경계에 맞춰지도록 설정 */
	width: 100%;
}

.Product_Show_Option ul li {
	margin: 0 10px;
}

.Product_Show_Option ul li a {
	text-decoration: none;
	color: #333;
	padding: 10px 20px;
	background-color: #f9f9f9;
	border: 1px solid #ddd;
	border-radius: 5px;
	transition: background-color 0.3s;
}

.Product_Show_Option ul li a:hover {
	background-color: #e9e9e9;
}
/* Product_Show_List 스타일 */
.Product_Show_List {
	width: 81.5%; /* 부모 요소에 맞춰 전체 너비 설정 */
	margin-left: 20px;
	padding: 10px;
	background-color: #f9f9f9;
	border: 1px solid #ddd;
	border-radius: 5px;
	margin-top: 20px;
	box-sizing: border-box;
}

.Product_Show_List table {
	width: 100%; /* 테이블 너비를 부모에 맞춤 */
	border-collapse: collapse;
}

.Product_Show_List th, .Product_Show_List td {
	padding: 9px;
	border-bottom: 1px solid #ddd;
	text-align: left;
}

.Product_Show_List th {
	background-color: #f0f0f0;
	font-weight: bold;
}

.Product_Show_List td {
	vertical-align: middle;
}

.Product_Show_List img {
	width: 50px;
	height: auto;
}
.Product_Show_List_option ul {
	list-style-type: none;
	padding: 0;
	margin: 0;
	display: flex; /* 항목들이 한 줄로 나열되도록 설정 */
	justify-content: space-between; /* 항목들이 부모의 경계에 맞게 균등하게 분배 */
	width: 98.5%; /* ul 너비를 부모 컨테이너에 맞춤 */
}

.Product_Show_List_option ul li {
	flex: 1; /* 모든 li가 동일한 너비를 가지도록 설정 */
	margin: 0 10px; /* 각 li 사이에 여백 추가 */
	box-sizing: border-box; /* padding과 border를 포함한 크기 계산 */
}

.Product_Show_List_option ul li:first-child {
	margin-left: 0; /* 첫 번째 li의 좌측 여백 제거 */
}

.Product_Show_List_option ul li:last-child {
	margin-right: 0; /* 마지막 li의 우측 여백 제거 */
}

.Product_Show_List_option ul li a {
	text-decoration: none;
	color: #333;
	font-size: 18px;
	padding: 10px;
	display: block;
	background-color: #f9f9f9;
	border: 1px solid #ddd;
	border-radius: 5px;
	transition: background-color 0.3s;
	text-align: center;
	width: 99%;
}

.Product_Show_List_option ul li a:hover {
	background-color: #e9e9e9;
}

</style>
<script>
	// 페이지 로드 시 CPU 리스트를 기본적으로 보여줌
	document.addEventListener("DOMContentLoaded", function() {
		showOptions('CPU_Product_list');
	});

	function showOptions(selectedId) {
		// 모든 옵션 리스트를 숨김
		var productLists = document.querySelectorAll('.Product_list');
		productLists.forEach(function(list) {
			list.style.display = 'none';
		});

		// 선택된 카테고리의 옵션만 표시
		var selectedProductList = document.getElementById(selectedId);
		if (selectedProductList) {
			selectedProductList.style.display = 'block';
		}
	}
</script>
</head>
<body class="Product_body">
	<div class="header">
		<header>
			<form action="" method="post" name="indexForm" id="indexForm">
				<div class="Product_main">
					<div class="Search_main">
						<input type="text" placeholder="상품을 검색해주세요" name="Product_search"
							id="Product_search">
						<button type="submit">
							<span>검색</span>
						</button>
					</div>
					<div class="Product">
						<div class="Product_Kategorie">
							<ul>
								<li><a href="#" onclick="showOptions('CPU_Product_list')">CPU</a></li>
								<li><a href="#"
									onclick="showOptions('COOLER_Product_list')">쿨러</a></li>
								<li><a href="#"
									onclick="showOptions('MainBoard_Product_list')">메인보드</a></li>
								<li><a href="#" onclick="showOptions('REM_Product_list')">메모리</a></li>
								<li><a href="#" onclick="showOptions('GPU_Product_list')">그래픽카드</a></li>
								<li><a href="#" onclick="showOptions('SSD_Product_list')">SSD</a></li>
								<li><a href="#" onclick="showOptions('HDD_Product_list')">HDD</a></li>
								<li><a href="#" onclick="showOptions('CASE_Product_list')">케이스</a></li>
								<li><a href="#" onclick="showOptions('POWER_Product_list')">파워</a></li>
							</ul>
						</div>
						<div id="CPU_Product_list" class="Product_list"
							style="display: none;">
							<div class="CPU_Option_item">
								<table>
									<tr>
										<th>제조사</th>
										<td><input type="checkbox">인텔</td>
										<td><input type="checkbox">AMD</td>
									</tr>
									<tr>
										<th>인텔CPU종류</th>
										<td><input type="checkbox">코어I9-14세대</td>
										<td><input type="checkbox">코어I7-14세대</td>
										<td><input type="checkbox">코어I5-14세대</td>
										<td><input type="checkbox">코어I3-14세대</td>
									</tr>
									<tr>
										<th>AMD CPU종류</th>
										<td><input type="checkbox">라이젠9-6세대</td>
										<td><input type="checkbox">라이젠7-6세대</td>
										<td><input type="checkbox">라이젠5-6세대</td>
										<td><input type="checkbox">라이젠9-5세대</td>
										<td><input type="checkbox">라이젠7-5세대</td>
									</tr>
								</table>
							</div>
						</div>
						<div id="COOLER_Product_list" class="Product_list"
							style="display: none;">
							<div class="COOLER_Option_item">
								<table>
									<tr>
										<th>제조사</th>
										<td><input type="checkbox">맥스엘리트</td>
										<td><input type="checkbox">PCCOOLER</td>
										<td><input type="checkbox">MSI</td>
										<td><input type="checkbox">EMTEK</td>
										<td><input type="checkbox">darkflash</td>
									</tr>
									<tr>
										<th>제품종류</th>
										<td><input type="checkbox">CPU쿨러</td>
										<td><input type="checkbox">써멀파운트</td>
										<td><input type="checkbox">시스템쿨러</td>
										<td><input type="checkbox">M.2 SSD쿨러</td>
									</tr>
									<tr>
										<th>냉각방식</th>
										<td><input type="checkbox">공랭</td>
										<td><input type="checkbox">수랭</td>
									</tr>
								</table>
							</div>
						</div>
						<div id="MainBoard_Product_list" class="Product_list"
							style="display: none;">
							<div class="MainBoard_Option_item">
								<table>
									<tr>
										<th>제조사</th>
										<td><input type="checkbox">MSI</td>
										<td><input type="checkbox">ASUS</td>
										<td><input type="checkbox">ASRock</td>
										<td><input type="checkbox">GIGABYTE</td>
										<td><input type="checkbox">ECS</td>
									</tr>
									<tr>
										<th>제품분류</th>
										<td><input type="checkbox">인텔 CPU용</td>
										<td><input type="checkbox">AMD CPU용</td>
										<td><input type="checkbox">임베디드</td>
									</tr>
									<tr>
										<th>CPU소캣</th>
										<td><input type="checkbox">인텔(소켓1700)</td>
										<td><input type="checkbox">인텔(소켓1200)</td>
										<td><input type="checkbox">AMD(소켓AM5)</td>
										<td><input type="checkbox">AMD(소켓AM4)</td>
										<td><input type="checkbox">AMD(소켓sTRX4)</td>
									</tr>
								</table>
							</div>
						</div>
						<div id="REM_Product_list" class="Product_list"
							style="display: none;">
							<div class="REM_Option_item">
								<table>
									<tr>
										<th>제조사</th>
										<td><input type="checkbox">삼성전자</td>
										<td><input type="checkbox">마이크론</td>
										<td><input type="checkbox">SK하이닉스</td>
										<td><input type="checkbox">G.SKILL</td>
										<td><input type="checkbox">TeamGroup</td>
									</tr>
									<tr>
										<th>제품분류</th>
										<td><input type="checkbox">DDR5</td>
										<td><input type="checkbox">DDR4</td>
										<td><input type="checkbox">DDR3</td>
										<td><input type="checkbox">DDR2</td>
									</tr>
									<tr>
										<th>메모리용량</th>
										<td><input type="checkbox">64GB</td>
										<td><input type="checkbox">32GB</td>
										<td><input type="checkbox">16GB</td>
										<td><input type="checkbox">8GB</td>
										<td><input type="checkbox">4GB</td>
									</tr>
								</table>
							</div>
						</div>
						<div id="GPU_Product_list" class="Product_list"
							style="display: none;">
							<div class="GPU_Option_item">
								<table>
									<tr>
										<th>제조사</th>
										<td><input type="checkbox">MSI</td>
										<td><input type="checkbox">EMTEK</td>
										<td><input type="checkbox">ASUS</td>
										<td><input type="checkbox">COLORFUL</td>
										<td><input type="checkbox">ZOTAC</td>
										<td><input type="checkbox">GALAXY</td>
										<td><input type="checkbox">GIGABYTE</td>
									</tr>
									<tr>
										<th>칩셋 제조사</th>
										<td><input type="checkbox">NVIDIA</td>
										<td><input type="checkbox">AMD(ATi)</td>
										<td><input type="checkbox">Intel</td>
										<td><input type="checkbox">Matrox</td>
										<td><input type="checkbox">FuriosaAI</td>
									</tr>
									<tr>
										<th>칩셋</th>
										<td><input type="checkbox">RTX</td>
										<td><input type="checkbox">GTX</td>
										<td><input type="checkbox">GT</td>
										<td><input type="checkbox">RX</td>
										<td><input type="checkbox">W</td>
										<td><input type="checkbox">ARC</td>
									</tr>
								</table>
							</div>
						</div>
						<div id="SSD_Product_list" class="Product_list"
							style="display: none;">
							<div class="SSD_Option_item">
								<table>
									<tr>
										<th>제조사</th>
										<td><input type="checkbox">삼성전자</td>
										<td><input type="checkbox">SK하이닉스</td>
										<td><input type="checkbox">마이크론</td>
										<td><input type="checkbox">Western Digital</td>
										<td><input type="checkbox">Seagate</td>
									</tr>
									<tr>
										<th>폼팩터</th>
										<td><input type="checkbox">M.2(2280)</td>
										<td><input type="checkbox">6.4cm(2.5형)</td>
										<td><input type="checkbox">M.2(2230)</td>
										<td><input type="checkbox">M.2(2242)</td>
										<td><input type="checkbox">Mini SATA(mSATA)</td>
									</tr>
									<tr>
										<th>용량</th>
										<td><input type="checkbox">4TB~3TB</td>
										<td><input type="checkbox">2TB~1.1TB</td>
										<td><input type="checkbox">1TB~600GB</td>
										<td><input type="checkbox">525GB~270GB</td>
										<td><input type="checkbox">256GB~130GB</td>
									</tr>
								</table>
							</div>
						</div>
						<div id="HDD_Product_list" class="Product_list"
							style="display: none;">
							<div class="HDD_Option_item">
								<table>
									<tr>
										<th>제조사</th>
										<td><input type="checkbox">Western Digital</td>
										<td><input type="checkbox">Seagate</td>
										<td><input type="checkbox">도시바</td>
										<td><input type="checkbox">CENTURY</td>
										<td><input type="checkbox">DELL</td>
									</tr>
									<tr>
										<th>디스크 크기</th>
										<td><input type="checkbox">8.9cm(3.5인치)</td>
										<td><input type="checkbox">6.4cm(2.5인치)</td>
										<td><input type="checkbox">4.6cm(1.8인치)</td>
									</tr>
									<tr>
										<th>용량</th>
										<td><input type="checkbox">8TB</td>
										<td><input type="checkbox">4TB</td>
										<td><input type="checkbox">3TB</td>
										<td><input type="checkbox">2TB</td>
										<td><input type="checkbox">1TB</td>
									</tr>
								</table>
							</div>
						</div>
						<div id="CASE_Product_list" class="Product_list"
							style="display: none;">
							<div class="CASE_Option_item">
								<table>
									<tr>
										<th>제조사</th>
										<td><input type="checkbox">앱코</td>
										<td><input type="checkbox">darkFlash</td>
										<td><input type="checkbox">마이크로닉스</td>
										<td><input type="checkbox">아이구주</td>
										<td><input type="checkbox">COX</td>
									</tr>
									<tr>
										<th>제품분류</th>
										<td><input type="checkbox">PC케이스(ATX)</td>
										<td><input type="checkbox">PC케이스(M-ATX)</td>
										<td><input type="checkbox">미니ITX</td>
										<td><input type="checkbox">HTPC케이스</td>
										<td><input type="checkbox">튜닝케이스</td>
									</tr>
									<tr>
										<th>케이스크기</th>
										<td><input type="checkbox">빅타워</td>
										<td><input type="checkbox">미들타워</td>
										<td><input type="checkbox">미니타워</td>
										<td><input type="checkbox">미니타워(LP)</td>
										<td><input type="checkbox">미니ITX(리를밸리)</td>
									</tr>
								</table>
							</div>
						</div>
						<div id="POWER_Product_list" class="Product_list"
							style="display: none;">
							<div class="POWER_Option_item">
								<table>
									<tr>
										<th>제조사</th>
										<td><input type="checkbox">시소닉</td>
										<td><input type="checkbox">앱코</td>
										<td><input type="checkbox">MSI</td>
										<td><input type="checkbox">마이크로닉스</td>
										<td><input type="checkbox">맥스엘리트</td>
									</tr>
									<tr>
										<th>정격출력</th>
										<td><input type="checkbox">1000W~1299W</td>
										<td><input type="checkbox">900W~999W</td>
										<td><input type="checkbox">800W~899W</td>
										<td><input type="checkbox">700W~799W</td>
										<td><input type="checkbox">600W~699W</td>
									</tr>
									<tr>
										<th>80PLUS인증</th>
										<td><input type="checkbox">80 PLUS 티타늄</td>
										<td><input type="checkbox">80 PLUS 플래티넘</td>
										<td><input type="checkbox">80 PLUS 골드</td>
										<td><input type="checkbox">80 PLUS 실버</td>
										<td><input type="checkbox">80 PLUS 브론즈</td>
									</tr>
								</table>
							</div>
						</div>
					</div>
				</div>
			</form>
		</header>
	</div>
	<div class="section">
		<section>
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
		</section>
	</div>
</body>
</html>