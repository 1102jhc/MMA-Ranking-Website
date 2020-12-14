<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
String idt = request.getParameter("idt");
String orgPass = request.getParameter("passwd");

Connection conn = null;
PreparedStatement pstmt = null;
String str = "";
ResultSet rs = null;
String prnM= null;

	String driverName = "com.mysql.cj.jdbc.Driver";
	
	
	
	String jdbcUrl = "jdbc:mysql://localhost:3306/project?useUnicode=yes&characterEncoding=UTF-8&serverTimezone=UTC";	
	//5.5버전에서는 "jdbc:mysql://localhost:3306/jsptest"만 써도된다.
	
	String dbId="hee";
	String dbPass="stardust9112";
	
	Class.forName(driverName);
	
	
	conn = DriverManager.getConnection(jdbcUrl, dbId, dbPass);
	String sql = "SELECT passwd FROM members WHERE idt=?";
	
	pstmt = conn.prepareStatement(sql);
	pstmt.setString(1, idt);
	rs = pstmt.executeQuery();
	
	if (rs.next()) {

		// 아이디있음

		if (rs.getString("passwd").equals(orgPass)) {

			session.setAttribute("idt", idt);

			
%> <meta http-equiv="refresh" content="0; url=indexLogon.jsp">			<% 

			
		} else {

			%>

			<script>

				alert('패스워드 틀림');

				history.back();

			</script>		

			<%	

		}

	} else {

		

		%>

		<script>

			alert('아이디 없음');

			

			history.back();  

		</script>

		<%

	}

%>
</body>
</html>