

<!DOCTYPE html>
<html lang="en">
<%@ page import="java.sql.*" %>
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
	String search = request.getParameter("search");
%>
<%@ include file="loginCheck.jspf" %>
  <h1 class="site-heading text-center text-white d-none d-lg-block">
    <span class="site-heading-upper text-primary mb-3"></span>
    <span class="site-heading-lower"></span>
  </h1>

  <!-- Navigation -->
  <nav class="navbar navbar-expand-lg navbar-dark py-lg-4" id="mainNav">
    <div class="container">
     
      <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>
      <div class="collapse navbar-collapse" id="navbarResponsive">
        <ul class="navbar-nav mx-auto">
          <li class="nav-item active px-lg-4">
            <a class="nav-link text-uppercase text-expanded" href="indexLogon.jsp">HOME
              <span class="sr-only">(current)</span>
            </a>
          </li>
          <li class="nav-item px-lg-4">
            <a class="nav-link text-uppercase text-expanded" href="UFC.jsp">UFC</a>
          </li>
          <li class="nav-item px-lg-4">
            <a class="nav-link text-uppercase text-expanded" href="BELLATOR.jsp">BELLATOR</a>
          </li>
          <li class="nav-item px-lg-4">
            <a class="nav-link text-uppercase text-expanded" href="ROADFC.jsp">ROAD FC</a>
          </li>
          
        </ul>
        <ul class="navbar-nav mx-auto">
        <li class="nav-item px-lg-4">
          	<a class="nav-link text-uppercase text-expanded" href="myPage.jsp"><%= idt %></a>
          </li>
          <li class="nav-item active px-lg-4">
          	<a class="nav-link text-uppercase text-expanded" href="logout.jsp">LOG-OUT</a>
          </li>
         </ul>
      </div>
    </div>
  </nav>
  
  
  
  
   <section class="page-section about-heading">
    <div class="container">
     
      <div class="about-heading-content">
        
          <div class="col-xl-9 col-lg-10 mx-auto">
            <div class="bg-faded rounded p-5">
              
               <div>
               <form action="allPlayer.jsp" method="POST">
               <table>
    <thead>
    <tr><td colspan="3">	<input type="text" name="search" class="search1">
              <input type="submit" value="Search"></td></tr>
        <tr>
            
            
            <th>Name</th>
            <th>Weight</th>
            <th>Record</th>
            
        </tr>
    </thead>
    <tbody> <tbody>
    <%
    
    
    
   		 Connection conn = null;
		PreparedStatement pstmt = null;
        
       
        ResultSet rs = null;
         
        try{
        	
        	
        	String driverName = "com.mysql.cj.jdbc.Driver";
    		
    		String jdbcUrl = "jdbc:mysql://localhost:3306/project?useUnicode=yes&characterEncoding=UTF-8&serverTimezone=UTC";	
    		
    		
    		String dbId="hee";
    		String dbPass="stardust9112";
    		
    		Class.forName(driverName);
    		
    		
    		conn = DriverManager.getConnection(jdbcUrl, dbId, dbPass);
            
            
    		
            
            
            String sql = " (select * from bellator_player where name=?) union (select * from ufc_player where name=?) union (select * from roadfc_player where name=?);";
           
        	pstmt = conn.prepareStatement(sql);
        	pstmt.setString(1, search); 
        	pstmt.setString(2, search); 
        	pstmt.setString(3, search); 
        	 
            rs = pstmt.executeQuery();
             
            while(rs.next()){
    %>
        <tr>
            <td><%= rs.getString("name") %></td>
        	
            <td><%= rs.getString("weight") %></td>
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
              	</form>
              	<form action="favorite.jsp" method="POST">
              	<tr><td colspan="3"> <input type="submit" value="Add"></td></tr>
               </form>
               </table>
                
				
              </div>
           
             
            </div>
          </div>
       
      </div>
    </div>
  </section>
  



<style>
 	input.search1{ border:1px solid black;
 	border-radius:3px;
 	color:black;
 	background:white;
 	}
 	input.search1:hover,input.search1:focus{
 	background:gray;}
 	input{border:1px solid black;
 	border-radius:3px;
 	color:white;
 	background:black;}
 </style>


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




  <meta

 
  
  

  <footer class="footer text-faded text-center py-5">
    <div class="container">
      <p class="m-0 small">Copyright &copy; Your Website 2019</p>
    </div>
  </footer>

  <!-- Bootstrap core JavaScript -->
  <script src="vendor/jquery/jquery.min.js"></script>
  <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

</body>

</html>
