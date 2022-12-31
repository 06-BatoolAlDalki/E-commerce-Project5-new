<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="about us.aspx.cs" Inherits="project_5.about_us" %>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
      <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous" />
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script>
    <script src="https://kit.fontawesome.com/a8b56cb52b.js" crossorigin="anonymous"></script>
<head runat="server">
    <title></title>

    <link rel="stylesheet" href="about us.css">
    <link href="NAVBAR.CSS" rel="stylesheet" />
</head>

<body>

    <form id="form1" runat="server">
       <%-- <nav class="navbar navbar-expand-lg" style="background-color: #E6E6E6;">
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
                     </ul>
                </div>
            </div>
        </nav>
         <div style="position:relative ; background-image:url('Images/image.jpeg'); height:950px; width:100%; background-repeat:no-repeat; background-size:cover; ">
        <div class="text" style="position: absolute;
    box-shadow: 5px 10px 18px black;
    display: inline-block;
    margin-left: 20%;
    margin-top: 15%;
    /* border: solid 4px #B8AD95; */
    /* border-radius: 12px; */
    height: 465px;
    width: 60%;">
            <h1 style="font-family:'Times New Roman';
    /* box-shadow: 5px 2px 1px #2b3a55; */
    color: #2B3A55;
    width: 100%;
    text-align: center;
    /* margin-left: 33%; */
    margin-top: 29px;"> About Us</h1><br />
            <p style="text-align: justify; margin-left: 9%; color: #2B3A55; font-size: large; font-family:'Times New Roman';">
             Welcome to our store Surlatable

            <br />
                <br />
               Our store is your kitchen and everything you need to create the most delicious meals 
                <br />
                 <br />
            <%--</p>
            <p style="margin-left: 6%; color: #2B3A55; font-size: large ">--%>
              We hope to save you your time, facilitate your work and beautify your trip...<br />
                <br />
                In our store, there are many pages of tools that every woman needs in her kitchen:<br />
                1- Electrical tools.<br />2- Cookers.<br />3- Spoons.<br />4- Glass.<br />5- And much more......
            </p>
        </div>
            </div>
      <%--  <div style="position: absolute; display: inline-block;left:35%">
        <img src="img/image.jpeg"  width="70%" height:"15%"; style="margin-left:70%;margin-top:1%;"/>
        </div>--%>
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
					<a href="Login.aspx">Login</a>
					
					
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
     </form>
</body>
</html>