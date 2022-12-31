<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="admin_edit_categories.aspx.cs" Inherits="project_5.admin_edit_categories" %>

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

    <link href="admin_edit_categories.css" rel="stylesheet" />
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div class="sider">
        <div class="left_admin">
            <div class="admin_image"><i class="fa-solid fa-person"></i></div>
            <div class="admin_name">
                <asp:Label ID="Label1" runat="server" Text="Yasmeen"></asp:Label></div>
           
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


            <div class="appear" id="appear"  >
                <asp:Label ID="Label6" runat="server" Text="Edit " style="margin-left:41% ;color :white ;font-family:'Times New Roman' ; font-style:italic;font-weight:bold ;font-size:30px;color: #2B3467;"></asp:Label>
                <div class=" edit">

                    <asp:Label ID="Label5" runat="server" Text="Edit Category   "></asp:Label> 
                    <br />
                    <hr />
                    <br />
                    <asp:Label ID="Label4" style="color:#2B3467" runat="server" Text="Category Name  "></asp:Label> 
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                    <br />
                    <br />
                    <div class="upload_image">
                      
                              <asp:FileUpload ID="FileUpload1" runat="server" />
                        <asp:Button ID="btnUpload" Text="Update" runat="server" OnClick="btnUpload_Click"  />  <asp:Label ID="Label3" runat="server" Text="Category is edit successfully" style="color:green" Visible="false"></asp:Label>
<hr /> 
                        <asp:Image ID="Image1" runat="server" Height = "300" Width = "300" />
                        </div>
                </div>
               </div>
        








            <div class="categories" id="categories">
                <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
               
            </div>
            
            


            </div>
        
        <%--<asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Button" />--%>
     
    </form>
    <script src="admin_batool.js">
    </script>
</body>
</html>
