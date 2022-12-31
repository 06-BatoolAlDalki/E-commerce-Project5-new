<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="show_product.aspx.cs" Inherits="project_5.show_product" %>




<!DOCTYPE html>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">


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

    <link href="admin_categories_table.css" rel="stylesheet" />
    <title></title>

 <link href="rahma.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div class="sider">
        <div class="left_admin">
            <div class="admin_image"><i class="fa-solid fa-person"></i></div>
            <div class="admin_name">
                <asp:Label ID="Label1" runat="server" Text="Yasmeen"></asp:Label></div>
           
            <div class="links_cat_pro_user" >
             <asp:HyperLink ID="HyperLink1" runat="server"  style="color:#D9D6D6;text-decoration:none;" NavigateUrl="~/ShowUser_Admin.aspx">Users</asp:HyperLink>

             <%--<asp:Button ID="Button1" runat="server" Text="Button" style="background-color:#2B3467; color:#B8AD95; border-color:#2B3467;"/>--%>
               <br />
                <br />
                 <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/categories_show.aspx" style="color:#D9D6D6;text-decoration:none;">Categories</asp:HyperLink>
                 <%--<h2 id="HyperLink2" OnClick="HyperLink2_Click">Categories</h2>--%>
                <br>
                <br />

                 <asp:HyperLink ID="HyperLink3" runat="server"  style="color:#D9D6D6;text-decoration:none;"  NavigateUrl="~/show_product.aspx">Products</asp:HyperLink>
            </div>
        </div>

        <div class="right_div">
            <div class="HyperLink" >Products</div>
        </div>


            <div class="appear" id="appear">
                <button style="background-color:#2B3467 ; text-decoration:none; padding:5px ; margin-top:-0.1%" > <a href="Add Product.aspx"  style="text-decoration:none">Add Product</a></button>
               <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
            </div>
        








            <div >
              <%--  <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>--%>
               
            </div>
            
            


            </div>
        
        <%--<asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Button" />--%>
     
    </form>
    <script src="admin_batool.js">
    </script>
</body>
</html>
