<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="delete_category.aspx.cs" Inherits="project_5.delete_category" %>

<!DOCTYPE html>



<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">

    <link rel="stylesheet"  href="admin_edit_categories.css" />
    <title></title>
</head>
<body>
    <form id="form1" runat="server">

         <div class="sider">
        <div class="left_admin">
            <div class="admin_image"><i class="fa-solid fa-person"></i></div>
            <div class="admin_name">
                <asp:Label ID="Label3" runat="server" Text="Batool"></asp:Label></div>
           
         <div class="line">------------------</div>
            <div class="links_cat_pro_user" >
               <asp:HyperLink ID="HyperLink1" runat="server"  style="color:#D9D6D6;text-decoration:none;" NavigateUrl="~/ShowUser_Admin.aspx">Users</asp:HyperLink>

             <%--<asp:Button ID="Button1" runat="server" Text="Button" style="background-color:#2B3467; color:#B8AD95; border-color:#2B3467;"/>--%>
               <br />
                <br />
                 <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/categories_show.aspx" style="color:#D9D6D6;text-decoration:none;">Categories</asp:HyperLink>
                 <%--<h2 id="HyperLink2" OnClick="HyperLink2_Click">Categories</h2>--%>
                <br>
                <br />

                 <asp:HyperLink ID="HyperLink3" runat="server"  style="color:#D9D6D6;text-decoration:none;" NavigateUrl="~/show_product.aspx">Products</asp:HyperLink>
         
            </div>
        </div>





             <div class="right_div">
            <div class="HyperLink">Categories</div>
        </div>





 <div class="appear" id="appear">
                <asp:Label ID="Label6" runat="server" Text="Delete " style="margin-left:41% ;color :white ;font-family:'Times New Roman' ; font-style:italic;font-weight:bold ;font-size:30px;color: #2B3467;"></asp:Label>
              
           
                <div class=" edit">
        <div>
            <div style="width: 50%; margin-top:8%; margin-left:25%; margin-bottom:25%;">
                <asp:Label ID="Label4" runat="server" Text="Category is deleted successfully" style="margin-left:25% ; color:red ;font-size:15px " Visible="false" ></asp:Label>
            <div class="card" style="">
                <%--<asp:Image ID="Image1" runat="server" />--%>
  
                <asp:Image ID="Image2" runat="server" class="card-img-top " Width="100%" Height="300px" />
  <div class="card-body">
    <h5 class="card-title" style="margin-left:30%; font-size:50px ; font-weight:bold">
        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label></h5>
   <%-- <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
 --%> <%--<button runat="server" >Delete</button>--%>
    
      <asp:Button ID="Button1" runat="server" Text="Delete" style="width:100px ;margin-left:203px ;background-color:#2B3467; color:#D9D6D6;padding:8px" OnClick="Button1_Click1" />
      <br />
       

        <asp:Label ID="Label2" runat="server" Text="Category is deleted successfully" style="margin-left:30% ; color:green" Visible="false"></asp:Label>
  </div>
     </div>           
</div>
        </div>
                   </div></div>
    </form>
</body>
</html>
