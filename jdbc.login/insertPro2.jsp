<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>    
    
<%
	 //한글처리
   request.setCharacterEncoding("UTF-8"); //method=post 가 잘 작동하게함
   //웹 브라우저에서 전달한 정보
   
   String name = request.getParameter("name"); 
   String title = request.getParameter("title");
   String content = request.getParameter("content");

   
   //1. 드라이버 로드
   	Class.forName("org.mariadb.jdbc.Driver");

   //2. 커넥션 연결
   	String url ="jdbc:mariadb://localhost:3306/choijiwoo";
  	String user ="jiwoo";
  	String passwd ="1111";
	  Connection con = DriverManager.getConnection(url,user,passwd);
	  
	 // pk 설정하기
	  int id=0;

		String sql="select max(id) from board";
		PreparedStatement pstmt=con.prepareStatement(sql);
		ResultSet rs=pstmt.executeQuery();

		if(rs.next()){
			id=rs.getInt("max(id)")+1;
		} 
   //3. SQL문 준비
    //String sql  = "insert into login(id, pwd) values('"+id+"',' "+pwd+"')";
    sql = "insert into board(id,name,title,content) values(?,?,?,?)";
   
   //4. SQL문 실행
    //Statement stmt = con.createStatement();
    pstmt = con.prepareStatement(sql);
    pstmt.setInt(1, id);
    pstmt.setString(2, name);
    pstmt.setString(3, title);
    pstmt.setString(4, content);
   
    
       
    int i = pstmt.executeUpdate();
   
   //5. 객체 해제
   pstmt.close();
   con.close();
   
   response.sendRedirect("mainindex.jsp");
%>
