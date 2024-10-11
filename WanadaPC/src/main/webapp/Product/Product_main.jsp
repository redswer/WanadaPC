<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
.Product a {
	text-decoration: none;
	color: black;
}

.Product ul, li {
	list-style: none;
}

.Product_body div {
	display: block;
	unicode-bidi: isolate;
}

.Search_option ul, li {
	float: left;
	padding: 0 20px
}

.Front_Space, .CPU_Product_list {
	display: block;
	width: 100%; /* Ensure they are full-width */
	clear: both; /* Ensure no floating affects them */
}
</style>
</head>
<body class="Product_body">
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
						<li><a href="#">메인보드</a></li>
						<li><a href="#">CPU</a></li>
						<li><a href="#">쿨러</a></li>
						<li><a href="#">메모리</a></li>
						<li><a href="#">그래픽카드</a></li>
						<li><a href="#">SSD</a></li>
						<li><a href="#">HDD</a></li>
						<li><a href="#">케이스</a></li>
						<li><a href="#">파워</a></li>
					</ul>
				</div>
				<div class="CPU_Product_list">
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
				<div class="COOLER_Product_list">
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
				<div class="MainBoard_Product_list">
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
				<div class="REM_Product_list">
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
				<div class="GPU_Product_list">
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
				<div class="SSD_Product_list">
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
				<div class="HDD_Product_list">
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
				<div class="CASE_Product_list">
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
				<div class="POWER_Product_list">
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
			<div class="Product_Show">
			<div class="Product_option">
					<ul>
						<li><a href="#">이름순(오름차순)</a></li>
						<li><a href="#">이름순(내림차순)</a></li>
						<li><a href="#">낮은가격순</a></li>
						<li><a href="#">높은가격순</a></li>
					</ul>
				</div>
			</div>
		</div>
	</form>
</body>
</html>