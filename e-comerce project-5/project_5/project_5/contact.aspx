<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="contact.aspx.cs" Inherits="project_5.contact" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="contactus.css" rel="stylesheet" />
    <link rel="stylesheet"href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" />
 
    <script src="https://kit.fontawesome.com/a8b56cb52b.js" crossorigin="anonymous"></script>
   <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous" />
     <link href="NAVBAR.CSS" rel="stylesheet" />
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script>
    <title></title>
</head>
<body>

   <%-- <nav class="navbar navbar-expand-lg" style="background-color: #E6E6E6;">
            <div class="container-fluid">
                <a class="navtext" class="navbar-brand " href="#" style="font-family: 'Ink Free'; font-size: 28px">
        <img src="img/logo.png" alt="Alternate Text" height="70px" /></a>
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
 
    <div class="contact">
        <div class="content">
            <h1> Contact us</h1>
            <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
            <h3>Got a question ? We'd love to hear from you . 
                </h3><h3>Send us a message and we'll respond as soon as possible  </h3>
            </div>
        <div class="container">
            <div class="contactinfo">
                <div class="box">
                    <div class="icon"><a href="https://goo.gl/maps/UAzfGrCqnGGyPzSUA"><i class="fa-solid fa-location-arrow"style="color:#E6E6E6"></i></a></div>
                    <div class="text">
                        <h2>Address</h2>
                        <p>irbed-izreet</p>
                    </div>
                </div>
                  <div class="box">
                    <div class="icon"><a href="https://web.whatsapp.com/"><i class="fa-solid fa-phone"style="color:#E6E6E6 " ></i> </a></div>
                    <div class="text">
                        <h2>Phone</h2>
                        <p>0778097764</p>
                    </div>
                </div>
                  <div class="box">
                    <div class="icon"><a href="http://batool1walid2aldalki3@gmail.com"><i class="fa-solid fa-envelope " style="color:#E6E6E6"></i></a></div>
                    <div class="text">
                        <h2>Email</h2>
                        <p>haya@gmail.com</p>
                    </div>
                </div>
                <ul class="social-icons">
                    <li>
                        <a href="https://www.facebook.com/lujain.alnouti?mibextid=ZbWKwL"> <i class="fa-brands fa-facebook"></i></a>
                    </li>
                     <li>
                        <a href="https://github.com/Rahma-Obeidat"> <i class="fa-brands fa-github"></i></a>
                    </li>
                     <li>
                        <a href="https://instagram.com/haya.alkhateeb.7568?igshid=ZDdkNTZiNTM="><i class="fa-brands fa-instagram"></i></a>
                    </li>
                </ul>
            </div>
            <div class="contactform">
            <form id="form1" runat="server">
                <h2> Send   Message</h2>
                <div class="inputbox">
                   <%-- <input type="text" name="name" value="" required="required" />--%>
                    <asp:TextBox ID="fullname" runat="server" required="required"></asp:TextBox>
                    <span>full name</span>
                </div>
                 <div class="inputbox">
                     <asp:TextBox ID="Email" runat="server" required="required"></asp:TextBox>
                   <%-- <input type="email" name="name" value="" required="required" />--%>
                    <span>Email</span>
                </div>
                 <div class="inputbox">
                     <textarea id ="Message1" required="required" runat="server"></textarea>
                    
                    <span>type your message</span>
                </div>
                 <div class="inputbox">
                     
                   <asp:Button ID="btn" runat="server" Text="Send " OnClick="btn_Click"  Width="130px" /> 

                 </div>
                </form>
                </div>
        </div>
    </div>
    <footer class="footer-distributed">
 
			<div class="footer-left">
 
				<h3>HoMeE<span style="color:#EB455F">Home</span></h3>
 
				<p class="footer-links">
                    .
					<a href="landing.aspx">Home</a>
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
					<a href="https://goo.gl/maps/UAzfGrCqnGGyPzSUA"><i class="fa fa-map-marker" style="background-color:#92999f"></i></a>
					<p><span> Street</span> Irbid, Jordan</p>
				</div>
 
				<div>
					<a href="https://web.whatsapp.com/"><i class="fa fa-phone" style="background-color:#92999f"></i></a>
					<p>0778097764</p>
				</div>
 
				<div>
					<i class="fa fa-envelope" style="background-color:#92999f"></i>
					<p><a href="http://batool1walid2aldalki3@gmail.com" style="color:#EB455F">batool@gmail.com</a></p>
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
</body>
</html>