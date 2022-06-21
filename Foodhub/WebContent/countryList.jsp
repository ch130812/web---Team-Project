
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<!-- 화면 최적화 -->
<meta name="viewport" content="width-device-width", initial-scale="1">
<!-- css를 가져오는 링크 -->
<link rel="stylesheet" href="css/bootstrap.css">
 <link rel="stylesheet" href="./css2/style.css">
   <link rel="stylesheet" href="./css2/style_main.css">
<link rel="stylesheet" href="./css2/style_list.css">
    <!--          script 선언          -->
    <script src="https://kit.fontawesome.com/e1bd1cb2a5.js"></script>
    <script src="https://code.jquery.com/jquery-3.4.1.js"></script>

    <script src="./js2/script.js"></script>
<title>Foodhub나라추천</title>
</head>
<body>
<!-- 각종 배너와 같은 중복되는 코드 불러오기 -->
	<jsp:include page="sub.jsp"/>
	
	<div class="container"><br>	
	<h1 class="text-center font-weight-bold">Foodhub 추천 나라</h1>
	<br>
	
	<table class="table table-hover">
		<tr>
			<th></th>
			<th>1. 일본</th>
			<th></th>
			<th></th>
		</tr>
  <tr>
	<td></td>
	<td>	<button type="button" onclick="location.href='japan.jsp'" class="btm_image" id="img_btn"><img src="https://youimg1.tripcdn.com/target/100110000000qfs9mE3E1_C_640_320_R5_Q70.jpg_.webp?proc=source%2Ftrip" style="width:700px; height:400px;"></button>
	</td>
	<td></td>
	<td></td>
	</tr>
	</table>
	
		<table class="table table-hover">
		<tr>
			<th></th>
			<th>2. 프랑스</th>
			<th></th>
			<th></th>
		</tr>
  <tr>
	<td></td>
	<td>	<button type="button" onclick="location.href='japan.jsp'" class="btm_image" id="img_btn"><img src="https://dimg.donga.com/ugc/CDB/SHINDONGA/Article/5e/12/b6/03/5e12b6031b66d2738de6.jpg" style="width:700px; height:400px;"></button>
	</td>
	<td></td>
	<td></td>
	</tr>
	</table>
	
	<table class="table table-hover">
		<tr>
			<th></th>
			<th>3. 베트남</th>
			<th></th>
			<th></th>
		</tr>
  <tr>
	<td></td>
	<td>	<button type="button" onclick="location.href='japan.jsp'" class="btm_image" id="img_btn"><img src="https://www.myprt.online/product_img/vietnam70008.jpg" style="width:700px; height:400px;"></button>
	</td>
	<td></td>
	<td></td>
	</tr>
	</table>
	
	<table class="table table-hover">
		<tr>
			<th></th>
			<th>4. 미국</th>
			<th></th>
			<th></th>
		</tr>
  <tr>
	<td></td>
	<td>	<button type="button" onclick="location.href='japan.jsp'" class="btm_image" id="img_btn"><img src="https://image.kkday.com/v2/image/get/w_960%2Cc_fit%2Cq_55%2Ct_webp/s1.kkday.com/product_36308/20200115025052_2RZeI/jpg" style="width:700px; height:400px;"></button>
	</td>
	<td></td>
	<td></td>
	</tr>
	</table>
</body>
</html>