<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.io.PrintWriter" %>
<%@ page import="bbs.BbsDAO2" %>
<%@ page import="bbs.Bbs2" %>
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
<title>Foodhub오반스시</title>
</head>
<body>
<!-- 각종 배너와 같은 중복되는 코드 불러오기 -->
	<jsp:include page="sub.jsp"/>
	
	<div class="container"><br>	
	<h2 class="text-center font-weight-bold">오반 스시 본점</h2>
	<br>
	<table class="table table-hover">
		<tr>
			<th><img src="https://rimage.gnst.jp/livejapan.com/public/article/detail/a/00/02/a0002065/img/ko/a0002065_parts_5bc69f064382a.jpg?20200227174504&q=80&rw=686&rh=490" style="width:275px; height:250px;">
			<img src="https://savorjapan.com/gg/content_image/t0117_002_20180822085836.jpg" style="width:400px; height:250px;">
			<img src="	https://livejapan.com/public/operation/spot/theme/shinjuku-sushi/img/main1.jpg
                  " style="width:350px; height:250px;">
                </th>
			<th></th>
			<th></th>
		</tr>
  <tr>
	
	</tr>
	</table>
	<br><br>
	
	
		<table class="table table-hover">
		<tr>
			<th>맛집 소개</th>
			<th> </th>
			<th></th>
			<th></th>
		</tr>
  <tr>
	<td><img src="https://rimage.gnst.jp/livejapan.com/public/article/detail/a/00/02/a0002065/img/ko/a0002065_parts_5bc69ef9a6711.jpg?20200227174504&q=80" style="width:350px; height:200px;"></td>
	<td>일본 유수의 유흥가로 알려진 [신주쿠.가부키초]의 중심지에 위치한 맛집으로 <br> 저렴한 가격에 다양한 스시를 맛볼수 있는 가성비 갑 맛집입니다. <br> <br> 영업시간 : AM 11:00 ~ AM 06:00</td>
	<td></td>
	</tr>
	</table>
	
	<table class="table table-hover">
		<tr>
			<th>대표 메뉴</th>
			<th> </th>
			<th></th>
			<th></th>
		</tr>
  <tr>
	<td><img src="https://rimage.gnst.jp/livejapan.com/public/article/detail/a/00/02/a0002065/img/ko/a0002065_parts_5bc69f3bab520.jpg?20200227174504&q=80" style="width:350px; height:200px;"></td>
	<td>800엔으로 니기리스시를 즐길 수 있는 [서비스 런치] <br>왼쪽 위부터 참치, 오징어, 연어, 참치, 넙치, 참치. 왼쪽 아래부터 새우, 달걀, 다랑어 김초밥. <br><br> 가격 : 800엔 (8000원)</td>
	<td></td>
	</tr>
	</table>
	
	
	<table class="table table-hover">
		<tr>
			<th>지도</th>
			<th>상세 주소</th>
			<th></th>
			<th></th>
		</tr>
  <tr>
	<td><img src="./img/oban.jpg" style="width:280px; height:240px;"></td>
	<td>도쿄 신주쿠 골든가 G1 세븐일레븐 신주쿠  관청거리점 앞</td>
	<td></td>
	<td></td>
	</tr>
	</table>
	<!-- 게시판 메인 페이지 영역 시작 -->
	<%
	int pageNumber = 1; //기본은 1 페이지를 할당
	// 만약 파라미터로 넘어온 오브젝트 타입 'pageNumber'가 존재한다면
	// 'int'타입으로 캐스팅을 해주고 그 값을 'pageNumber'변수에 저장한다
	if(request.getParameter("pageNumber") != null){
		pageNumber = Integer.parseInt(request.getParameter("pageNumber"));
	}
	%>
	<div class="container">
		<div class="row">
			<table class="table table-striped" style="text-align: center; border: 1px solid #dddddd">
				<thead>
					<tr>
						<th style="background-color: #eeeeee; text-align: center;">번호</th>
						<th style="background-color: #eeeeee; text-align: center;">제목</th>
						<th style="background-color: #eeeeee; text-align: center;">작성자</th>
						<th style="background-color: #eeeeee; text-align: center;">작성일</th>
					</tr>
				</thead>
				<tbody>
					<%
						BbsDAO2 bbsDAO = new BbsDAO2(); // 인스턴스 생성
						ArrayList<Bbs2> list = bbsDAO.getList(pageNumber);
						for(int i = 0; i < list.size(); i++){
					%>
					<tr>
						<td><%= list.get(i).getBbsId() %></td>
						<!-- 게시글 제목을 누르면 해당 글을 볼 수 있도록 링크를 걸어둔다 -->
						<td><a href="view2.jsp?bbsID=<%= list.get(i).getBbsId() %>">
						<u>	<%= list.get(i).getBbsTitle() %></a></td><u>
						<td><%= list.get(i).getUserId() %></td>
						<td><%= list.get(i).getBbsDate().substring(0, 11) + list.get(i).getBbsDate().substring(11, 13) + "시"
							+ list.get(i).getBbsDate().substring(14, 16) + "분" %></td>
					</tr>
					<%
						}
					%>
				</tbody>
			</table>
			
		
			
			<!-- 글쓰기 버튼 생성 -->
			<a href="write2.jsp" class="btn btn-primary pull-right">글쓰기</a>
		</div>
	</div>
	<!-- 게시판 메인 페이지 영역 끝 -->

</body>
</html>