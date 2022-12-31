<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CheckOut.aspx.cs" Inherits="project_5.CheckOut" %>


<meta name="viewport" content="width=device-width, initial-scale=1.0">

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
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

    </style>
    <title></title>
    <link rel="stylesheet" href="CheckOut_CSS.css"/>
        <script src="https://kit.fontawesome.com/a8b56cb52b.js" crossorigin="anonymous"></script>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous" />
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script>
      <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.min.js" integrity="sha384-cuYeSxntonz0PPNlHhBs68uyIAVpIIOZZ5JqeqvYYIcEL727kskC66kF92t6Xl2V" crossorigin="anonymous"></script>

</head>
<body>
      <nav class="navbar navbar-expand-lg" style="background-color: #E6E6E6;">
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
                            <a class="navtext" class="nav-link active" aria-current="page" href="landing.aspx">Home</a>
                        </li>
                        <li class="nav-item">
                            <a class="navtext" class="nav-link active" aria-current="page" href="about us.aspx">About Us</a>
                        </li>
                        <li class="nav-item">
                            <a class="navtext" class="nav-link active" aria-current="page" href="contact.aspx">Contact Us</a>
                        </li>
                        <li class="nav-item">
                          <%--  <asp:HyperLink ID="profile" runat="server" class="nav-link active" >Profile</asp:HyperLink>--%>
                            <a class="navtext" class="nav-link active" aria-current="page" href="Profile.aspx">Profile</a>
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
    <form id="form1" runat="server">
       
        <div>
            <div class="checkproduct">


               
                <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>


            </div>
            <div class="summery" runat="server" style="position: fixed; float:right; margin-left:67%;">
                <asp:Label ID="summ" runat="server" Text="Summery" CssClass="tit"></asp:Label>
                <br />
               
                <div class="purchase">
                    <asp:Label ID="sub" runat="server" Text="Subtotal"></asp:Label>
                    <hr />
                    <asp:Label ID="dis" runat="server" Text="Discount"></asp:Label>                    
                    <hr />
                    <asp:Label ID="del" runat="server" Text="Delivery"></asp:Label>                    
                    <hr />
                    <asp:Label ID="tot" runat="server" Text="Total"></asp:Label>                    
                    <hr />

                </div>     
                 <div class="pri">
                    <asp:Label ID="subtotal" runat="server" Text="300 JD"></asp:Label>
                    <hr />
                    <asp:Label ID="discount" runat="server" Text="0 %"></asp:Label>                    
                     <hr />
                    <asp:Label ID="delivery" runat="server" Text="7 JD"></asp:Label>                    
                     <hr />
                    <asp:Label ID="total" runat="server" Text="307 JD"></asp:Label>                    
                     <hr />
                </div>
                <br /><br />
                <asp:Button ID="checkout" runat="server" Text="Check Out" CssClass="check_button"  OnClick="checkout_Click"/>
              <br/>

<%--                 <asp:Label ID="Label2" runat="server" Text="307 JD"></asp:Label>               --%>
<%--                 <div class="tabb">
                                 <h3>Billing Address</h3>



                     <table class="tabb">
                         <tr><th></th> <th></th></tr>
                         <tr>
                             <td> <label for="fname" class="foon"><i class="fa fa-user"></i> Full Name</label></td>
                             <td></td>
                              <td> <input type="text" id="fname" name="firstname" placeholder="John M. Doe"></td>
                           </tr>
                         <tr>
                              <td> <label for="email" class="foon"><i class="fa fa-envelope"></i> Email</label></td>
                                                          <td></td>

                             <td> <input type="text" id="email" name="email" placeholder="john@example.com">
                         </tr>
                         <tr>
                            <td><label for="adr" class="foon"><i class="fa fa-address-card-o"></i> Address</label></td>
                                                         <td></td>

                             <td><input type="text" id="adr" name="address" placeholder="542 W. 15th Street"></td>
                         </tr>
                          <tr>
                              <td><label for="city" class="foon"><i class="fa fa-institution"></i> City</label></td>
                            <%-- <td>             <input type="text" id="email" name="email" placeholder="john@example.com">
</td>
                             <td><input type="text" id="adr" name="address" placeholder="542 W. 15th Street"></td>--%>
                         <%--    <td></td>

                             <td><input type="text" id="city" name="city" placeholder="New York"></td>--%>

                       <%--  </tr>--%>
<%--            <h3>Billing Address</h3>--%>
           <%-- <label for="fname"><i class="fa fa-user"></i> Full Name</label>
            <input type="text" id="fname" name="firstname" placeholder="John M. Doe"> <br />
            <label for="email"><i class="fa fa-envelope"></i> Email</label>
            <input type="text" id="email" name="email" placeholder="john@example.com"><br />
            <label for="adr"><i class="fa fa-address-card-o"></i> Address</label>
            <input type="text" id="adr" name="address" placeholder="542 W. 15th Street"><br />
            <label for="city"><i class="fa fa-institution"></i> City</label>
            <input type="text" id="city" name="city" placeholder="New York"><br />--%>
 <%--                        </table>
</div>

            </div>--%>
        </div>
      <br />
        <%--<div class="foott">
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
 
		</footer></div>--%>
    </form>


</body>
</html>