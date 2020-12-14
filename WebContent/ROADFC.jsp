<!DOCTYPE html>
<html lang="en">
<%@ include file="loginCheck.jspf" %>
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
String target = request.getParameter("target");
if (target == null) target = "roadfcSchedule";


String targetPage= target + ".jsp";

%>
    <h1 class="site-heading text-center text-white d-none d-lg-block">
      
    </h1>

    <!-- Navigation -->
    <nav class="navbar navbar-expand-lg navbar-dark py-lg-4" id="mainNav">
      <div class="container">
        
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarResponsive">
          <ul class="navbar-nav mx-auto">
            <li class="nav-item px-lg-4">
              <% 
          if(idt == null){
        	  %>
        	  <a class="nav-link text-uppercase text-expanded" href="index.jsp">Home
              <span class="sr-only">(current)</span>
            </a>
        	  <% 
          }else{
        	  %>
        	  <a class="nav-link text-uppercase text-expanded" href="indexLogon.jsp">Home
              <span class="sr-only">(current)</span>
            </a>
        	  <% 
        	  
          }
          %>
            </li>
            <li class="nav-item px-lg-4">
              <a class="nav-link text-uppercase text-expanded" href="UFC.jsp">UFC</a>
            </li>
            <li class="nav-item px-lg-4">
              <a class="nav-link text-uppercase text-expanded" href="BELLATOR.jsp">BELLATOR</a>
            </li>
            <li class="nav-item active px-lg-4">
              <a class="nav-link text-uppercase text-expanded" href="ROADFC.jsp">ROAD FC</a>
            </li>
            
          </ul>
           <ul class="navbar-nav mx-auto">
          <li class="nav-item active px-lg-4">
          	 <% if (idt == null) {
 			%> <a class="nav-link text-uppercase text-expanded" href="loginForm.jsp">LOG-IN</a></li><% 
 		} 
 else{
	 %> 
	 	<a class="nav-link text-uppercase text-expanded" href="myPage.jsp"><%= idt %></a></li>
	 	<li class="nav-item active px-lg-4">
          	<a class="nav-link text-uppercase text-expanded" href="logout.jsp">LOG-OUT</a>
          </li>
	 	
	 	
	 <% 
 }
 %>
         </ul>
        </div>
      </div>
    </nav>

   <section class="page-section about-heading">
    <div class="container">
      <img class="img-fluid rounded about-heading-img mb-3 mb-lg-0" src="img/coner.jpg" alt="">
      <div class="about-heading-content">
        
          <div class="col-xl-9 col-lg-10 mx-auto">
            <div class="bg-faded rounded p-5">
              <h2 class="section-heading mb-4">
                <jsp:include page="roadfc_top.jsp"  />
              </h2>
             
            </div>
          </div>
       
      </div>
    </div>
  </section>
  
  
  
  <form action = "ufcRank.jsp">
   <section class="page-section about-heading">
    <div class="col-xl-9 col-lg-10 mx-auto">
    <div class="bg-faded rounded p-5" align="center">
    
    
     	<jsp:include page="<%=targetPage %>" flush="false" />
    </div>
    </div>
  </section>
  </form>

    <footer class="footer text-faded text-center py-5">
      <div class="container">
        <p class="m-0 small">Copyright &copy; Your Website 2018</p>
      </div>
    </footer>

    <!-- Bootstrap core JavaScript -->
    <script src="vendor/jquery/jquery.min.js"></script>
    <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

  </body>

  
  

</html>
