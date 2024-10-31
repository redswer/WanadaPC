<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<title>컴퓨터 부품 선택</title>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>

<Style>
.Product_body {
	font-family: Arial, sans-serif;
	width: 1260px;
	margin: 0 auto;
	margin-top: 10px;
	background-color: #f9f9f9;
}

.Product_main {
	width: 80%;
	margin: 0 auto;
	padding: 20px;
}

.Product_Kategorie ul {
	list-style-type: none;
	padding: 0;
	display: flex;
	width: 100%;
	border: 1px solid #ccc; /* ul에 테두리 적용 */
	border-radius: 5px; /* ul의 전체 모서리 둥글게 */
	overflow: hidden; /* 테두리 둥근 모서리 안에서 li 요소가 넘치지 않도록 설정 */
}

.Product_Kategorie ul li {
	flex: 1;
	padding: 10px;
	text-align: center;
	background-color: #f4f4f4;
	cursor: pointer;
	border-left: 1px solid #ccc; /* li 간의 경계선을 만듦 */
}

.Product_Kategorie ul li:first-child {
	border-left: none; /* 첫 번째 li의 왼쪽 경계선 제거 */
}

.Product_Kategorie ul li:hover {
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
}

.Product_list table {
	width: 100%;
	border-collapse: collapse;
}

.Product_list th {
	background-color: #f9f9f9;
	font-weight: bold;
	padding: 10px;
	border-bottom: 1px solid #ddd;
	width: 150px;
}

.Product_list td {
	padding: 10px;
	border-bottom: 1px solid #ddd;
	background-color: #d0d0d0;
}

.Product_Show {
	margin: 0 auto;
}

.Product_Show_List {
	width: 81.5%;
	margin: 20px auto 0;
	padding: 10px;
	background-color: #f9f9f9;
	border: 1px solid #ddd;
	border-radius: 5px;
}

.Product_Show_List table {
	width: 100%;
	border-collapse: collapse;
}

.Product_Show_List th, .Product_Show_List td {
	padding: 9px;
	border-bottom: 1px solid #ddd;
	text-align: left;
}

.Product_Show_List th {
	background-color: #f0f0f0;
}

.Product_Show_List td {
	vertical-align: middle;
	background-color: #d0d0d0;
}

.Product_Show_List img {
	width: 50px;
	height: auto;
}

.Product_Show_List_option ul {
	list-style-type: none;
	padding: 0;
	display: flex;
	justify-content: space-between;
}

.Product_Show_List_option ul li a {
	text-decoration: none;
	color: #333;
	font-size: 18px;
	padding: 10px;
	background-color: #f9f9f9;
	border: 1px solid #ddd;
	border-radius: 5px;
	transition: background-color 0.3s;
	text-align: center;
	display: block;
}

