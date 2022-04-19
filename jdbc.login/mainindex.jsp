<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<%

	//1. jdbc driver을 로드한다.
	Class.forName("org.mariadb.jdbc.Driver");
	
	//2. db와의 연결(connection)을 생성한다.
	String url ="jdbc:mariadb://localhost:3306/choijiwoo";
	String user ="jiwoo";
	String passwd ="1111";
	Connection con = DriverManager.getConnection(url,user,passwd);
	
	//3. 연결 후 그 통로를 통해 sql문을 실행시킨다.
	String sql = "select * from board";
	Statement stmt = con.createStatement();
	
	//4. SQL 실행
	ResultSet rs = stmt.executeQuery(sql);
	%>
<!DOCTYPE html>
<html>

<head>
  <title>Bootstrap 4 Website Example</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">
  <script src="https://cdn.jsdelivr.net/npm/jquery@3.6.0/dist/jquery.slim.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script>
  <style>
  .fakeimg {
    height: 200px;z
    background: #aaa;
  }
  </style>
</head>
<body>

<div class="jumbotron text-center" style="margin-bottom:0">
	<p>전세계 나라별 맛집과 솔직한 리뷰!</p> 
  <h1>Foodhome</h1>
</div>

<nav class="navbar navbar-expand-sm bg-dark navbar-dark">
  
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#collapsibleNavbar">
    <span class="navbar-toggler-icon"></span>
  </button>
  <div class="collapse navbar-collapse" id="collapsibleNavbar">
    <ul class="navbar-nav">
      <li class="nav-item">
         	<button type="button" onclick="location.href='index.jsp'">회원관리</button><br>
      </li>
      <li class="nav-item">
       		<button type="button" onclick="location.href='insertForm2.jsp'">게시글 작성</button>
      </li>
         
    </ul>
  </div>  
</nav>
    <br>
	<table border = "1">
			<col width="60px">
			<col width="200px">
			<col width="300px">
			<col width="1000px">
			<tr> 
			  <th>번호</th>
				<th>작성자</th>
				<th>제목</th>
				<th>내용</th>
				
			</tr>
			<tr>
	
<% 
	//5. 봔환된 데이터 출력
	while(rs.next()){
		String id = rs.getString("id");
		String name = rs.getString("name");
		String title = rs.getString("title");
		String content = rs.getString("content");
	
		
	
%>
				<td><a href='updateForm2.jsp?id=<%=id %>'><%=id %></a></td>
				<td><%=name %></td>
				<td><%=title %></td>
				<td><%=content %></td>
				
			</tr>
	<% } %>		
  </table>	
<%//6. 객체 해지
	rs.close();
	stmt.close();
	con.close();
%>


</body>
</html>