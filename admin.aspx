<%@ Page Language="C#" AutoEventWireup="true" CodeFile="admin.aspx.cs" Inherits="admin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>World's School</title>
	<link rel="stylesheet" type="text/css" href="admin.css"/>
    <link rel="icon" href="pics/logo.png"/>
	<link href="https://fonts.googleapis.com/css?family=Indie+Flower|Nanum+Brush+Script|Shadows+Into+Light" rel="stylesheet"/>
	<meta charset="utf-8"/>
  <meta name="viewport" content="width=device-width, initial-scale=1"/>
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"/>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <meta name="viewport" content="width=device-width, initial-scale=1"/>
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css"/>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css"/>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <div class="log-form">
  <h2 style="color: white; text-align:center;">Login as Admin</h2>
  <div class="form">
    <asp:TextBox ID="TextBox1"  Class="input" placeholder="username" runat="server"></asp:TextBox>
   <asp:TextBox id="Password1" type="password" Class="input" placeholder="xxxxx" runat="server"></asp:TextBox>
      <asp:Label ID="Label1" runat="server" Visible="false" style="color:red;" ></asp:Label><br />
    <asp:Button ID="Button1" class="btn btn-info" runat="server" Text="Log In" OnClick="Button1_Click" />
    
  </div>
</div>
    </div>
    </form>
</body>
</html>
