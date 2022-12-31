<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="inline_code.aspx.cs" Inherits="masterPage.WebForm5" %>

<!DOCTYPE html>


<script runat="server" >
    protected void Button1_Click(object sender, EventArgs e)
    {
        Label2.Text = TextBox1.Text;
    }

</script>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>

            <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>

            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>

            <asp:Button ID="Button1" runat="server" Text="Button" OnClick="Button1_Click" />
              <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>

        </div>
    </form>
</body>
</html>
