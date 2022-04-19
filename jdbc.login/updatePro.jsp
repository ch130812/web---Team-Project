<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>    
    
<%
	 //한글처리
   request.setCharacterEncoding("UTF-8"); //method=post 가 잘 작동하게함
   //웹 브라우저에서 전달한 정보
   String id = request.getParameter("id"); 
   String name = request.getParameter("name");
   String pwd = request.getParameter("pwd");
   String email = request.getParameter("email");
   
   
   
   //1. 드라이버 로드
   	Class.forName("org.mariadb.jdbc.Driver");

   //2. 커넥션 연결
   	String url ="jdbc:mariadb://localhost:3306/choijiwoo";
  	String user ="jiwoo";
  	String passwd ="1111";
	  Connection con = DriverManager.getConnection(url,user,passwd);
	  
   //3. SQL문 준비
    //String sql  = "insert into login(id, pwd) values('"+id+"',' "+pwd+"')";
    String sql = "update login set name=?, pwd=?, email=? where id=?";
   
   //4. SQL문 실행
    //Statement stmt = con.createStatement();
    PreparedStatement pstmt = con.prepareStatement(sql);
    pstmt.setString(1, name);
    pstmt.setString(2, pwd);
    pstmt.setString(3, email);
    pstmt.setString(4, id);
    
    
   
    
    int i = pstmt.executeUpdate();
   
   //5. 객체 해제
   pstmt.close();
   con.close();
   
   response.sendRedirect("list.jsp");
%>
