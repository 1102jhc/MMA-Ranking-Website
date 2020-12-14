<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html lang="en">

<head>

  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">

  <title>JSP WebSite</title>

  <!-- Bootstrap core CSS -->
  <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

  <!-- Custom fonts for this template -->
  <link href="https://fonts.googleapis.com/css?family=Raleway:100,100i,200,200i,300,300i,400,400i,500,500i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">
  <link href="https://fonts.googleapis.com/css?family=Lora:400,400i,700,700i" rel="stylesheet">

  <!-- Custom styles for this template -->
  <link href="css/business-casual.min.css" rel="stylesheet">

</head>

<body>
<%
	
	
	String idt = request.getParameter("idt");
	String passwd = request.getParameter("passwd");
	String name = request.getParameter("name");
	String addr = request.getParameter("addr");
	String tel = request.getParameter("tel");
	Timestamp register = new Timestamp(System.currentTimeMillis());
	String prnM= null;
	
	Connection conn = null;
	PreparedStatement pstmt = null;
	String str = "";
	
	try{
		String driverName = "com.mysql.cj.jdbc.Driver";
		
		String jdbcUrl = "jdbc:mysql://localhost:3306/project?useUnicode=yes&characterEncoding=UTF-8&serverTimezone=UTC";	
		//5.5버전에서는 "jdbc:mysql://localhost:3306/jsptest"만 써도된다.
		
		String dbId="hee";
		String dbPass="stardust9112";
		
		Class.forName(driverName);
		
		
		conn = DriverManager.getConnection(jdbcUrl, dbId, dbPass);
		
		
		String sql = "insert into members values(?,?,?,?,?,?)";
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, idt);
		pstmt.setString(2, passwd);
		pstmt.setString(3, name);
		pstmt.setString(4, addr);
		pstmt.setString(5, tel);
		pstmt.setTimestamp(6, register);
		
		pstmt.executeUpdate();
		
		
		%><div align="center"><font color="white" size="13"><% out.println("Congratulation~!!<br>Wait a few seconds..<br>");
		%></font></div><meta http-equiv="refresh" content="3; url=loginForm.jsp"><% 
	}catch(Exception e){
		e.printStackTrace();
	}finally{
		if(pstmt !=null)
			try{pstmt.close();}catch(SQLException sql){}
		if(conn !=null)
			try{conn.close();}catch(SQLException sql){}
		out.println("데이터베이스 연결!");
	}
	
	

	
	
	
%>

</body>

</html>
