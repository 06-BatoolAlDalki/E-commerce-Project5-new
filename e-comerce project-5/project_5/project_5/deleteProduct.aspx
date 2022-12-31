<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="deleteProduct.aspx.cs" Inherits="project_5.deleteProduct" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
    
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous"/>
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>


<head runat="server">
    <title></title>
</head>
<body>
  <form id="form1" runat="server">
        <div>
            <div style="border:3px solid grey;width: 50%; margin-top:8%; margin-left:25%; margin-bottom:25%;">
            <div class="card" style="">
                <%--<asp:Image ID="Image1" runat="server" />--%>
  
                <asp:Image ID="Image2" runat="server" class="card-img-top" />
  <div class="card-body">
    <h5 class="card-title" style="font-size:50px ; font-weight:bold; text-align:center">
        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label></h5>
   <%-- <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
 --%> <%--<button runat="server" >Delete</button>--%>
    
      <asp:Button ID="Button1" runat="server" Text="Delete" style="width:100px ;margin-left:230px ;background-color:#2B3467; color:#D9D6D6;padding:8px" OnClick="Button1_Click1" />
       <asp:Button ID="Button2" runat="server" Text="Show Products" style="width:140px ;margin-left:50px ;background-color:#2B3467; color:#D9D6D6;padding:8px" OnClick="Button2_Click"  />
      <br />
        <asp:Label ID="Label2" runat="server" Text="Product is deleted successfully" style="margin-left:30% ; color:green" Visible="false"></asp:Label>
  </div>
     </div>           
</div>
        </div>
    </form>
</body>
</html>
