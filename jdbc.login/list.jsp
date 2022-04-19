<%@page import="java.sql.*"%> <%-- * 을 입력함으로서 sql문 전부다 임포트함 --%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
%>

	<%
	//1. jdbc driver을 로드한다.
	Class.forName("org.mariadb.jdbc.Driver");
	
	//2. db와의 연결(connection)을 생성한다.
	String url ="jdbc:mariadb://localhost:3306/choijiwoo";
	String user ="jiwoo";
	String passwd ="1111";
	Connection con = DriverManager.getConnection(url,user,passwd);
	
	//3. 연결 후 그 통로를 통해 sql문을 실행시킨다.
	String sql = "select * from login";
	Statement stmt = con.createStatement();
	
	//4. SQL 실행
	ResultSet rs = stmt.executeQuery(sql);
	%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>DB연동</title>
	
</head>
<body>
<h2>회원 목록</h2>
	<table border = "1">
			
			<tr>
				<th>id</th>
				<th>이름</th>
				<th>비밀번호</th>
				<th>이메일</th>
				<th>성별</th>
				
			</tr>
			<tr>
	
<% 
	//5. 봔환된 데이터 출력
	while(rs.next()){
		String id = rs.getString("id");
		String name = rs.getString("name");
		String pwd = rs.getString("pwd");
		String email = rs.getString("email");
		String gender = rs.getString("gender");
		
	
%>
				<td><a href='updateForm.jsp?id=<%=id %>'><%=id %></a></td>
				<td><%=name %></td>
				<td><%=pwd %></td>
				<td><%=email %></td>
				<td><%=gender %></td>
				
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