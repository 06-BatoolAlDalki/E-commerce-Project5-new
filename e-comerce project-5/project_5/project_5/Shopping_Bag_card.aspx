<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Shopping_Bag_card.aspx.cs" Inherits="project_5.Shopping_Bag_card" %>



<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.14.7/dist/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script src="https://kit.fontawesome.com/a8b56cb52b.js" crossorigin="anonymous"></script>
    <link href="NAVBAR.CSS" rel="stylesheet" />
    <style>
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
    </style>
    <script src="https://kit.fontawesome.com/a8b56cb52b.js" crossorigin="anonymous"></script>
</head>
<body>
  <%--  <div>
     <nav class="navbar navbar-expand-lg navbar-light fixed-top py-3" id="mainNav" style="background-color:blue ; ">
            <div class="container px-4 px-lg-5">
                <asp:Image ID="Image1" runat="server" ImageUrl="img/logo.png"  CssClass="imageLogo"/>
               <a class="navbar-brand" href="#page-top">Start Bootstrap</a>
               <button class="navbar-toggler navbar-toggler-right" type="button" data-bs-toggle="collapse" data-bs-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation"><span class="navbar-toggler-icon"></span></button>
                <div class="collapse navbar-collapse" id="navbarResponsive">
                    <ul class="navbar-nav ms-auto my-2 my-lg-0" style="color:#2B3467">
                        <li class="nav-item"><a class="nav-link" href="about us.aspx" style="color:#2B3467">About</a></li>
                        <li class="nav-item"><a class="nav-link" href="contact.aspx" style="color:#2B3467">Contact</a></li>
                        <li class="nav-item"><a class="nav-link" href="Login.aspx" style="color:#2B3467">Login</a></li>
                        <li class="nav-item"><asp:HyperLink ID="profile" runat="server" CssClass="nav-link" style="color:#2B3467">Profile</asp:HyperLink></li>
                        <li class="nav-item"><a class="nav-link" href="Register.aspx" style="color:#2B3467">Register</a></li>
                         <li class="nav-item">
                            <a class="navtext" class="nav-link active" aria-current="page" href="Shopping_Bag_card.aspx" style="color:#2B3467"><i class="fa-sharp fa-solid fa-cart-shopping "></i></a>
                        </li>
                        </ul>
                </div>
            </div>
        </nav>
        </div>--%>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
            <span style=" background-color:#25306F;color:white; margin-left:45% ;height:50px; padding:12px ;border-radius:12px"> 
             <asp:Label ID="Label2" runat="server" Text="Label" ></asp:Label></span>
            <asp:Button ID="Button1" runat="server" Text="CheckOut" style=" background-color:#25306F;color:white; margin-left:1% ;height:50px; padding:2px ;border-radius:12px" OnClick="Button1_Click" />
            <%-- <asp:Label ID="Label3" runat="server" Text="Label" ></asp:Label></span>--%>

             <%--  <asp:Button ID="Button2" runat="server" Text="Button" OnClick="Button2_Click" />--%>
        </div>
    </form>
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
   <%-- <script>

        function SomeDeleteRowFunction() {
            // event.target will be the input element.
            var td = event.target.parentNode;
            var tr = td.parentNode; // the row to be removed
            tr.parentNode.removeChild(tr);
            
        }</script>--%>
</body>
</html>
