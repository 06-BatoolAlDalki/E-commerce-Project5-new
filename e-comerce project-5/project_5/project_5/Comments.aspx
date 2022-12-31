<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Comments.aspx.cs" Inherits="project_5.Comments" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script src="https://kit.fontawesome.com/a8b56cb52b.js" crossorigin="anonymous"></script>
       <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.min.js" integrity="sha384-cuYeSxntonz0PPNlHhBs68uyIAVpIIOZZ5JqeqvYYIcEL727kskC66kF92t6Xl2V" crossorigin="anonymous"></script>

    <style>
        .add_comme {
    width:50%;
    height: 40px;
    background-color: #ecedef;
    border-radius: 17px;
    border: 1px solid #ecedef;
    color: #2B3467;
    margin-left: 22%;
}
.post {
    width:8%;
    border-radius: 4px;
    height: 30px;
    text-align: center;
    border: 2px solid #E6E6E6;
    background-color: #E6E6E6;
    color: #2B3467;
    font-family: 'Times New Roman';
    font-style: italic;
    font-size: 18px;
    margin-left: 10%;
}
.commented {
    margin-top:50px;
    width: 53%;
    /*height: 40px;*/
    background-color: #E6E6E6;
    border-radius: 17px;
    border: 1px solid #E6E6E6;
    color: #2B3467;
    margin-left: 25%;
    font-family: 'Times New Roman';
    font-style: italic;
    font-size: 20px;
    padding-left: 30px;
    padding-top: 15px;
    display: block;
}
.title {
    width: 100%;
    display: block;
    color: #ecedef;
    text-align: center;
    /*    margin-left:50%;
*/ font-family: 'Times New Roman', Times, serif;
    font-weight: bold;
    font-style: italic;
    font-size: 124px;
    margin-top:90px;
}
    </style>
    <link href="NAVBAR.css" rel="stylesheet" />
</head>

    <nav class="navbar navbar-expand-lg navbar-light fixed-top py-3" id="mainNav">
            <div class="container px-4 px-lg-5">
                <asp:Image ID="Image1" runat="server" ImageUrl="img/logo.png"  CssClass="imageLogo"/>
                <%--<a class="navbar-brand" href="#page-top">Start Bootstrap</a>--%>
                <button class="navbar-toggler navbar-toggler-right" type="button" data-bs-toggle="collapse" data-bs-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation"><span class="navbar-toggler-icon"></span></button>
                <div class="collapse navbar-collapse" id="navbarResponsive">
                    <ul class="navbar-nav ms-auto my-2 my-lg-0" style="color:#2B3467">
                        <li class="nav-item"><a class="nav-link" href="about us.aspx">About</a></li>
                        <li class="nav-item"><a class="nav-link" href="contact.aspx">Contact</a></li>
                        <li class="nav-item"><a class="nav-link" href="Login.aspx">Login</a></li>
                        <li class="nav-item"><asp:HyperLink ID="profile" runat="server" CssClass="nav-link">Profile</asp:HyperLink></li>
                        <li class="nav-item"><a class="nav-link" href="Register.aspx">Register</a></li>
                    </ul>
                </div>
            </div>
        </nav>
<body style="background-color:#2B3467;">
    <form id="form1" runat="server">
        <asp:Label ID="proN" runat="server" Text="" CssClass="title"></asp:Label>
        <div style="margin-top:150px;">
              <asp:TextBox ID="add_comment" runat="server" CssClass="add_comme" placeholder="Enter Your Comment "></asp:TextBox>
            <asp:Button ID="post" runat="server" Text="Post" CssClass="post" OnClick="post_Click" />
            <br />
            <asp:Label ID="Label1" runat="server"></asp:Label>
        </div>
    </form>
</body>
</html>