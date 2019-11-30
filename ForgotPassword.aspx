<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ForgotPassword.aspx.cs" Inherits="ForgotPassword" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>World's School</title>
    
    <link href="https://fonts.googleapis.com/css?family=Arimo" rel="stylesheet"/>
    <link rel="stylesheet" type="text/css" href="forgotPass.css"/>
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
       
        <div id="mySidenav" class="sidenav" >
            <div class="ques" visible="true" id="ques" runat="server">
                <asp:Label ID="Label1" runat="server" Text="Security Question:"></asp:Label>
                <br />
                <br />
                <asp:Label ID="Label2" Class="text" runat="server" Text="Your Email:"></asp:Label><br />
                <asp:TextBox ID="TextBox1" type="Email"  Class="textbox" runat="server"  placeholder="someone@abc.com" autocomplete="on"></asp:TextBox><br />
                <asp:RequiredFieldValidator id="reqemail"
              runat="server"
              ControlToValidate="TextBox1"
              ErrorMessage="Email is required!"
              SetFocusOnError="True" Display="Dynamic" style="color: red"/><br />
                <asp:Label ID="Label3" Class="text" runat="server" Text="Your Mother's First Name:"  ></asp:Label><br />
                <asp:TextBox ID="TextBox2" type="text" Class="textbox" runat="server" placeholder="Write here!"></asp:TextBox><br />
                <asp:Label ID="Label4" Class="text" runat="server"  Text="First Pet's Name:" ></asp:Label><br />
                <asp:TextBox ID="TextBox3" type="text" Class="textbox" runat="server" placeholder="Write here!"></asp:TextBox><br />
                <asp:Label ID="Label5" Class="text" runat="server" Text="Favorite Teacher's Name:" ></asp:Label><br />
                <asp:TextBox ID="TextBox" type="text" Class="textbox" runat="server" placeholder="Write here!"></asp:TextBox><br /><br />
                <asp:Label ID="Label6" runat="server" Visible="false" Style="color: red;margin: 0px 125px 0px -102px;" Text="This email you entered doesn't match"></asp:Label><asp:HyperLink ID="HyperLink1" Visible="false" Style="text-decoration: none; color: blue;" runat="server">Sign UP!</asp:HyperLink><br />
                <asp:Button ID="Button1" class="button" runat="server" Text="Submit" OnClick="Button1_Click1" />
                </div>


                <div id="pass" class="pass" style="margin: 180px 10px 10px 10px;" visible="false" runat="server">
                    <asp:Label ID="Label16" runat="server" Text="Update Your Password:"></asp:Label>
                <br />
                <br />
                <asp:Label ID="Label7" Class="text" runat="server" Text="New Password:"></asp:Label><br />
                <asp:TextBox ID="password" type="password" runat="server" Class="textbox"  placeholder="xxxxxx"></asp:TextBox><br />
                     <asp:RequiredFieldValidator id="passwordReq"
              runat="server"
              ControlToValidate="password"
              ErrorMessage="Password is required!"
              SetFocusOnError="True" Display="Dynamic" style="color: red" /><br />
                <asp:Label ID="Label8" Class="text" runat="server" Text="Confirm Password:"></asp:Label><br />
                <asp:TextBox ID="conpass" type="password" runat="server" Class="textbox" placeholder="xxxxxx"></asp:TextBox><br /><asp:RequiredFieldValidator id="confirmPasswordReq"
              runat="server" 
              ControlToValidate="conpass"
              ErrorMessage="Password confirmation is required!"
              SetFocusOnError="True" 
              Display="Dynamic" style="color: red" /><br />
                    <asp:CompareValidator id="comparePasswords" 
              runat="server"
              ControlToCompare="password"
              ControlToValidate="conpass"
              ErrorMessage="Your passwords do not match up!"
              Display="Dynamic" style="color: red" /><br />
                
                <asp:Button ID="Button2" class="button" runat="server" Text="Update" OnClick="Button2_Click1" />

                </div>
            
            </div>
        <asp:Image ID="Image1" src="pics/logo.png" runat="server" Style="width: 534px;text-align: left;float: right;margin: 172px 75px 0px 22px;" />
        <asp:Label ID="Label9" runat="server" Text="WORLD'S SCHOOL" Style="float: right;color: #1eff06;font-size: 67px;margin: 434px -591px 28px 19px; " ></asp:Label>
    </div>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server"></asp:SqlDataSource>
    </form>
</body>
</html>
