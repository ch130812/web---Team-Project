<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원등록</title>
</head>
<body>
    <h2>회원등록</h2>
    <form name="Login" action="insertPro.jsp" method="post">
          아이디 : <input type="text" name="id"><br>
          이름 :  <input type="text" name="name"><br>    
          암호 : <input type = "password" name="pwd"><br>
          이메일 : <input type = "text" name="email"><br>      
          남<input type = "checkbox" name = "gender" value = "남"> 
		 여<input type = "checkbox" name = "gender" value = "여"><br>
             
          
    <input type="submit" value="확인"> <%-- value가 그것의 텍스트 --%>
    </form>

</body>
</html>