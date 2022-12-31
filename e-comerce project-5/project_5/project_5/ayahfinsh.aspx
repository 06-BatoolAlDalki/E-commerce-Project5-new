<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ayahfinsh.aspx.cs" Inherits="project_5.ayahfinsh" %>



<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
     <style>
      body {
        text-align: center;
        padding: 40px 0;
        background: #EBF0F5;
        background-color:#002046;
      }
        h1 {
          color: #88B04B;
          font-family: "Nunito Sans", "Helvetica Neue", sans-serif;
          font-weight: 900;
          font-size: 40px;
          margin-bottom: 10px;
        }
        p {
          color: #404F5E;
          font-family: "Nunito Sans", "Helvetica Neue", sans-serif;
          font-size:20px;
          margin: 0;
        }
      i {
        color: #9ABC66;
        font-size: 100px;
        line-height: 200px;
        margin-left:-15px;
      }
      .card {
        background: white;
        padding: 60px;
        border-radius: 4px;
        box-shadow: 0 2px 3px #C8D0D8;
        display: inline-block;
        margin: 0 auto;
        
    margin-top: 60px;
      }

      .bytt {
    background-color: #88B04B;
    color: white;
    font-family: 'Times New Roman';
    font-weight: bold;
    font-style: italic;
   margin-left:37%;
    padding: 10px;
    height: 50px;
    width: 150px;
    margin-top:2%;
    font-size: 25px;
    text-decoration: none;
    border:4px solid white;
    display:block;
}
      h1 {
            font-family: 'Times New Roman';
    font-style: italic;
          color: #88B04B;
/*          font-family: "Nunito Sans", "Helvetica Neue", sans-serif;
*/          font-weight: 900;
          font-size: 40px;
          margin-bottom: 10px;
        }
        p {
            font-family: 'Times New Roman';
   
          color: #404F5E;
/*          font-family: "Nunito Sans", "Helvetica Neue", sans-serif;
*/          font-size:30px;
          margin: 0;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
            <div class="card">
      <div style="border-radius:200px; height:200px; width:200px; background: #F8FAF5; margin:0 auto;">
        <i class="checkmark">✓</i>
      </div>
        <h1>The Order Has Been Successful<br />
Thank You</h1> 
        <p>We received your purchase request;<br/> we'll be in touch shortly!</p>
                <asp:LinkButton ID="LinkButton1" runat="server" PostBackUrl="~/landing.aspx" CssClass="bytt">Back To Home</asp:LinkButton>
      </div>
    </form>
</body>
</html>
