<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="category_page.aspx.cs" Inherits="project_5.category_page" %>

<!DOCTYPE html>
 <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
   <html xmlns="http://www.w3.org/1999/xhtml">
        <link rel="stylesheet" href=
"https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
        integrity=
"sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
        crossorigin="anonymous">
  
    <link rel="stylesheet" href=
"https://use.fontawesome.com/releases/v5.4.1/css/all.css"
        integrity=
"sha384-5sAR7xN1Nv6T6+dT2mhtzEpVJvfS3NScPQTrOxhwjIuvcA67KV2R5Jz6kr4abQsz"
         crossorigin="anonymous">
  
   <head runat="server">
       <link href="categories.css" rel="stylesheet" />
       <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
   <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
       <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
       <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css" rel="stylesheet" />
         <script src="https://kit.fontawesome.com/a8b56cb52b.js" crossorigin="anonymous"></script>
       <link  rel="stylesheet" href="NAVBAR.css"/>
       
       <%--  <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>Creative - Start Bootstrap Theme</title>
        <!-- Favicon-->
        <link rel="icon" type="image/x-icon" href="assets/favicon.ico" />
        <!-- Bootstrap Icons-->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css" rel="stylesheet" />
        <!-- Google fonts-->
        <link href="https://fonts.googleapis.com/css?family=Merriweather+Sans:400,700" rel="stylesheet" />
        <link href="https://fonts.googleapis.com/css?family=Merriweather:400,300,300italic,400italic,700,700italic" rel="stylesheet" type="text/css" />
        <!-- SimpleLightbox plugin CSS-->
        <link href="https://cdnjs.cloudflare.com/ajax/libs/SimpleLightbox/2.1.0/simpleLightbox.min.css" rel="stylesheet" />
        <!-- Core theme CSS (includes Bootstrap)-->
        <link href="landingPage_CSS.css" rel="stylesheet" />
     <script src="https://kit.fontawesome.com/a8b56cb52b.js" crossorigin="anonymous"></script>
    --%>
       <title></title>
       <style>
        #Label1 {
           display:flex; 
         
           justify-content:space-around;
         margin:10%;
        }
        .flex{
          
        }
        .body{
            background-color:#B8AD95;
        }
        .navbar-collapse {
    flex-grow: 0;
}

.navtext {
    color: #2B3467;
    font-size: 20PX;
    text-decoration: none;
    margin-left: 30px;
    margin-right: 20px;
}
footer {
    bottom: 0;
}

.footer-distributed {
    background-color: #2B3467;
    box-shadow: 0 1px 1px 0 rgba(0, 0, 0, 0.12);
    box-sizing: border-box;
    width: 100%;
    text-align: left;
    font: bold 16px sans-serif;
    padding: 55px 50px;
    margin-top: 80px;
}

    .footer-distributed .footer-left,
    .footer-distributed .footer-center,
    .footer-distributed .footer-right {
        display: inline-block;
        vertical-align: top;
    }

    .footer-distributed .footer-left {
        width: 40%;
    }

    .footer-distributed h3 {
        color: #ffffff;
        font: normal 36px 'Cookie', cursive;
        margin: 0;
    }

        .footer-distributed h3 span {
            color: #5383d3;
        }


    .footer-distributed .footer-links {
        color: #ffffff;
        margin: 20px 0 12px;
        padding: 0;
    }

        .footer-distributed .footer-links a {
            display: inline-block;
            line-height: 1.8;
            text-decoration: none;
            color: inherit;
        }

    .footer-distributed .footer-company-name {
        color: #8f9296;
        font-size: 14px;
        font-weight: normal;
        margin: 0;
    }


    .footer-distributed .footer-center {
        width: 35%;
    }

        .footer-distributed .footer-center i {
            background-color: #33383b;
            color: #ffffff;
            font-size: 25px;
            width: 38px;
            height: 38px;
            border-radius: 50%;
            text-align: center;
            line-height: 42px;
            margin: 10px 15px;
            vertical-align: middle;
        }

            .footer-distributed .footer-center i.fa-envelope {
                font-size: 17px;
                line-height: 38px;
            }

        .footer-distributed .footer-center p {
            display: inline-block;
            color: #ffffff;
            vertical-align: middle;
            margin: 0;
        }

            .footer-distributed .footer-center p span {
                display: block;
                font-weight: normal;
                font-size: 14px;
                line-height: 2;
            }

            .footer-distributed .footer-center p a {
                color: #5383d3;
                text-decoration: none;
                ;
            }

    .footer-distributed .footer-right {
        width: 20%;
    }

    .footer-distributed .footer-company-about {
        line-height: 20px;
        color: #92999f;
        font-size: 13px;
        font-weight: normal;
        margin: 0;
    }

        .footer-distributed .footer-company-about span {
            display: block;
            color: #ffffff;
            font-size: 14px;
            font-weight: bold;
            margin-bottom: 20px;
        }
        
        #containProduct{
            display:grid;
            grid-template-columns:auto auto;
           /* justify-content:space-between;*/
            gap:22px;
            margin:20px;
            width:50%;
        }

.cards {
  width: 540px;
    margin-left: 120px;
    border-radius: 15px;
    box-shadow: 0 10px 10px #2B3467;
    background-color: #ffff;
    transition: all 0.5s;
   /* justify-content: space-between;*/
}

    .footer-distributed .footer-icons {
        margin-top: 25px;
    }

        .footer-distributed .footer-icons a {
            display: inline-block;
            width: 35px;
            height: 35px;
            cursor: pointer;
            background-color: #92999f;
            border-radius: 20px;
            font-size: 20px;
            color: #ffffff;
            text-align: center;
            line-height: 35px;
            margin-right: 3px;
            margin-bottom: 5px;
        }


