<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<!-- 화면 최적화 -->
<meta name="viewport" content="width-device-width", initial-scale="1">
<!-- css를 참조하는 링크 -->
<link rel="stylesheet" href="css/bootstrap.css">
 <link rel="stylesheet" href="./css2/style.css">
    <link rel="stylesheet" href="./css2/style_main.css">

    <!--          script 선언          -->
    <script src="https://kit.fontawesome.com/e1bd1cb2a5.js"></script>
    <script src="https://code.jquery.com/jquery-3.4.1.js"></script>

    <script src="./js2/script.js"></script>
   
<title>Foodhub</title>
</head>
<body>
	<!-- 각종 배너와 같은 중복되는 코드 불러오기 -->
	<jsp:include page="sub.jsp"/>
	
	
	<!-- 배너 및 메뉴 영역 -->
	<div class="main_container">
        <div class="conA" >
            <div class="slide img1"></div>
            <div class="slide img2"></div>
            <div class="slide img3"></div>
        </div>
        
        <div class="conB">
             
            <div class="conB_container">
                <div class="conB_small_container">
                    
                    <div class="conB_content" onclick="location.href='countryList.jsp'">
                   
                        <h3>나라별 맛집 추천 받기</h3>
                        <p>restaurant recommendations</p>
                    </div>
                </div>
                <div class="conB_small_container">
                    
                    <div class="conB_content" onclick="location.href='bbs.jsp'">
                        <h3>자유게시판</h3>
                        <p>free board</p>
                    </div>
                </div>
                <div class="conB_small_container">
                    
                    <div class="conB_content" onclick="location.href='login.jsp'">
                        <h3>로그인</h3>
                        <p>log in</p>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <footer>
        <div class="footer_container">
            <div class="footA">
                Foodhub
            </div>
            <div class="footB">
                 전세계 나라별 맛집 추천과 솔직한 리뷰
            </div>
        </div>
    </footer>
</body>
</html>