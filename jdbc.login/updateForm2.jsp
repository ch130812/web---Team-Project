<%@page import="java.sql.*"%> <%-- * 을 입력함으로서 sql문 전부다 임포트함 --%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
%>

	<%
	String id = request.getParameter("id");
	//1. jdbc driver을 로드한다.
	Class.forName("org.mariadb.jdbc.Driver");
	
	//2. db와의 연결(connection)을 생성한다.
	String url ="jdbc:mariadb://localhost:3306/choijiwoo";
	String user ="jiwoo";
	String passwd ="1111";
	Connection con = DriverManager.getConnection(url,user,passwd);
	
	//3. 연결 후 그 통로를 통해 sql문을 실행시킨다.
	String sql = "select * from board where id=?";
	PreparedStatement pstmt=con.prepareStatement(sql);
	pstmt.setString(1,id);
	
	//4. SQL 실행
	ResultSet rs = pstmt.executeQuery();
	
	String name ="";
	String title ="";
	String content ="";
	
	
	
	
	//5. 반환된 데이터 출력
	while(rs.next()){
		name = rs.getString("name");
		title = rs.getString("title");
		content = rs.getString("content");
		
		
	}
	
	rs.close();
	pstmt.close();
	con.close();
	%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>게시글 수정</title>
</head>
<body>
	<h2>게시글 수정</h2>
	<form name="Board" action="updatePro2.jsp" method="post">
	<input type="hidden" name="id" value=<%=id %>><br>
	이름: <input type="text" name="name" value=<%=name %>><br>
	제목: <input type="text" name="title" value=<%=title %>><br>
	내용 : <input type = "text" name="content" value=<%=content %>><br>
	<input type="submit" value="변경저장">
	<button type="button" onclick="location.href='mainIndex.jsp'">목록조회</button>
	</form>
	
	<form name="login2" action="deletePro2.jsp" method="post">
	<input type="hidden" name="id" value=<%=id %>><br>	
	<input type="submit" value="게시글삭제">
	</form>
	
</body>
</html>	