.Product_Show_List_option ul li a:hover {
	background-color: #e9e9e9;
}
</Style>
</head>
<body class="Product_body">
	<%@ include file="/Util/header.jsp"%>
	<div class="header">
		<header>
			<div class="Product_main">
				<div class="Search_main">
					<input type="text" placeholder="상품을 검색해주세요" name="Product_search"
						id="Product_search">
					<button type="submit">
						<span>검색</span>
					</button>
				</div>
				<div class="Product">
					<!-- 큰 카테고리 선택 -->
					<div class="Product_Kategorie">
						<ul id="categoryList">
							<li data-category="CPU_Product_list" class="active">CPU</li>
							<li data-category="Mainboard_Product_list">메인보드</li>
							<li data-category="GPU_Product_list">그래픽카드</li>
							<li data-category="RAM_Product_list">램</li>
							<li data-category="COOLER_Product_list">쿨러</li>
							<li data-category="SSD_Product_list">SSD</li>
							<li data-category="HDD_Product_list">HDD</li>
							<li data-category="CASE_Product_list">케이스</li>
							<li data-category="POWER_Product_list">파워</li>
						</ul>
					</div>
					<!-- CPU 옵션 -->
					<div id="CPU_Product_list" class="Product_list">

						<form id="CPUForm">
							<table>
								<tr>
									<th>제조사</th>
									<td><input type="checkbox" name="MAKER_CPU" value="Intel">인텔</td>
									<td colspan="2"><input type="checkbox" name="MAKER_CPU"
										value="AMD">AMD</td>
								</tr>
								<tr>
									<th>인텔 CPU 종류</th>
									<td><input type="checkbox" name="Intel_Cpu"
										value="Core_i9">코어 i9</td>
									<td><input type="checkbox" name="Intel_Cpu"
										value="Core_i7">코어 i7</td>
									<td><input type="checkbox" name="Intel_Cpu"
										value="Core_i5">코어 i5</td>
								</tr>
								<tr>
									<th>AMD CPU 종류</th>
									<td><input type="checkbox" name="Ryzen_Cpu"
										value="Ryzen_9">라이젠 9</td>
									<td><input type="checkbox" name="Ryzen_Cpu"
										value="Ryzen_7">라이젠 7</td>
									<td><input type="checkbox" name="Ryzen_Cpu"
										value="Ryzen_5">라이젠 5</td>
								</tr>
							</table>
						</form>
					</div>

					<!-- Mainboard 옵션 -->
					<div id="Mainboard_Product_list" class="Product_list">

						<form id="MainboardForm">
							<table>
								<tr>
									<th>제조사</th>
									<td><input type="checkbox" name="MAKER_MainBoard"
										value="MSI">MSI</td>
									<td><input type="checkbox" name="MAKER_MainBoard"
										value="ASUS">ASUS</td>
									<td><input type="checkbox" name="MAKER_MainBoard"
										value="ASRock">ASRock</td>
									<td><input type="checkbox" name="MAKER_MainBoard"
										value="GIGABYTE">GIGABYTE</td>
									<td><input type="checkbox" name="MAKER_MainBoard"
										value="ECS">ECS</td>
								</tr>
								<tr>
									<th>제품분류</th>
									<td><input type="checkbox" name="TYPE_MainBoard"
										value="Intel_Socket">인텔 CPU용</td>
									<td><input type="checkbox" name="TYPE_MainBoard"
										value="AMD_Socket">AMD CPU용</td>
									<td colspan="3"><input type="checkbox"
										name="TYPE_MainBoard" value="Embedded">임베디드</td>
								</tr>
								<tr>
									<th>CPU소캣</th>
									<td><input type="checkbox" name="SOCKET_MainBoard"
										value="Intel_1700">인텔(소켓1700)</td>
									<td><input type="checkbox" name="SOCKET_MainBoard"
										value="Intel_1200">인텔(소켓1200)</td>
									<td><input type="checkbox" name="SOCKET_MainBoard"
										value="AMD_AM5">AMD(소켓AM5)</td>
									<td><input type="checkbox" name="SOCKET_MainBoard"
										value="AMD_AM4">AMD(소켓AM4)</td>
									<td><input type="checkbox" name="SOCKET_MainBoard"
										value="AMD_sTRX4">AMD(소켓sTRX4)</td>
								</tr>
							</table>
						</form>
					</div>

					<!-- GPU 옵션 -->
					<div id="GPU_Product_list" class="Product_list">

						<form id="GPUForm">
							<table>
								<tr>
									<th>제조사</th>
									<td><input type="checkbox" name="MAKER_GPU" value="MSI">MSI</td>
									<td><input type="checkbox" name="MAKER_GPU" value="EMTEK">EMTEK</td>
									<td><input type="checkbox" name="MAKER_GPU" value="ASUS">ASUS</td>
									<td><input type="checkbox" name="MAKER_GPU"
										value="COLORFUL">COLORFUL</td>
									<td><input type="checkbox" name="MAKER_GPU" value="ZOTAC">ZOTAC</td>
									<td><input type="checkbox" name="MAKER_GPU" value="GALAXY">GALAXY</td>
									<td><input type="checkbox" name="MAKER_GPU"
										value="GIGABYTE">GIGABYTE</td>
								</tr>
								<tr>
									<th>칩셋 제조사</th>
									<td><input type="checkbox" name="CHIPSET_GPU"
										value="NVIDIA">NVIDIA</td>
									<td><input type="checkbox" name="CHIPSET_GPU" value="AMD">AMD(ATi)</td>
									<td><input type="checkbox" name="CHIPSET_GPU"
										value="Intel">Intel</td>
									<td><input type="checkbox" name="CHIPSET_GPU"
										value="Matrox">Matrox</td>
									<td colspan="3"><input type="checkbox" name="CHIPSET_GPU"
										value="FuriosaAI">FuriosaAI</td>
								</tr>
								<tr>
									<th>칩셋</th>
									<td><input type="checkbox" name="TYPE_GPU" value="RTX">RTX</td>
									<td><input type="checkbox" name="TYPE_GPU" value="GTX">GTX</td>
									<td><input type="checkbox" name="TYPE_GPU" value="GT">GT</td>
									<td><input type="checkbox" name="TYPE_GPU" value="RX">RX</td>
									<td><input type="checkbox" name="TYPE_GPU" value="W">W</td>
									<td colspan="2"><input type="checkbox" name="TYPE_GPU"
										value="ARC">ARC</td>
								</tr>
							</table>
						</form>
					</div>

					<!-- RAM 옵션 -->
					<div id="RAM_Product_list" class="Product_list">
						<form id="RAMForm">
							<table>
								<tr>
									<th>제조사</th>
									<td><input type="checkbox" name="MAKER_REM"
										value="Samsung">삼성전자</td>
									<td><input type="checkbox" name="MAKER_REM" value="Micron">마이크론</td>
									<td><input type="checkbox" name="MAKER_REM"
										value="SK_Hynix">SK하이닉스</td>
									<td><input type="checkbox" name="MAKER_REM"
										value="G.SKILL">G.SKILL</td>
									<td><input type="checkbox" name="MAKER_REM"
										value="TeamGroup">TeamGroup</td>
								</tr>
								<tr>
									<th>제품분류</th>
									<td><input type="checkbox" name="TYPE_REM" value="DDR5">DDR5</td>
									<td><input type="checkbox" name="TYPE_REM" value="DDR4">DDR4</td>
									<td><input type="checkbox" name="TYPE_REM" value="DDR3">DDR3</td>
									<td colspan="2"><input type="checkbox" name="TYPE_REM"
										value="DDR2">DDR2</td>
								</tr>
								<tr>
									<th>메모리용량</th>
									<td><input type="checkbox" name="CAPACITY_REM"
										value="64GB">64GB</td>
									<td><input type="checkbox" name="CAPACITY_REM"
										value="32GB">32GB</td>
									<td><input type="checkbox" name="CAPACITY_REM"
										value="16GB">16GB</td>
									<td><input type="checkbox" name="CAPACITY_REM" value="8GB">8GB</td>
									<td><input type="checkbox" name="CAPACITY_REM" value="4GB">4GB</td>
								</tr>
							</table>
						</form>
					</div>

					<!-- COOLER 옵션 -->
					<div id="COOLER_Product_list" class="Product_list">

						<form id="CoolerForm">
							<table>
								<tr>
									<th>제조사</th>
									<td><input type="checkbox" name="MAKER_COOLER"
										value="MAXELITE">맥스엘리트</td>
									<td><input type="checkbox" name="MAKER_COOLER"
										value="PCCOOLER">PCCOOLER</td>
									<td><input type="checkbox" name="MAKER_COOLER" value="MSI">MSI</td>
									<td><input type="checkbox" name="MAKER_COOLER"
										value="EMTEK">EMTEK</td>
									<td><input type="checkbox" name="MAKER_COOLER"
										value="DARKFLASH">darkflash</td>
								</tr>
								<tr>
									<th>제품종류</th>
									<td><input type="checkbox" name="PRODUCT_TYPE"
										value="CPU_Cooler">CPU쿨러</td>
									<td><input type="checkbox" name="PRODUCT_TYPE"
										value="Thermal_Grease">써멀구리스</td>
									<td><input type="checkbox" name="PRODUCT_TYPE"
										value="System_Cooler">시스템쿨러</td>
									<td colspan="2"><input type="checkbox" name="PRODUCT_TYPE"
										value="M2SSD_Cooler">M.2 SSD쿨러</td>
								</tr>
								<tr>
									<th>냉각방식</th>
									<td><input type="checkbox" name="COOLER_method"
										value="air">공랭</td>
									<td colspan="4"><input type="checkbox"
										name="COOLER_method" value="water">수랭</td>
								</tr>
							</table>
						</form>
					</div>

					<!-- SSD 옵션 -->
					<div id="SSD_Product_list" class="Product_list">

						<form id="SSDForm">
							<table>
								<tr>
									<th>제조사</th>
									<td><input type="checkbox" name="MAKER_SSD"
										value="Samsung">삼성전자</td>
									<td><input type="checkbox" name="MAKER_SSD"
										value="SK_Hynix">SK하이닉스</td>
									<td><input type="checkbox" name="MAKER_SSD" value="Micron">마이크론</td>
									<td><input type="checkbox" name="MAKER_SSD"
										value="Western_Digital">Western Digital</td>
									<td><input type="checkbox" name="MAKER_SSD"
										value="Seagate">Seagate</td>
								</tr>
								<tr>
									<th>폼팩터</th>
									<td><input type="checkbox" name="FORM_FACTOR_SSD"
										value="M2_2280">M.2(2280)</td>
									<td><input type="checkbox" name="FORM_FACTOR_SSD"
										value="2_5_inch">6.4cm(2.5형)</td>
									<td><input type="checkbox" name="FORM_FACTOR_SSD"
										value="M2_2230">M.2(2230)</td>
									<td><input type="checkbox" name="FORM_FACTOR_SSD"
										value="M2_2242">M.2(2242)</td>
									<td><input type="checkbox" name="FORM_FACTOR_SSD"
										value="Mini_SATA">Mini SATA(mSATA)</td>
								</tr>
								<tr>
									<th>용량</th>
									<td><input type="checkbox" name="CAPACITY_SSD"
										value="4TB_to_3TB">4TB~3TB</td>
									<td><input type="checkbox" name="CAPACITY_SSD"
										value="2TB_to_1_1TB">2TB~1.1TB</td>
									<td><input type="checkbox" name="CAPACITY_SSD"
										value="1TB_to_600GB">1TB~600GB</td>
									<td><input type="checkbox" name="CAPACITY_SSD"
										value="525GB_to_270GB">525GB~270GB</td>
									<td><input type="checkbox" name="CAPACITY_SSD"
										value="256GB_to_130GB">256GB~130GB</td>
								</tr>
							</table>
						</form>
					</div>

					<!-- HDD 옵션 -->
					<div id="HDD_Product_list" class="Product_list">

						<form id="HDDForm">
							<table>
								<tr>
									<th>제조사</th>
									<td><input type="checkbox" name="MAKER_HDD"
										value="Western_Digital">Western Digital</td>
									<td><input type="checkbox" name="MAKER_HDD"
										value="Seagate">Seagate</td>
									<td><input type="checkbox" name="MAKER_HDD"
										value="Toshiba">도시바</td>
									<td><input type="checkbox" name="MAKER_HDD"
										value="CENTURY">CENTURY</td>
									<td><input type="checkbox" name="MAKER_HDD" value="DELL">DELL</td>
								</tr>
								<tr>
									<th>디스크 크기</th>
									<td><input type="checkbox" name="SIZE_HDD"
										value="3_5_inch">8.9cm(3.5인치)</td>
									<td><input type="checkbox" name="SIZE_HDD"
										value="2_5_inch">6.4cm(2.5인치)</td>
									<td><input type="checkbox" name="SIZE_HDD"
										value="1_8_inch">4.6cm(1.8인치)</td>
									<td></td>
									<td></td>
								</tr>
								<tr>
									<th>용량</th>
									<td><input type="checkbox" name="CAPACITY_HDD" value="8TB">8TB</td>
									<td><input type="checkbox" name="CAPACITY_HDD" value="4TB">4TB</td>
									<td><input type="checkbox" name="CAPACITY_HDD" value="3TB">3TB</td>
									<td><input type="checkbox" name="CAPACITY_HDD" value="2TB">2TB</td>
									<td><input type="checkbox" name="CAPACITY_HDD" value="1TB">1TB</td>
								</tr>
							</table>
						</form>
					</div>

					<!-- CASE 옵션 -->
					<div id="CASE_Product_list" class="Product_list">

						<form id="CaseForm">
							<table>
								<tr>
									<th>제조사</th>
									<td><input type="checkbox" name="MAKER_CASE" value="Abko">앱코</td>
									<td><input type="checkbox" name="MAKER_CASE"
										value="darkFlash">darkFlash</td>
									<td><input type="checkbox" name="MAKER_CASE"
										value="Micronics">마이크로닉스</td>
									<td><input type="checkbox" name="MAKER_CASE" value="Igus">아이구주</td>
									<td><input type="checkbox" name="MAKER_CASE" value="COX">COX</td>
								</tr>
								<tr>
									<th>제품분류</th>
									<td><input type="checkbox" name="TYPE_CASE" value="ATX">PC케이스(ATX)</td>
									<td><input type="checkbox" name="TYPE_CASE" value="MATX">PC케이스(M-ATX)</td>
									<td><input type="checkbox" name="TYPE_CASE"
										value="MiniITX">미니ITX</td>
									<td><input type="checkbox" name="TYPE_CASE" value="HTPC">HTPC케이스</td>
									<td><input type="checkbox" name="TYPE_CASE"
										value="TuningCase">튜닝케이스</td>
								</tr>
								<tr>
									<th>케이스크기</th>
									<td><input type="checkbox" name="SIZE_CASE"
										value="BigTower">빅타워</td>
									<td><input type="checkbox" name="SIZE_CASE"
										value="MidTower">미들타워</td>
									<td><input type="checkbox" name="SIZE_CASE"
										value="MiniTower">미니타워</td>
									<td><input type="checkbox" name="SIZE_CASE"
										value="MiniTowerLP">미니타워(LP)</td>
									<td><input type="checkbox" name="SIZE_CASE"
										value="MiniITX">미니ITX(리를밸리)</td>
								</tr>
							</table>
						</form>
					</div>

					<!-- POWER 옵션 -->
					<div id="POWER_Product_list" class="Product_list">

						<form id="PowerForm">
							<table>
								<tr>
									<th>제조사</th>
									<td><input type="checkbox" name="MAKER_POWER"
										value="Seasonic">시소닉</td>
									<td><input type="checkbox" name="MAKER_POWER" value="Abko">앱코</td>
									<td><input type="checkbox" name="MAKER_POWER" value="MSI">MSI</td>
									<td><input type="checkbox" name="MAKER_POWER"
										value="Micronics">마이크로닉스</td>
									<td><input type="checkbox" name="MAKER_POWER"
										value="MAXELITE">맥스엘리트</td>
								</tr>
								<tr>
									<th>정격출력</th>
									<td><input type="checkbox" name="OUTPUT_POWER"
										value="1000W_to_1299W">1000W~1299W</td>
									<td><input type="checkbox" name="OUTPUT_POWER"
										value="900W_to_999W">900W~999W</td>
									<td><input type="checkbox" name="OUTPUT_POWER"
										value="800W_to_899W">800W~899W</td>
									<td><input type="checkbox" name="OUTPUT_POWER"
										value="700W_to_799W">700W~799W</td>
									<td><input type="checkbox" name="OUTPUT_POWER"
										value="600W_to_699W">600W~699W</td>
								</tr>
								<tr>
									<th>80PLUS인증</th>
									<td><input type="checkbox" name="CERTIFICATION_POWER"
										value="Titanium">80 PLUS 티타늄</td>
									<td><input type="checkbox" name="CERTIFICATION_POWER"
										value="Platinum">80 PLUS 플래티넘</td>
									<td><input type="checkbox" name="CERTIFICATION_POWER"
										value="Gold">80 PLUS 골드</td>
									<td><input type="checkbox" name="CERTIFICATION_POWER"
										value="Silver">80 PLUS 실버</td>
									<td><input type="checkbox" name="CERTIFICATION_POWER"
										value="Bronze">80 PLUS 브론즈</td>
								</tr>
							</table>
						</form>
					</div>
				</div>
			</div>
		</header>
	</div>
	<div id="productResults">
		<div class="section">
			<section>
				<div class="Product_Show">
					<div class="Product_Show_List">
						<table>
							<tr>
								<th>
									이미지
								</th>
								<th>
									정보
								</th>
								<th>
									가격
								</th>
							</tr>
							<tbody id="product_Result">
								
							</tbody>
						</table>
					</div>
				</div>
			</section>
		</div>
	</div>
	<script>
	
	$(document).ready(function () {
	    // 초기 설정: CPU 카테고리 옵션만 보이도록 설정
	    $('#CPU_Product_list').show();
	    $('.Product_list').not('#CPU_Product_list').hide();
	    loadProducts(); // 초기 로드

	    // 카테고리 클릭 시 해당 옵션만 표시하고 다른 옵션은 체크 해제
	    $('#categoryList li').click(function () {
	        $('#categoryList li').removeClass('active');
	        $(this).addClass('active');
	        const category = $(this).data('category');

	        // 모든 체크박스를 초기화하고, 선택된 카테고리만 보이게 설정
	        $('.Product_list input[type="checkbox"]').prop('checked', false);
	        $('.Product_list').hide();
	        $('#' + category).show();
	        loadProducts(); // 필터 적용하여 제품 목록 로드
	    });
		
	    // 체크박스 변경 시 Ajax로 필터링된 제품 목록 요청
	    $('.Product_list input[type="checkbox"]').change(function () {
	        loadProducts();
	    });
		
	    // 서버로 Ajax 요청을 보내 필터링된 제품 목록을 가져오는 함수
	    function loadProducts() {
	        //console.log("loadProducts");

	        const selectedFilters = {};
			
	        // 각 카테고리의 체크된 값을 가져와서 selectedFilters 객체에 추가
	        $('.Product_list').each(function () {
	            const formId = $(this).attr('id');
	            selectedFilters[formId] = $(this).find('input[type="checkbox"]:checked').map(function () {
	                return $(this).val();
	            }).get();
	        });

	        // RAM 제조사 필터 추가 (예: MAKER_REM 항목)
	        selectedFilters["MAKER_REM"] = $('input[name="MAKER_REM"]:checked').map(function() {
	            return $(this).val();
	        }).get();
	        //console.log(selectedFilters);
			//console.log("Selected Filters (before Ajax):", selectedFilters);
	        let productListHtml = ``;
	        
	        $.ajax({
	            url: "/ProductController",  // 요청 URL 설정
	            type: "POST",
	            data: $.param(selectedFilters),
	            contentType: "application/x-www-form-urlencoded",
	            dataType: "json",
	            
	            success: function (data) {
	            	//console.log(data);
	                //console.log("Selected Filters:", selectedFilters);
	                if (data.length > 0) {
	                    data.forEach(function (product) {
	                    	//console.log(product);
	                    	productListHtml += 
	                    	    "<tr>" +
	                    	        "<th><img src=\"" + product.image + "\" alt=\"" + product.title + "\" width=\"100\" height=\"100\"></th>" +
	                    	        "<td>" + product.title + "</td>" +
	                    	        "<td>가격:" + product.price + "원</td>" +
	                    	    "</tr>";
	                    });
	                } else {
	                    productListHtml = '<p>해당 조건에 맞는 제품이 없습니다.</p>';
	                }
	                
	                // $('#product_Result').html(productListHtml);
	                $('#product_Result').html(productListHtml);
	                // $('tbody').append(productListHtml);
	            },
	            error: function (xhr, status, error) {
	                console.error("Failed to fetch filtered products:", error);
	            }
	        });
	       
	    }
	}); // $(document).ready 닫는 괄호
</script>
	<%@ include file="/Util/footer.jsp"%>
</body>
</html>