@media (max-width: 880px) {

    .footer-distributed {
        font: bold 14px sans-serif;
    }

        .footer-distributed .footer-left,
        .footer-distributed .footer-center,
        .footer-distributed .footer-right {
            display: block;
            width: 100%;
            margin-bottom: 40px;
            text-align: center;
        }

            .footer-distributed .footer-center i {
                margin-left: 0;
            }
}
    </style>
</head>
<body>
    <%-- <nav class="navbar navbar-expand-lg" style="background-color: #E6E6E6;">
            <div class="container-fluid">
                <a class="navtext" class="navbar-brand " href="#" style="font-family: 'Ink Free'; font-size: 28px">
                    <img src="img/logo.png" alt="Alternate Text" height="70px" />
                </a>
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
                            <asp:HyperLink ID="profile" runat="server" CssClass="navtext nav-link active">Profile</asp:HyperLink>
                            <%--<a class="navtext" class="nav-link active" aria-current="page" href="Profile.aspx">Profile</a>--%>
                        <%--</li>
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
        </nav>--%>
    <nav class="navbar navbar-expand-lg navbar-light fixed-top py-3" id="mainNav">
            <div class="container px-4 px-lg-5">
                <asp:Image ID="Image1" runat="server" ImageUrl="img/logo.png"  CssClass="imageLogo"/>
                <%--<a class="navbar-brand" href="#page-top">Start Bootstrap</a>--%>
                <button class="navbar-toggler navbar-toggler-right" type="button" data-bs-toggle="collapse" data-bs-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation"><span class="navbar-toggler-icon"></span></button>
                <div class="collapse navbar-collapse" id="navbarResponsive">
                    <ul class="navbar-nav ms-auto my-2 my-lg-0">
                         <li class="nav-item"><a class="nav-link" href="about us.aspx"style="color:#2B3467">About</a></li>
                        <li class="nav-item"><a class="nav-link" href="contact.aspx"style="color:#2B3467">Contact</a></li>
                        <li class="nav-item"><a class="nav-link" href="Login.aspx"style="color:#2B3467">Login</a></li>
                        <li class="nav-item"><asp:HyperLink ID="profile" runat="server" CssClass="nav-link" style="color:#2B3467">Profile</asp:HyperLink></li>
                        <li class="nav-item"><a class="nav-link" href="Register.aspx"style="color:#2B3467">Register</a></li>
                         <li class="nav-item">
                            <a class="navtext" class="nav-link active" aria-current="page" href="Shopping_Bag_card.aspx"><i class="fa-sharp fa-solid fa-cart-shopping"></i></a>
                        </li>
                     </ul>
                </div>
            </div>
        </nav>
    <div id="carouselExampleControls" class="carousel slide" data-ride="carousel">
  <div class="carousel-inner" style="height:700px">
      
      
    <div class="carousel-item active">
       
        <%--<asp:Button ID="Button1" runat="server" Text="Button" Width="160px" />--%>
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
    
    <span class="sr-only">Previous</span>
  </a>
  <a class="carousel-control-next" href="#carouselExampleControls" role="button" data-slide="next">
    <span class="carousel-control-next-icon" aria-hidden="true"></span>
    <span class="sr-only">Next</span>
  </a>
</div>
    <form id="form1" runat="server">
                 
        <div class="title">
            <h1 >Categories</h1>
        </div>
        <div>
              <div id="containProduct" runat="server">
            
        </div>
        </div>
        <div style="display:block"></div>
        <span class="carousel-control-prev-icon" aria-hidden="true"></span>
    </form>
    <br />
    <div style="display:block">
   <footer class="footer-distributed">
 
			<div class="footer-left">
 
				<h3>HoMeE<span style="color:#EB455F">Home</span></h3>
 
				<p class="footer-links">
                    .
					<a href="category_page.aspx">Home</a>
					.
					<a href="about us.aspx">About</a>
					.
					<a href="contact.aspx">Contact</a>
				    .
					<a href="Login.aspx">Sign In</a>
					
					
				</p>
 
				<p class="footer-company-name"></p>
			</div>
 
			<div class="footer-center">
 
				<div>
					<a href="https://goo.gl/maps/UAzfGrCqnGGyPzSUA"><i class="fa fa-map-marker" style="background-color:#92999f"></i></a>
					<p><span> Street</span> Irbid, Jordan</p>
				</div>
 
				<div>
					<a href="https://web.whatsapp.com/"><i class="fa fa-phone" style="background-color:#92999f"></i></a>
					<p>0778097764</p>
				</div>
 
				<div>
					<i class="fa fa-envelope" style="background-color:#92999f"></i>
					<p><a href="http://batool1walid2aldalki3@gmail.com" style="color:#EB455F">HomeeHome@gmail.com</a></p>
				</div>
 
			</div>
 
			<div class="footer-right">
 
				<p class="footer-company-about">
					<span>About the company</span>
					Our store is your kitchen and everything you need to create the most delicious meals .... 
				</p>
 
				<div class="footer-icons">
 
					<a href="https://www.facebook.com/lujain.alnouti?mibextid=ZbWKwL"><i class="fa fa-facebook"></i></a>
					<a href="#"><i class="fa fa-twitter"></i></a>
					<a href="#"><i class="fa fa-linkedin"></i></a>
					<a href="https://github.com/Rahma-Obeidat"><i class="fa fa-github"></i></a>
 
				</div>
 
			</div>
 
		</footer>
 </div>
</body>
</html>
