<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="home_page.aspx.cs" Inherits="project_5.home_page" %>

<!DOCTYPE html>

<meta name="viewport" content="width=device-width, initial-scale=1">
 <link rel="stylesheet" href="bootstrap-5.2.2-dist/css/bootstrap.css">
    <script src="https://kit.fontawesome.com/a8b56cb52b.js" crossorigin="anonymous"></script>
 

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">

    <link href="home_page.css" rel="stylesheet" />
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div class="slider_container">
            <img src="Images\slider1.png" width="100%" height="660px"/>
            <span class="previous" ><i class="fa-solid fa-circle-arrow-left"></i></span>
             <span class="next" ><i class="fa-solid fa-circle-arrow-right"></i></span>
        </div>
        
        <div class="description">
            <div class="title_description"><h1>Description</h1></div>
            <div class="contain_description"><h2>This is the Online website that offer for 
              you perfect things to your kitchen
           such as : platters , cookers, cups and kitchen electrical equipment.
                all thinhs you will need in your life is appear in our website
                             So you will enjoy in our website. 
               
                <br />
                <br />If you need to buy any things to you Kitchen only you need to register in our website.
                                             </h2>
                <asp:Button ID="Button1" runat="server" Text="Sign up" class="login" />
                <asp:Button ID="Button2" runat="server" Text="Sign in" class="register" />
            </div>
        </div>


    </form>
    <script src="home_page.js"></script>
</body>
</html>
