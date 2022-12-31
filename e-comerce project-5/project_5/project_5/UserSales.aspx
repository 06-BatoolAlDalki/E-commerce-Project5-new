<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UserSales.aspx.cs" Inherits="project_5.UserSales" %>


<meta name="viewport" content="width=device-width, initial-scale=1.0">
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="ShowUser_Admin_CSS.css"/>
    <script src="https://kit.fontawesome.com/a8b56cb52b.js" crossorigin="anonymous"></script>
       <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.min.js" integrity="sha384-cuYeSxntonz0PPNlHhBs68uyIAVpIIOZZ5JqeqvYYIcEL727kskC66kF92t6Xl2V" crossorigin="anonymous"></script>
<style>
    .user_INFO {
    float: right;
    width: 80%;
    height: 850px;
    
}
.us_de {
    width: 90%;
    text-align: center;
    color: #2B3467;
    font-family: 'Times New Roman', Times, serif;
    font-size: 20px;
    font-weight: bold;
    height:60px;
    padding-left:55px;
}
.link2 {
    color: #2B3467;
    padding-left:190px;
}
</style>

</head>
<body>
    <form id="form2" runat="server">
        <div>
            <div class="title_div">
                <div class="admin_N">
                    <i class="fa-sharp fa-solid fa-user icon"></i> <br />
                    <asp:Label ID="Label5" runat="server" Text="Rahma"></asp:Label>
                    </div>
                
                <div class="page_N"> <asp:Label ID="Label6" runat="server" Text="Users" CssClass="LAB"></asp:Label></div>
            </div>
            <div style="width:100%;">
                <div class="admin_Dash links_cat_pro_user">
                     <asp:HyperLink ID="HyperLink4" runat="server" NavigateUrl="~/ShowUser_Admin.aspx" CssClass="link">Users</asp:HyperLink>
                <br />
               
                <br />

                 <asp:HyperLink ID="HyperLink5" runat="server" CssClass="link" NavigateUrl="~/categories_show.aspx">Categories</asp:HyperLink>
                <br>
                <br />

                 <asp:HyperLink ID="HyperLink6" runat="server" CssClass="link" NavigateUrl="~/show_product.aspx">Products</asp:HyperLink>
            
                </div>
                <div class="user_INFO">
                   <div class="us_de">
                    <asp:Label ID="na" runat="server" Text="User Name : &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; " ></asp:Label>
                    <asp:Label ID="username" runat="server" Text="xxx"></asp:Label>

                    <asp:Label ID="Label3" runat="server" Text=" &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;"></asp:Label>
                    <asp:Label ID="em" runat="server" Text="Email : &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; "></asp:Label>
                    <asp:Label ID="useremail" runat="server" Text="xxx@gmail.com"></asp:Label>
                    <asp:Label ID="Label4" runat="server" Text="&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; "></asp:Label>
                    <asp:LinkButton ID="Back" runat="server" PostBackUrl="~/ShowUser_Admin.aspx" CssClass="link2">Back</asp:LinkButton>
                   <br /><br />    
                   </div>
                    <br />
                    <asp:Label ID="users" runat="server" Text="Label"></asp:Label>
                </div>
            </div>
        </div>
    </form>
</body>
</html>
