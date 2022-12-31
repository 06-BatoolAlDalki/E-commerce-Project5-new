<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="categories_show.aspx.cs" Inherits="project_5.categories_show" %>

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


<link rel="stylesheet" href="bootstrap-5.2.2-dist/css/bootstrap.css">
    <script src="https://kit.fontawesome.com/a8b56cb52b.js" crossorigin="anonymous"></script>
 
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">

    <link href="categories_show.css" rel="stylesheet" />
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.min.js" integrity="sha384-cuYeSxntonz0PPNlHhBs68uyIAVpIIOZZ5JqeqvYYIcEL727kskC66kF92t6Xl2V" crossorigin="anonymous"></script>
    <title></title>
</head>
<body>
 <%--    <nav class="navbar navbar-expand-lg" style="background-color: #E6E6E6;">
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
    <form id="form1" runat="server">
        <div class="sider">
        <div class="left_admin"  style="position:absolute">
            <div class="admin_image"><i class="fa-solid fa-person" ></i></div>
            <div class="admin_name">
                <asp:Label ID="Label1" runat="server" Text="Yasmeen"></asp:Label></div>
           
         <div class="line"></div>
            <div class="links_cat_pro_user" >
             <asp:HyperLink ID="HyperLink1" runat="server"  NavigateUrl="ShowUser_Admin.aspx" style="color:#D9D6D6;text-decoration:none;">Users</asp:HyperLink>

             <%--<asp:Button ID="Button1" runat="server" Text="Button" style="background-color:#2B3467; color:#B8AD95; border-color:#2B3467;"/>--%>
               <br />
                <br />
                 <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/admin_categories-table.aspx" style="color:#D9D6D6;text-decoration:none;">Categories</asp:HyperLink>
                 <%--<h2 id="HyperLink2" OnClick="HyperLink2_Click">Categories</h2>--%>
                <br>
                <br />

                 <asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="show_product.aspx"  style="color:#D9D6D6;text-decoration:none;">Products</asp:HyperLink>
            </div>
        </div>

        <div class="right_div" style="margin-left:20%">
            <div class="HyperLink" >Categories</div>
        </div>


            <div class="appear" id="appear" style="height:400px">
                   <button style="margin-left:45% ; background-color:#2B3467 ; text-decoration:none; padding:5px ; margin-top:2.9%" > <a href="add_category_admin.aspx"  style="text-decoration:none">Add Category</a></button>
   
                <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
               </div>
           

                  


            </div>
        
     <%-- //<asp:Button ID="Button1" runat="server" Text="Button" style="margin-left:40%" />--%>
   </form>
    <script src="admin_batool.js">
    </script>
</body>
</html>
