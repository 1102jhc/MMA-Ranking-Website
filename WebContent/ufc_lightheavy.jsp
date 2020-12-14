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
<div align="center">
	<a href = "UFC.jsp?target=ufc_heavy">Heavy</a>
	<a href = "UFC.jsp?target=ufc_lightheavy">Light Heavy</a>
	<a href = "UFC.jsp?target=ufc_womenbantomweight">Women Bantam Weight</a>
	
</div>
<table>
    <thead>
        <tr>
            <th>Ranking</th>
            <th>Name</th>
            <th>Record</th>
            
        </tr>
    </thead>
    <tbody>
    <%
    
    
    
   		 Connection conn = null;
		PreparedStatement pstmt = null;
        
       
        ResultSet rs = null;
         
        try{
        	
        	
        	String driverName = "com.mysql.cj.jdbc.Driver";
    		
    		String jdbcUrl = "jdbc:mysql://localhost:3306/project?useUnicode=yes&characterEncoding=UTF-8&serverTimezone=UTC";	
    		//5.5버전에서는 "jdbc:mysql://localhost:3306/jsptest"만 써도된다.
    		
    		String dbId="hee";
    		String dbPass="stardust9112";
    		
    		Class.forName(driverName);
    		
    		
    		conn = DriverManager.getConnection(jdbcUrl, dbId, dbPass);
            
            
    		
            
            
            String sql = "SELECT * FROM ufc_player where weight = 'light heavy' order by Ranking ";
           
        	pstmt = conn.prepareStatement(sql);
        	
            rs = pstmt.executeQuery();
             
            while(rs.next()){
    %>
        <tr>
            <td><%= rs.getString("Ranking") %></td>
        	
            <td><%= rs.getString("name") %></td>
           <td><%= rs.getString("record") %></td>
        </tr>
        
    <%
            }
        }catch(SQLException ex){
            ex.printStackTrace();
        }finally{
            if(rs != null) rs.close();
            if(pstmt != null) pstmt.close();
            if(conn != null) conn.close();
        }
    %>
    </tbody>
</table>



<style>
      table {
        width: 100%;
        border-top: 1px solid #444444;
        border-collapse: collapse;
        align:center;
       background: #efefef;
      }
      th, td {
        border-bottom: 1px solid #444444;
        padding: 10px;
        text-align: center;
      }
    </style>
</body>
</html>