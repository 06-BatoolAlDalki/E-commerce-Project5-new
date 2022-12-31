<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Profile.aspx.cs" Inherits="project_5.Profile" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
       <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous" />
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script>
    <script src="https://kit.fontawesome.com/a8b56cb52b.js" crossorigin="anonymous"></script>
<head runat="server">
    <title></title>
     <link rel="stylesheet" href="profile.css"/>
    <%--C:\Users\t\e-comerce project-5\project_5\project_5\profileEdit.css--%>
    <link href="NAVBAR.CSS" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <nav class="navbar navbar-expand-lg navbar-light fixed-top py-3" id="mainNav">
            <div class="container px-4 px-lg-5">
                <asp:Image ID="Image1" runat="server" ImageUrl="img/logo.png"  CssClass="imageLogo"/>
                <%--<a class="navbar-brand" href="#page-top">Start Bootstrap</a>--%>
                <button class="navbar-toggler navbar-toggler-right" type="button" data-bs-toggle="collapse" data-bs-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation"><span class="navbar-toggler-icon"></span></button>
                <div class="collapse navbar-collapse" id="navbarResponsive">
                    <ul class="navbar-nav ms-auto my-2 my-lg-0">
                        <li class="nav-item"><a class="nav-link" href="about us.aspx">About</a></li>
                        <li class="nav-item"><a class="nav-link" href="contact.aspx">Contact</a></li>
                        <li class="nav-item"><a class="nav-link" href="Login.aspx">Login</a></li>
                        <li class="nav-item"><a class="nav-link" href="Register.aspx">Register</a></li>
                    </ul>
                </div>
            </div>
        </nav>

             <div clss="bagdiv">
           <section class="vh-100" style="background-color: #f4f5f7;">
  <div class="container py-5 h-100">
    <div class="row d-flex justify-content-center align-items-center h-100">
      <div class="col col-lg-6 mb-4 mb-lg-0">
        <div class="card mb-3" style="border-radius: .5rem;">
          <div class="row g-0">
            <div class="col-md-4 gradient-custom text-center text-white"
              style="border-top-left-radius: .5rem; border-bottom-left-radius: .5rem;     background-color: #2B3467;">
              <img src="https://mdbcdn.b-cdn.net/img/Photos/new-templates/bootstrap-chat/ava1-bg.webp"
                alt="Avatar" class="img-fluid my-5" style="width: 80px;" />
                <%--/***********/--%><br />
                <asp:Label ID="name" runat="server" Text="Marie Horwitz" ></asp:Label><br />
<%--              <h5 id="name" runat="server">Marie Horwitz</h5>--%>
                <%--/***********/--%>
                <%--<button style="background-color:#2B3467">
                    <i class="far fa-edit mb-5"></i>
                </button>--%><br />
                <asp:Button ID="Button1" runat="server" Text="Edit" OnClick="Button1_Click"/>
             
            </div>
            <div class="col-md-8">
              <div class="card-body p-4">
                <h6>Information</h6>
                <hr class="mt-0 mb-4">
                <div class="row pt-1">
                  <div class="col-6 mb-3">
                    <h6>Email</h6>
                      <%--/***********/--%>
                      <asp:Label class="text-muted" ID="email" runat="server" Text="info@example.com"></asp:Label>
                      <br />
                    <%--<p class="text-muted" id="email" runat="server">info@example.com</p>--%>
                      <%--/***********/--%>
                  </div>
                  <div class="col-6 mb-3">
                    <h6>Phone</h6>
                      <%--/***********/--%>
                      <asp:Label class="text-muted" ID="phone" runat="server" Text="123 456 789"></asp:Label>
<%--                    <p ">123 456 789</p>--%>
                      <%--/***********/--%>
                  </div>


                </div>
                <%--<h6>Projects</h6>
                <hr class="mt-0 mb-4">
                <div class="row pt-1">
                  <div class="col-6 mb-3">
                    <h6>Recent</h6>
                    <p class="text-muted">Lorem ipsum</p>
                  </div>
                  <div class="col-6 mb-3">
                    <h6>Most Viewed</h6>
                    <p class="text-muted">Dolor sit amet</p>
                  </div>
                </div>--%>
                <div class="d-flex justify-content-start">
                  <a href="#!"><i class="fab fa-facebook-f fa-lg me-3"></i></a>
                  <a href="#!"><i class="fab fa-twitter fa-lg me-3"></i></a>
                  <a href="#!"><i class="fab fa-instagram fa-lg"></i></a>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</section>
         
        </div>
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
    </form>
</body>
</html>