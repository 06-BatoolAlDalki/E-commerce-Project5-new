<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="add_category_admin.aspx.cs" Inherits="project_5.add_category_admin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link  href="admin_add_category.css" rel="stylesheet"  />
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div class="sider">
        <div class="left_admin">
            <div class="admin_image"><i class="fa-solid fa-person"></i></div>
            <div class="admin_name">
                <asp:Label ID="Label1" runat="server" Text="Batool"></asp:Label></div>
           
         <div class="line">------------------</div>
            <div class="links_cat_pro_user" >
               <asp:HyperLink ID="HyperLink1" runat="server"  style="color:#D9D6D6;text-decoration:none;">Users</asp:HyperLink>

             <%--<asp:Button ID="Button1" runat="server" Text="Button" style="background-color:#2B3467; color:#B8AD95; border-color:#2B3467;"/>--%>
               <br />
                <br />
                 <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/categories_show.aspx" style="color:#D9D6D6;text-decoration:none;">Categories</asp:HyperLink>
                 <%--<h2 id="HyperLink2" OnClick="HyperLink2_Click">Categories</h2>--%>
                <br>
                <br />

                 <asp:HyperLink ID="HyperLink3" runat="server"  style="color:#D9D6D6;text-decoration:none;">Products</asp:HyperLink>
         
            </div>
        </div>

        <div class="right_div">
            <div class="HyperLink">Categories</div>
        </div>


            <div class="appear" id="appear">
               
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
                       <asp:Button ID="btnUpload" Text="Category Image" runat="server" OnClick="btnUpload_Click"  />
                        <br />
                         <asp:Label ID="Label3" runat="server" Text="Category is added successfully" style="margin-left:25%;color:green" Visible="false"></asp:Label>
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
</body>
</html>
