<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="project_5.Login" %>


<!DOCTYPE html>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
         .big_div{
           /* position:relative;*/
          /*  background-image: url("images/Register.PNG");*/
          z-index:-5;
        }
        .div_form{
            position:relative;
            border:solid 5px #2B3467;
            width:400px;
            height:520px;
            border-radius:12px;
            margin-top:-43%;
            z-index:10;
            margin-left:35%;
        }
        img{
            width:100%;
            height:750px;
            opacity:0.4;
        }
        h2{
            color:#2B3467;
            margin-left:36%;
            margin-top:5%;
        }
        .lable{
            color:#2B3467;
            font-size:large;
            font-weight:bold;
             margin-left:25%;
        }
          .textbox{
            margin-left:25%;
            width:220px;
        }
          p{
              margin-left:50%;
          }
             .button{
            color:white;
            background-color:#2B3467;
            border:solid 5px #2B3467;
            padding:5px;
            border-radius:12px;
            margin-left:40%;
        }
                 .link{
            text-decoration:none;
            color:#2B3467;
        }
                 .p1{
                      color:#2B3467;
 margin-left:25%;
 margin-top:5%;
                 }
                 .ll{
                     margin-left:25%;
                     color:red;
                 }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="big_div">
          

            <img src="images/login.PNG"  />
             
            <div class="div_form">
                <div>
                   <%-- <asp:Label ID="Label6" runat="server" Text="Label"></asp:Label>--%>
                     <asp:Label ID="Label5" runat="server" Text="your Password or Email is Wrong" style="margin-left:20%" Visible="false"></asp:Label>
                    <%-- <asp:Label ID="Label6" runat="server" Text="" style="margin-left:20%" Visible="false"></asp:Label>--%>
                    <h2>Login</h2><br /><br /><br />
                    <asp:Label ID="Label1" runat="server" Text="Label" CssClass="lable">Email</asp:Label><br /><br />

                    <asp:TextBox ID="TextBox1" runat="server" CssClass="textbox" placeholder="enter your email"></asp:TextBox><br /><br />
                      <asp:Label ID="Label2" runat="server" Text="Label" CssClass="lable" >Password</asp:Label><br /><br />
                       <asp:TextBox ID="TextBox2" runat="server" CssClass="textbox" type="password" placeholder="enter your password"></asp:TextBox>
                    <p>Forgot Password?</p>
                    <asp:Button ID="Button1" runat="server" Text="LOGIN" CssClass="button" OnClick="Button1_Click"/><br /><br />
                    <asp:Label ID="Label4" runat="server" Text="email or Password Is not correct" CssClass="ll" Visible="false"></asp:Label>
                     <p class="p1">Need an account? <a href="Register.aspx" class="link"> SIGN UP</a></p>
                    <asp:Label ID="Label3" runat="server" Text="You dont have account, Please Signup" style="margin-left:10%;  color:red; font-weight:bold ; " Visible="false"></asp:Label>

                </div>
               <%-- <input id="Button1" type="button" value="button" runat="server" onserverclick="" />--%>
                </div>

        </div>
    </form>
</body>
</html>