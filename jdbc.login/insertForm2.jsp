<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시글 등록</title>
</head>
<body>
    <h2>게시글 등록</h2>
    <form name="Board" action="insertPro2.jsp" method="post">
        
          이름 : <input type="text" name="name" style="width:200px;"><br>
          제목 :  <input type="text" name="title" style="width:300px;"><br>    
          내용 : <input type = "text" name="content" style="width:1000px;"><br>
          
       
          
    <input type="submit" value="확인"> 
    </form>

</body>
</html>