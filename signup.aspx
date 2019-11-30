<%@ Page Language="C#" AutoEventWireup="true" CodeFile="signup.aspx.cs" Inherits="signup" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>World's School</title>
    <link rel="icon" href="pics/logo.png"/>
    <link rel="stylesheet" type="text/css" href="signup.css"/>
    <meta charset="utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"/>
    <script type="text/javascript">
        function previewFile() {
            var preview = document.querySelector('#<%=propic.ClientID %>');
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
        
    <div style="text-align: center; ">
        <div >
        <img src="pics/logo.png" style="width: 133px;margin: 10px 10px -40px 12px;">
            <h1 class="page-header">WORLD'S SCHOOL</h1>
       
        
    <div class="form-container" style="margin: 10px 10px 10px 89px;" >
        
            <input id='step2' type='checkbox'>
            <input id='step3' type='checkbox'>
            <div id="part1" class="form-group" style="width: 451px; margin: -12px 0px 0px 526px;">
                <div class="panel panel-primary">
                    <div class="panel-heading">
                        <h1 class="panel-title" style="font-size: 24px;">Personal Details</h1>
                    </div>
                    <label for="name">First Name:</label>
                    <asp:TextBox ID="fname" runat="server" class="form-control" placeholder="First Name"></asp:TextBox>                 
                    <label for="name">Last Name:</label>
                    <asp:TextBox ID="lname" runat="server" class="form-control" placeholder="Last Name"></asp:TextBox>
                    <label for="email">Email:</label>
                    <asp:TextBox ID="email" runat="server" class="form-control" placeholder="Email" required autocomplete="on"></asp:TextBox>

                    <asp:RequiredFieldValidator id="reqemail"
              runat="server"
              ControlToValidate="email"
              ErrorMessage="Email is required!"
              SetFocusOnError="True" Display="Dynamic" style="color: red"/>

                    <label for="name">Enter Password:</label>
                    <asp:TextBox ID="password" type="password" runat="server" class="form-control" placeholder="xxxxxx"></asp:TextBox>

                    <asp:RequiredFieldValidator id="passwordReq"
              runat="server"
              ControlToValidate="password"
              ErrorMessage="Password is required!"
              SetFocusOnError="True" Display="Dynamic" style="color: red" />

                    <label for="name">Re-enter Password:</label>
                    <asp:TextBox ID="password1" type="password" runat="server" class="form-control" placeholder="xxxxxx"></asp:TextBox>

                    <asp:RequiredFieldValidator id="confirmPasswordReq"
              runat="server" 
              ControlToValidate="password1"
              ErrorMessage="Password confirmation is required!"
              SetFocusOnError="True" 
              Display="Dynamic" style="color: red" />

          <asp:CompareValidator id="comparePasswords" 
              runat="server"
              ControlToCompare="password"
              ControlToValidate="password1"
              ErrorMessage="Your passwords do not match up!"
              Display="Dynamic" style="color: red" /><br />
                    <label for="name">Birth Date:</label>
                    <div class="form-group row" style="margin: 0px -116px 10px 0px;">
                        <div class="col-xs-2">
                            <label for="ex1">Date</label>
                                <asp:DropDownList ID="date" class="form-control" type="number" runat="server">
                                    <asp:ListItem Enabled="true" Text="Select Date" Value="-1"></asp:ListItem>
                                    <asp:ListItem Text="1" Value="1"></asp:ListItem>
                                    <asp:ListItem Text="2" Value="2"></asp:ListItem>
                                    <asp:ListItem Text="3" Value="3"></asp:ListItem>
                                    <asp:ListItem Text="4" Value="4"></asp:ListItem>
                                    <asp:ListItem Text="5" Value="5"></asp:ListItem>
                                    <asp:ListItem Text="6" Value="6"></asp:ListItem>
                                    <asp:ListItem Text="7" Value="7"></asp:ListItem>
                                    <asp:ListItem Text="8" Value="8"></asp:ListItem>
                                    <asp:ListItem Text="9" Value="9"></asp:ListItem>
                                    <asp:ListItem Text="10" Value="10"></asp:ListItem>
                                    <asp:ListItem Text="11" Value="11"></asp:ListItem>
                                    <asp:ListItem Text="12" Value="12"></asp:ListItem>
                                    <asp:ListItem Text="13" Value="13"></asp:ListItem>
                                    <asp:ListItem Text="14" Value="14"></asp:ListItem>
                                    <asp:ListItem Text="15" Value="15"></asp:ListItem>
                                    <asp:ListItem Text="16" Value="16"></asp:ListItem>
                                    <asp:ListItem Text="17" Value="17"></asp:ListItem>
                                    <asp:ListItem Text="18" Value="18"></asp:ListItem>
                                    <asp:ListItem Text="19" Value="19"></asp:ListItem>
                                    <asp:ListItem Text="20" Value="20"></asp:ListItem>
                                    <asp:ListItem Text="21" Value="21"></asp:ListItem>
                                    <asp:ListItem Text="22" Value="22"></asp:ListItem>
                                    <asp:ListItem Text="23" Value="23"></asp:ListItem>
                                    <asp:ListItem Text="24" Value="24"></asp:ListItem>
                                    <asp:ListItem Text="25" Value="25"></asp:ListItem>
                                    <asp:ListItem Text="26" Value="26"></asp:ListItem>
                                    <asp:ListItem Text="27" Value="27"></asp:ListItem>
                                    <asp:ListItem Text="28" Value="28"></asp:ListItem>
                                    <asp:ListItem Text="29" Value="29"></asp:ListItem>
                                    <asp:ListItem Text="30" Value="30"></asp:ListItem>
                                    <asp:ListItem Text="31" Value="31"></asp:ListItem>
                                </asp:DropDownList>
                        </div>
                        <div class="col-xs-4">
                            <label for="sel1">Month</label>
                            <asp:DropDownList ID="mounth" class="form-control" placeholder="MMM" runat="server">
                                <asp:ListItem Enabled="true" Text="Select Month" Value="-1"></asp:ListItem>
                                <asp:ListItem Text="January" Value="Jan"></asp:ListItem>
                                <asp:ListItem Text="February" Value="Feb"></asp:ListItem>
                                <asp:ListItem Text="March" Value="MAR"></asp:ListItem>
                                <asp:ListItem Text="Aprill" Value="APR"></asp:ListItem>
                                <asp:ListItem Text="May" Value="MAY"></asp:ListItem>
                                <asp:ListItem Text="June" Value="JUN"></asp:ListItem>
                                <asp:ListItem Text="July" Value="JUL"></asp:ListItem>
                                <asp:ListItem Text="August" Value="AUG"></asp:ListItem>
                                <asp:ListItem Text="September" Value="SEP"></asp:ListItem>
                                <asp:ListItem Text="Octobaer" Value="OCT"></asp:ListItem>
                                <asp:ListItem Text="November" Value="NOV"></asp:ListItem>
                                <asp:ListItem Text="December" Value="DEC"></asp:ListItem>
                            </asp:DropDownList>
                        </div>
                        <div class="col-xs-3">
                            <label for="ex3">Year</label>
                            <asp:TextBox ID="year" class="form-control" runat="server" type="text" placeholder="YYYY"></asp:TextBox>
                        </div>
                    </div>
                    <label for="name">Country:</label><asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Table]"></asp:SqlDataSource>
                   <asp:TextBox ID="Country" runat="server" AutoCompleteType="BusinessCountryRegion" class="form-control" placeholder="Your Country"></asp:TextBox> 
                    <label for="sex">Select Sex:</label>
                   
                    <asp:RadioButtonList Class="form-control" ID="sex" runat="server">
                        <asp:ListItem  Text="Male" Value="Male"></asp:ListItem>
                        <asp:ListItem Text="Female" Value="Female"></asp:ListItem>
                    </asp:RadioButtonList>
                    <br/>
                    <label >Occupation:</label>
                    <asp:TextBox ID="occu" class="form-control" placeholder="student/employee" runat="server"></asp:TextBox>
                    <label>Institution/Company name:</label>
                    <asp:TextBox ID="inst" class="form-control" placeholder="Your Institution" runat="server"></asp:TextBox>
                    <label for="aboutyou">About you:</label>
                    <asp:TextBox ID="comment" class="form-control" placeholder="Your interest,hobby,favorites etc" TextMode="multiline" Rows="5" runat="server" />
                   <br/>
                    <div class="btn-group btn-group-lg" role="group" aria-label="...">
                        <label for='step2' id="continue-step2" class="continue">
                            <div class="btn btn-default btn-success btn-lg">Next >></div>
                        </label>
                    </div>
                </div>
            </div>

            <div id="part2" class="form-group" style="width: 451px;margin: -12px 0px 0px 526px;">
                <div class="panel panel-primary">
                    <div class="panel-heading">
                        <h1 class="panel-title" style="font-size: 24px;">Security Questions</h1>
                    </div>
                    <label for="name">Mother's First Name:</label>
                    <asp:TextBox ID="father" class="form-control" placeholder="Father's Name" runat="server"></asp:TextBox>

                    <label for="number">Phone Number:</label>
                    <asp:TextBox ID="phone" class="form-control" placeholder="Phone/Mobile" runat="server"></asp:TextBox>
                    <label for="name">Birth Place:</label>
                    <asp:TextBox ID="birthplace" class="form-control" placeholder="Birth Place" runat="server"></asp:TextBox>

                    <label for="name">First Pet's Name:</label>
                    <asp:TextBox ID="food" class="form-control"  placeholder="Write Any" runat="server"></asp:TextBox>
                    
                    <label for="name">Favorite Teacher's Name:</label>
                    <asp:TextBox ID="favplace" class="form-control" placeholder="Write Any" runat="server"></asp:TextBox>
                  
                    <div class="btn-group btn-group-lg btn-group-justified" role="group" aria-label="...">

                        <label for='step2' id="back-step2" class="back">
                            <div class="btn btn-default btn-primary btn-lg" role="button"><< Previous</div>
                        </label>


                        <label for='step3' id="continue-step3" class="continue">
                            <div class="btn btn-default btn-success btn-lg" role="button">Next >></div>
                        </label>

                    </div>
                </div>
            </div>

            <div id="part3" class="form-group" style="width: 451px ; margin: -12px 0px 0px 526px;">
                <div class="panel panel-primary">
                    <div class="panel-heading">
                        <h1 class="panel-title" style="font-size: 24px;">Profile Picture</h1>

                    </div>
                    <br/>
                    <asp:Image ID="propic" src="pics/profile.jpg" runat="server" style="width: 165px;" />
                    <br/><br/>
                    <%--<input ID="FileUpload1" type="file" name="file" onchange="previewFile()"  runat="server" />--%>
                    <asp:FileUpload ID="FileUpload1" class="form-control" type="file" name="file" onchange="previewFile()" runat="server" /><br><br>
                    
                    <asp:Label ID="StatusLabel" runat="server" Text="" color="red" Visible="false"></asp:Label>
                    <br/>

                    <div class="btn-group btn-group-lg" role="group" aria-label="...">
                        <label for='step3' id="back-step3" class="back">
                            <div class="btn btn-default btn-primary btn-lg"> << Previous</div>
                        </label>
                        <label class="continue">
                             <asp:Button ID="Button1" runat="server" class="btn btn-default btn-success btn-lg" Text="Submit" OnClick="Button1_Click1" />
                        </label>
                    </div>                
            </form>
</body>
</html>
