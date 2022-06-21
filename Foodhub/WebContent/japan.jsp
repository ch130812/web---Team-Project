
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
<title>Foodhub일본</title>
</head>
<body>
<!-- 각종 배너와 같은 중복되는 코드 불러오기 -->
	<jsp:include page="sub.jsp"/>
	
<div class="container"><br>	
	<h1 class="text-center font-weight-bold">일본 추천 음식 베스트</h1>
	<br>
	
	<table class="table table-hover">
		<tr>
			<th></th>
			<th>1. 스시</th>
			<th></th>
			<th></th>
		</tr>
  <tr>
	<td></td>
	<td>	<button type="button" onclick="location.href='sushi.jsp'" class="btm_image" id="img_btn"><img src="https://post-phinf.pstatic.net/MjAxNzEyMDVfNTQg/MDAxNTEyNDM5NjM5OTQ4.pr5XtzsZ6wklgkx66eZckzU2Vv1p_5Fi3F28gkyR-_Mg.6UXV7szJgfejZiN2KQpD4AWSVoXEODx8JvUNZqUw5Ucg.PNG/image001.png?type=w1200" style="width:500px; height:300px;"></button>
	</td>
	<td></td>
	<td></td>
	</tr>
	</table>
	
		<table class="table table-hover">
		<tr>
			<th></th>
			<th>2. 라멘</th>
			<th></th>
			<th></th>
		</tr>
  <tr>
	<td></td>
	<td>	<button type="button" onclick="location.href='japan.jsp'" class="btm_image" id="img_btn"><img src="https://i.ytimg.com/vi/Hf0b_-hVBS4/maxresdefault.jpg" style="width:500px; height:300px;"></button>
	</td>
	<td></td>
	<td></td>
	</tr>
	</table>
	
	<table class="table table-hover">
		<tr>
			<th></th>
			<th>3. 돈까스 </th>
			<th></th>
			<th></th>
		</tr>
  <tr>
	<td></td>
	<td>	<button type="button" onclick="location.href='japan.jsp'" class="btm_image" id="img_btn"><img src="https://mblogthumb-phinf.pstatic.net/20151011_143/gone2071_14445502579068pl4q_JPEG/%B5%B7%B1%EE%BD%BA4.jpg?type=w2" style="width:500px; height:300px;"></button>
	</td>
	<td></td>
	<td></td>
	</tr>
	</table>
	
	<table class="table table-hover">
		<tr>
			<th></th>
			<th>4. 타코야끼</th>
			<th></th>
			<th></th>
		</tr>
  <tr>
	<td></td>
	<td>	<button type="button" onclick="location.href='japan.jsp'" class="btm_image" id="img_btn"><img src="https://image-se.ycrowdy.com/20210930/CROWDY_0_202109301326420203_RGrD8eEb7X.png" style="width:500px; height:300px;"></button>
	</td>
	<td></td>
	<td></td>
	</tr>
	</table>
</body>
</html>