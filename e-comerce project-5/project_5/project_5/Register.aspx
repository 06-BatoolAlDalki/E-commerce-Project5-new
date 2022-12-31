<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="project_5.Register" %>



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
        h3{
            color:#2B3467;
            margin-left:33%;
            margin-top:5%;
        }
        .textbox{
            margin-left:25%;
            width:220px;
        }
        .button{
            color:white;
            background-color:#2B3467;
            border:solid 5px #2B3467;
            padding:5px;
            border-radius:12px;
            margin-left:32%;
        }
        .link{
            text-decoration:none;
            color:#2B3467;
        }
        p{
 color:#2B3467;
 margin-left:25%;
 margin-top:5%;
        }
        .l{
            margin-left:32%;
            color:green;
            font-weight:bold;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="big_div">
            <img src="images/Register.PNG"  />
            <div class="div_form">
                <div>
                    
                      <asp:Label ID="Label2" runat="server" Text="Your are already registered" CssClass="l" Visible="false" style="margin-left:22%;color:red"></asp:Label>
                    <h3>REGISTER</h3><br />
                   <%-- <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>--%>
                    <asp:TextBox ID="TextBox1" runat="server" CssClass="textbox" placeholder="First Name" ></asp:TextBox><br /><br /><br />
                     <asp:TextBox ID="TextBox2" runat="server" CssClass="textbox" placeholder="Email"></asp:TextBox><br /><br /><br />
                     <asp:TextBox ID="TextBox3" runat="server" CssClass="textbox" placeholder="Phone Number"></asp:TextBox><br /><br /><br />
                     <asp:TextBox ID="TextBox4" runat="server" CssClass="textbox" placeholder="Password" type="password"></asp:TextBox><br /><br /><br />
                    <asp:Button ID="Button1" runat="server" Text="CREAT ACCOUNT" CssClass="button" OnClick="Button1_Click" /><br />
                    <asp:Label ID="Label1" runat="server" Text="Account Created" CssClass="l" Visible="false"></asp:Label>
                    <p>Already have an account? <a href="Login.aspx" class="link">Login</a></p>

                </div>
         <asp:Button ID="Button2" runat="server" Text="Go" OnClick="Button2_Click"  Visible="false" />    

            </div>

        </div>
    </form>
</body>
</html>