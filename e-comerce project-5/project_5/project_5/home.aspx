<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="home.aspx.cs" Inherits="project_5.home" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
    <link href="home.css" rel="stylesheet" />
    <link rel="stylesheet" href="bootstrap-5.2.2-dist/css/bootstrap.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous" />
      <link rel="stylesheet"href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" />
 
    <script src="https://kit.fontawesome.com/a8b56cb52b.js" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script>

</head>
<body>
    <nav class="navbar navbar-expand-lg" style="background-color: #E6E6E6;">
            <div class="container-fluid">
                <a class="navtext" class="navbar-brand " href="#" style="font-family: 'Ink Free'; font-size: 28px">Shine</a>
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent1" aria-controls="navbarSupportedContent1" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse" id="navbarSupportedContent1">
                    <ul id="navUl" class="navbar-nav me-auto mb-2 mb-lg-0">
                         <li class="nav-item">
                            <a class="navtext" class="nav-link active" aria-current="page" href="#">Home</a>
                        </li>
                        <li class="nav-item">
                            <a class="navtext" class="nav-link active" aria-current="page" href="#">About Us</a>
                        </li>
                        <li class="nav-item">
                            <a class="navtext" class="nav-link active" aria-current="page" href="#">Contact Us</a>
                        </li>
                        <li class="nav-item">
                            <a class="navtext" class="nav-link active" aria-current="page" href="#">Register</a>
                        </li>
                          <li class="nav-item">
                            <a class="navtext" class="nav-link active" aria-current="page" href="#">Sign In</a>
                        </li>
                        <li class="nav-item">
                            <a class="navtext" class="nav-link active" aria-current="page" href="#"><i class="fa-sharp fa-solid fa-cart-shopping"></i></a>
                        </li>
                    </ul>

                </div>
            </div>
        </nav>
   <div id="carouselExampleControls" class="carousel slide" data-ride="carousel">
  <div class="carousel-inner">
    <div class="carousel-item active">
      <img class="d-block w-100" src="img/home3.jpeg" alt="First slide">
    </div>
    <div class="carousel-item">
      <img class="d-block w-100" src="img/homee.jpeg" alt="Second slide">
    </div>
    <div class="carousel-item">
      <img class="d-block w-100" src="img/home2.jpeg" alt="Third slide">
    </div>
  </div>
  <a class="carousel-control-prev" href="#carouselExampleControls" role="button" data-slide="prev">
    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
    <span class="sr-only">Previous</span>
  </a>
  <a class="carousel-control-next" href="#carouselExampleControls" role="button" data-slide="next">
    <span class="carousel-control-next-icon" aria-hidden="true"></span>
    <span class="sr-only">Next</span>
  </a>
</div>
    <div style="height:100px"> <h1 class="hh1" style="color:darkblue; font-weight: bold; font-style: italic; text-align: center;" ; >Categories </h1> </div>
    <form id="form1" runat="server">
        <div>
        </div>
         <div class="all">

    <div class="container">
         <div class="cards">
            <div class="card-img">
                <img src="img/kat1.jpg" alt="Alternate Text" />
                </div>
                <div class="card-body">
                    <h1>Platters</h1>
                     
                    </div>

                   
              </div>
        <div class="cards">
            <div class="card-img">
                <img src="img/kat2.png" alt="Alternate Text" />
                </div>
                <div class="card-body">
                    <h1>Cookers</h1>
                   
                    </div>
                  
                   
              </div>
           </div>
       </div>
    <div class="ss">
        <div class="part-two">
            <div class="cards">
            <div class="card-img">
                <img src="img/kat3.jpg" alt="Alternate Text" />
                </div>
                <div class="card-body">
                    <h1>Kitchen Electroical</h1>
                   
                    </div>
                    
                   
              </div>
            <div class="cards">
            <div class="card-img">
                <img src="img/kat4.png" alt="Alternate Text" />
                </div>
                <div class="card-body">
                    <h1>Cups</h1>
                   
                    </div>
                   
                   
                    </div>
            
        </div>

    </div>


    </form>
    <footer class="footer-distributed">
 
			<div class="footer-left">
 
				<h3>HoMeE<span style="color:#EB455F">Home</span></h3>
 
				<p class="footer-links">
                    .
					<a href="#">Home</a>
					.
					<a href="#">About</a>
					.
					<a href="#">Contact</a>
					.
					<a href="#">About</a>
				    .
					<a href="#">Sign In</a>
					
					
				</p>
 
				<p class="footer-company-name"></p>
			</div>
 
			<div class="footer-center">
 
				<div>
					<i class="fa fa-map-marker" style="background-color:#92999f"></i>
					<p><span> Street</span> Irbid, Jordan</p>
				</div>
 
				<div>
					<i class="fa fa-phone" style="background-color:#92999f"></i>
					<p>0786302281</p>
				</div>
 
				<div>
					<i class="fa fa-envelope" style="background-color:#92999f"></i>
					<p><a href="mailto:support@company.com" style="color:#EB455F">contact@webdevtrick.com</a></p>
				</div>
 
			</div>
 
			<div class="footer-right">
 
				<p class="footer-company-about">
					<span>About the company</span>
					Our store is your kitchen and everything you need to create the most delicious meals .... 
				</p>
 
				<div class="footer-icons">
 
					<a href="#"><i class="fa fa-facebook"></i></a>
					<a href="#"><i class="fa fa-twitter"></i></a>
					<a href="#"><i class="fa fa-linkedin"></i></a>
					<a href="#"><i class="fa fa-github"></i></a>
 
				</div>
 
			</div>
 
		</footer>
 
</body>
</html>