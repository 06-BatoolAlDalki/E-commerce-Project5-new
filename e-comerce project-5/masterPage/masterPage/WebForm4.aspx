<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm4.aspx.cs" Inherits="masterPage.WebForm4" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>

            
            <asp:Label ID="Label1" runat="server" Text="Your email"></asp:Label>

            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
          <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="RequiredFieldValidator" ControlToValidate="TextBox1"></asp:RequiredFieldValidator>




            <asp:Button ID="Button1" runat="server" Text="Button" />
        </div>
        
    </form>
</body>
</html>
