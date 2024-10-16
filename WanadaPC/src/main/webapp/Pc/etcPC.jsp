<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>가정용 PC 정보</title>
<style type="text/css">
.etcPC_body {
    width: 1260px;
    margin: 0 auto;
    margin-top: 10px;
}

.recommend_product_section {
    display: flex;
    flex-direction: column; /* 세로 방향으로 정렬 */
    gap: 20px; /* 이미지 사이 간격 설정 */
}

.recommend_product_section div {
    display: flex; /* 각 항목을 flex로 설정 */
    justify-content: flex-start; /* 기본적으로 왼쪽 정렬 */
}

.recommend_product_section div:nth-child(even) {
    justify-content: flex-end; /* 짝수 번째 아이템은 오른쪽 정렬 */
}
</style>
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
        	<h3>조립 PC</h3>
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
        </main>
        <footer>
            <%@ include file="/Util/footer.jsp" %>
        </footer>
    </div>
</body>
</html>
