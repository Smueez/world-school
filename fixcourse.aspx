<%@ Page Language="C#" AutoEventWireup="true" CodeFile="fixcourse.aspx.cs" Inherits="fixcourse" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
     <title>World's School</title>
	<link rel="stylesheet" type="text/css" href="crsfix.css"/>
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
    <script type="text/javascript">
        function previewFile() {
            var preview = document.querySelector('#<%=Image1.ClientID %>');
            var file = document.querySelector('#<%=FileUpload1.ClientID %>').files[0];
            var reader = new FileReader();

            reader.onloadend = function () {
                preview.src = reader.result;
            }

            if (file) {
                reader.readAsDataURL(file);
            } else {
                preview.src = "";
            }
        }
    </script>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <div class="crsfrm">
            <h1 style="color: white;">Make a new Course</h1>
            <h2 style="font-size:23px">Lecturer Name:</h2>
            <asp:TextBox ID="TextBox1" runat="server" class="form-control" placeholder="Lecturer Name"></asp:TextBox><br />
            <h2 style="font-size:23px" >Course Title:</h2>
            <asp:TextBox ID="TextBox2" class="form-control"  runat="server" placeholder="Course Name"></asp:TextBox><br />
            <h2 style="font-size:23px" >Select a Cover:</h2>
            <asp:Image ID="Image1" class="image" src="pics/crs.jpg" runat="server" /> <br />
            <asp:FileUpload ID="FileUpload1" onchange="previewFile()" runat="server" style="margin:0px 0px 0px 100px; width:20px;"/><br />
            <asp:Label ID="StatusLabel" runat="server" visible="false"></asp:Label>
            <h2 style="font-size:23px" >Upload a Vedio:</h2>
            <asp:FileUpload ID="FileUpload2" runat="server" /><br />
            <h2 style="font-size:23px" >Details:</h2>
            <asp:TextBox ID="TextBox3" class="form-control" TextMode="multiline" Rows="5" runat="server" placeholder="Details..."></asp:TextBox><br />
            <asp:Button ID="Button1" class="btn btn-default btn-success btn-lg" style="margin: 0px 0px 0px 175px;" runat="server" Text="Update" OnClick="Button1_Click" />
        </div>
    </div>
    </form>
</body>
</html>
