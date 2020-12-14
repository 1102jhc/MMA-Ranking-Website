

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
          <li class="nav-item active px-lg-4">
          	<a class="nav-link text-uppercase text-expanded" href="myPage.jsp"><%= idt %></a>
          </li>
          <li class="nav-item active px-lg-4">
          	<a class="nav-link text-uppercase text-expanded" href="logout.jsp">LOG-OUT</a>
          </li>
         </ul>
      </div>
    </div>
  </nav>

  <section class="page-section clearfix">
    <div class="container" style="height: 650px;">
      <div class="intro">
        <img class="intro-img img-fluid mb-3 mb-lg-0 rounded" src="img/ufc.jpg" alt="">
        <div class="intro-text left-0 text-center bg-faded p-5 rounded">
          <h2 class="section-heading mb-4">
            <span class="section-heading-upper">UFC</span>
            <span class="section-heading-lower">Ultimate Fighting Championship</span>
          </h2>
          <p class="mb-3">
          The Ultimate Fighting Championship (UFC) is an American mixed martial arts promotion
           company based in Las Vegas, Nevada, which is owned and operated by parent company
            William Morris Endeavor. It is the largest MMA promotion company in the world
             and features on its roster the highest-level fighters in the sport.
          </p>
          
        </div>
      </div>
    </div>
  </section>
  
  <section class="page-section clearfix">
    <div class="container" style="height:650px;">
      <div class="intro">
        <img class="intro-img img-fluid mb-3 mb-lg-0 rounded" src="img/bellator.jpg" alt="">
        <div class="intro-text left-0 text-center bg-faded p-5 rounded">
          <h2 class="section-heading mb-4">
            <span class="section-heading-upper">BELLATOR</span>
            <span class="section-heading-lower">Bellator MMA</span>
          </h2>
          <p class="mb-3">
          Bellator MMA is an American mixed martial arts promotion company based in Santa Monica, 
          California that is owned and operated as a subsidiary of ViacomCBS. 
          It is one of the largest MMA promotion companies in the world and features many of the upper 
          echelon athletes in combat sports. Its first event was held in 2009, with 222 
          "numbered" events held as of June 2019. The word Bellator is Latin for "warrior". 
          The company was previously known as Bellator.
          </p>
          
        </div>
      </div>
    </div>
  </section>
  
  <section class="page-section clearfix">
    <div class="container" style="height:650px;">
      <div class="intro">
        <img class="intro-img img-fluid mb-3 mb-lg-0 rounded" src="img/roadfc.jpg" alt="">
        <div class="intro-text left-0 text-center bg-faded p-5 rounded">
          <h2 class="section-heading mb-4">
            <span class="section-heading-upper">ROAD FC</span>
            <span class="section-heading-lower">Road Fighting Championship</span>
          </h2>
          <p class="mb-3">
          Road Fighting Championship is a South Korean-based mixed martial arts (MMA) promotion which was officially launched in 2010.
           Prior to December 2016, Road FC has held 52 events in three countries - South Korea, Japan, and China.
          </p>
          
        </div>
      </div>
    </div>
  </section>
  

 
  
  

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
