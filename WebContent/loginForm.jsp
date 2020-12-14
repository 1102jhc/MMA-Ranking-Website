
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
            <a class="nav-link text-uppercase text-expanded" href="index.jsp">HOME
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
          <li class="nav-item active px-lg-4">
          	<a class="nav-link text-uppercase text-expanded" href="loginForm.jsp">LOG-IN</a>
          </li>
         </ul>
      </div>
    </div>
  </nav>

 <section class="page-section clearfix">
 <div class="container" style="height: 650px;">
 <form action="login.jsp" method="get">
 <table align="center">
 
 <tr><td><font color="white">ID</font></td><td><input type="text" name="idt" class="info"></td></tr>
 <tr><td><font color="white">PASSWORD</font></td><td><input type="password" name="passwd" class="info"></td></tr> 
  
 <tr><td align="center" colspan="2"><input type="submit" value="Confirm"><input type="reset" value="Reset"></td></tr>
 <tr><td colspan="2" align="center"><a href="join.jsp">Join-MemberShip</a></td></tr>
 </table>
 </form>
 </div>
 
</section>

<style>
 	input.info{ border:1px solid black;
 	border-radius:3px;
 	color:white;
 	background:black;
 	}
 	input.info:hover,input.info:focus{
 	background:gray;}
 	input{border:1px solid black;
 	border-radius:3px;
 	color:white;
 	background:black;}
 </style>
  
  
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
