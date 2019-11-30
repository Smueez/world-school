
<%@ Page Language="C#" AutoEventWireup="true" CodeFile="signin.aspx.cs" Inherits="signin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>World's School</title>
    <link rel="stylesheet" type="text/css" href="StyleSheet.css">
	<link href="https://fonts.googleapis.com/css?family=Indie+Flower|Nanum+Brush+Script|Shadows+Into+Light" rel="stylesheet">
	<link href="https://fonts.googleapis.com/css?family=Itim|Rammetto+One|Ubuntu" rel="stylesheet">
    <link rel="icon" href="pics/logo.png">
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <div class="blurred-box" style="margin: 57px 1px 53px 281px;">
  <div class="user-login-box">
    <span class="user-icon"></span><br>
    <h3><b>WORLD'S SCHOOL</b></b></h3><br>
    <h2 class="login-heading">Login to your account</h2><br>
    <div class="user-name">Email:</div>
    <asp:TextBox ID="email" runat="server" class="email" type="Email" placeholder="someone@abc.com" autocomplete="on"></asp:TextBox><br>
  <div class="Password">Password:</div>
  <asp:TextBox ID="password" class="passwordbar" type="password" placeholder="xxxxxx" autocomplete="on" runat="server"></asp:TextBox>
    <a href="http://localhost:63681/ForgotPassword.aspx" style="text-decoration:none">Forget password?</a>
    <a href="http://localhost:63681/signup.aspx" style="text-decoration:none">Sign up!</a><br/>
      <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [email], [password] FROM [Table]"></asp:SqlDataSource>
      <asp:Label ID="Label1" runat="server" Text="" style="font-size: 16px; color: red;" Visible="false"></asp:Label><br />
      <asp:Button ID="submit" class="btn btn-submit" runat="server" Text="Submit" Style="margin: 19px 0px 0px 0px;" OnClick="submit_Click1" />
  </div>
</div>
<script src="signin.js"></script>
    </div>
    </form>
</body>
</html>
