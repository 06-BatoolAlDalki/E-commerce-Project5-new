<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ShowUser_Admin.aspx.cs" Inherits="project_5.ShowUser_Admin" %>



<meta name="viewport" content="width=device-width, initial-scale=1.0">
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="ShowUser_Admin_CSS.css"/>
    <script src="https://kit.fontawesome.com/a8b56cb52b.js" crossorigin="anonymous"></script>
       <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.min.js" integrity="sha384-cuYeSxntonz0PPNlHhBs68uyIAVpIIOZZ5JqeqvYYIcEL727kskC66kF92t6Xl2V" crossorigin="anonymous"></script>
</head>
<body>
    <form id="form2" runat="server">
        <div>
            <div class="title_div">
                <div class="admin_N">
                    <i class="fa-sharp fa-solid fa-user icon"></i> <br />
                    <asp:Label ID="Label2" runat="server" Text="Yasmeen"></asp:Label>
                    </div>
                
                <div class="page_N"> <asp:Label ID="Label3" runat="server" Text="Users" CssClass="LAB"></asp:Label></div>
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
                   <%-- <asp:Button ID="show" runat="server" Text="Show" OnClick="show_Click" CssClass="show" style="background-color: #2B3467;
    color: #E6E6E6;
    font-family: 'Times New Roman', Times, serif;
    text-align: center;
    font-style: italic;
    font-weight: bold;"/>--%>
                    <asp:Label ID="table1" runat="server" Text=""></asp:Label>
                </div>
            </div>
        </div>
    </form>
</body>
</html>