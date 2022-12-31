<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="validatation.aspx.cs" Inherits="masterPage.WebForm2" %>




<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


  
        <div>

            





         <%--   //////////////////////////////////////////////////////////////////////////Your name /////////////////////////////////////--%>
            <asp:Label ID="Label2" runat="server" Text="Your name "></asp:Label>

            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>

          <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="RequiredFieldValidator" ControlToValidate="TextBox1" ForeColor="Red"></asp:RequiredFieldValidator>


            <br />

            <br />
           <%-- ///////////////////////////////////////////////////////////////////////////your password ////////////////////////////////////////--%>
          <%--  <asp:Label ID="Your Password" runat="server" Text="Label"></asp:Label>--%>


             <asp:Label ID="Label1" runat="server" Text="Your password "></asp:Label>
            <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
           <%-- <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="RequiredFieldValidator" ControlToValidate="TextBox2" ForeColor="Red"></asp:RequiredFieldValidator>--%>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="RegularExpressionValidator" ControlToValidate="TextBox2" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
            <br />
            <br />

              <%-- ///////////////////////////////////////////////////////////////////////////your password ////////////////////////////////////////--%>
            <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>
            <asp:TextBox ID="val1" runat="server" > </asp:TextBox>

             <asp:Label ID="Label4" runat="server" Text="Label"></asp:Label>
            <asp:TextBox ID="val2" runat="server">It should be greater than first value</asp:TextBox>



            <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="CompareValidator" ControlToValidate="val1" ControlToCompare="val2"  Operator="LessThan" Type="Integer" ></asp:CompareValidator>


           <%-- ////////////////////////////////////////////////////////////////////////////////////////// range ///////////////////////////////--%>
            <p> Enter value between 100 and 200 </p>

             <asp:Label ID="Label5" runat="server" Text="enter the value"></asp:Label>
             <asp:TextBox ID="TextBox3" runat="server" > </asp:TextBox> 
            <asp:RangeValidator ID="RangeValidator1" runat="server" ErrorMessage="Enter value in specified range"  ControlToValidate="TextBox3"  MaximumValue="201" MinimumValue="99"  SetFocusOnError="true" Type="Integer" ></asp:RangeValidator>
            <asp:Button ID="Button1" runat="server" Text="Button" />

            <asp:ValidationSummary ID="ValidationSummary1" runat="server" />

        </div>
        

</asp:Content>
