
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
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
<title>Foodhub스시</title>
</head>
<body>
<!-- 각종 배너와 같은 중복되는 코드 불러오기 -->
	<jsp:include page="sub.jsp"/>
	
	<div class="container"><br>	
	<h2 class="text-center font-weight-bold">스시 맛집 추천 베스트</h2>
	<br>
	
	<br><br>
	
	
		<table class="table table-hover">
		<tr>
			<th>1. 오반스시</th>
			<th> </th>
			<th></th>
			<th></th>
		</tr>
  <tr>
	<td><button type="button" onclick="location.href='obanSushi.jsp'" class="btm_image" id="img_btn"><img src="https://rimage.gnst.jp/livejapan.com/public/article/detail/a/00/02/a0002065/img/ko/a0002065_parts_5bc69f064382a.jpg?20200227174504&q=80&rw=686&rh=490" style="width:350px; height:200px;"></td>
	<td>일본 유수의 유흥가로 알려진 [신주쿠.가부키초]의 중심지에 위치한 맛집으로 <br> 저렴한 가격에 다양한 스시를 맛볼수 있는 가성비 갑 맛집입니다. <br> <br> 위치 : 도쿄 신주쿠 <br> <br> 별점 ★4.6 </td>
	<td></td>
	</tr>
	</table>
	
	<table class="table table-hover">
		<tr>
			<th>2. 니지</th>
			<th> </th>
			<th></th>
			<th></th>
		</tr>
  <tr>
	<td><button type="button" onclick="location.href='sushi.jsp'" class="btm_image" id="img_btn"><img src="https://res.cloudinary.com/twenty20/private_images/t_watermark-criss-cross-10/v1525248310000/photosp/d3f279e5-1b45-4c6f-a0e1-1374e85c7eb0/stock-photo-sun-city-food-wood-shopping-sushi-asia-japan-shop-d3f279e5-1b45-4c6f-a0e1-1374e85c7eb0.jpg" style="width:350px; height:200px;"></td>
	<td>일본 오사카의 중심지인 도톤보리 번화가에 고급 스시집으로 50년째 운영중입니다. <br> 고급스시의 정석이라 볼 수 있는 맛집입니다. <br> <br> 위치 : 오사카 도톤보리 <br> <br> 별점 ★4.5 </td>
	<td></td>
	</tr>
	</table>
	
	
	<table class="table table-hover">
		<tr>
			<th>3. 이와모토 고간</th>
			<th> </th>
			<th></th>
			<th></th>
		</tr>
  <tr>
	<td><button type="button" onclick="location.href='sushi.jsp'" class="btm_image" id="img_btn"><img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSpt9DC-Cvdsj44vdv1Oc_K2zZebY6Xny6xEg&usqp=CAU" style="width:350px; height:200px;"></td>
	<td>교토시에 위치한 맛집으로 제철에 알맞는 재료로 오마카세를 맛볼 수 있습니다 <br> 다양한 제철스시를 맛보기에 좋은곳입니다. <br> <br> 위치 : 교토 마호군 <br> <br> 별점 ★4.4 </td>
	<td></td>
	</tr>
	</table>
	
	
	
	<br><br>
</body>
</html>