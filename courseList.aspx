<%@ Page Language="C#" AutoEventWireup="true" CodeFile="courseList.aspx.cs" Inherits="courseList" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>World's School</title>
	<link rel="stylesheet" type="text/css" href="story.css"/>
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
        function openNav() {
            document.getElementById("mySidenav").style.width = "320px";
            //document.getElementById("main").style.marginLeft = "250px";
            document.body.style.backgroundColor = "rgba(0,0,0,0.4)";
            //document.getElementById("mainlec").style.fontSize = "30px";
        }

        function closeNav() {
            document.getElementById("mySidenav").style.width = "0";
            //document.getElementById("main").style.marginLeft= "0";
            document.body.style.backgroundColor = "white";
        }
        function openNav1() {
            document.getElementById("mySidenav1").style.width = "320px";
            //document.getElementById("main1").style.marginLeft = "250px";
            document.body.style.backgroundColor = "rgba(0,0,0,0.4)";
        }

        function closeNav1() {
            document.getElementById("mySidenav1").style.width = "0";
            //document.getElementById("main1").style.marginLeft= "0";
            document.body.style.backgroundColor = "white";
        }
        function openNav2() {
            document.getElementById("mySidenav2").style.width = "320px";
            //document.getElementById("main2").style.marginLeft = "250px";
            document.body.style.backgroundColor = "rgba(0,0,0,0.4)";
        }

        function closeNav2() {
            document.getElementById("mySidenav2").style.width = "0";
            //document.getElementById("main2").style.marginLeft= "0";
            document.body.style.backgroundColor = "white";
        }
        function openNav3() {
            document.getElementById("mySidenav3").style.width = "320px";
            //document.getElementById("main3").style.marginLeft = "250px";
            document.body.style.backgroundColor = "rgba(0,0,0,0.4)";
        }

        function closeNav3() {
            document.getElementById("mySidenav3").style.width = "0";
            //document.getElementById("main3").style.marginLeft= "0";
            document.body.style.backgroundColor = "white";
        }
        

    </script>

</head>
<body style="background-color: #eaeaea; background-size: cover;" >
    <form id="form1" runat="server">
        <div style="background-color: #eaeaea;">
        <script type="text/javascript">
            $(window).scroll(function () {
                if ($(document).scrollTop() > 50) {
                    $('nav').addClass('shrink');
                } else {
                    $('nav').removeClass('shrink');
                }
            });
        </script>
        

       <nav class="navbar navbar-inverse navbar-fixed-top" >
  <div class="container">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>
      <a class="navbar-brand" href="#" style="text-align:center; align-content: center; background-color: forestgreen; color: black;"><img src="pics/logo.png" style="    width: 43px;margin: -11px 0px -19px 47px;"/><br />World's School</a>
      <asp:TextBox ID="TextBox1" AutoCompleteType="Search" placeholder="Search..." runat="server"></asp:TextBox><asp:ImageButton ID="ImageButton1" src="pics/srch.png" runat="server" Style="width: 32px;margin: 0px 0px -10px -19px;" OnClientClick="search" />
      </div>
      
      <div id="div" runat="server" visible="true" class="collapse navbar-collapse">
          <ul class="nav navbar-nav pull-right">

              <li class="active"><asp:Image id="profile" runat="server" /></li>
              <li ><a href="http://localhost:63681/account.aspx"><asp:Label ID="Label1" runat="server" Text=""></asp:Label></a></li>
              <li><a href="http://localhost:63681/storypage.aspx">Home</a></li>
              <li><button class="btn btn-primary dropdown-toggle" type="button" data-toggle="dropdown" style="width: 70px;height: 50px;background-color: #222222;border: 0px;">&#9776;</button>
    <ul class="dropdown-menu" style="background-color: #222222; padding: 0px;">
        <li><asp:Button ID="Button3" runat="server" Text="About Us!" style="width: 100%;color: white;background-color: #222222;border: 0px;" OnClick="about_click"/></li>
      <li><asp:Button ID="Button5" runat="server" Text="Courses" style="width: 100%;color: white;background-color: #222222;border: 0px;" OnClick="crs"/></li>
        <li><asp:Button ID="Button2" runat="server" Text="Log Out" style="width: 100%;color: white;background-color: #222222;border: 0px;" OnClick="logout_click"/></li>
    </ul></li>
          </ul>
      </div>
       <div id="div1" runat="server" visible="false" class="collapse navbar-collapse">
         <ul class="nav navbar-nav pull-right">

              
              <li ><a href="http://localhost:63681/signin.aspx"><asp:Label ID="Label2" runat="server" Text="Sign in!"></asp:Label></a></li>
              
          </ul>
      </div>
  </div>
</nav>
       
        <div class="container-fluid" >
            <div class="row">
                <div class="col-lg-1"></div>
                <div class="col-lg-2">
                    <div class="catagori"  style="height: 100%; position: fixed;">
                        <h3 class="ref">References</h3>
                        <div id="mySidenav" class="sidenav">
                            <a href="javascript:void(0)" class="closebtn" onclick="closeNav()">&times;</a>
                            <h2 class="heading">Literature</h2>
                            <a href="https://www.britannica.com/art/English-literature" target="_blank">English</a>
                            <a href="https://www.ebanglalibrary.com/" target="_blank">Bangla</a>
                            <a href="http://www.literature.org.cn/" target="_blank">China</a>
                            <a href="https://www.enforex.com/espanol/cultura/literatura-espanola.html" target="_blank">Spaniol</a>

                        </div>
                        <div id="main">
                            <span style="font-size: 20px; cursor: pointer" onclick="openNav()" id="mainlec">&#9776; Literature</span>
                        </div>
                        <div id="mySidenav1" class="sidenav1">
                            <a href="javascript:void(0)" class="closebtn1" onclick="closeNav1()">&times;</a>
                            <h2 class="heading">Math</h2>
                            <a href="https://www.khanacademy.org/math/trigonometry" target="_blank">Trigonometric</a>
                            <a href="https://www.khanacademy.org/math/geometry-home" target="_blank">Geometric</a>
                            <a href="https://www.khanacademy.org/math/algebra" target="_blank">Algebra</a>
                            <a href="https://www.mathsisfun.com/numbers/complex-numbers.html" target="_blank">Complex Number</a>
                            <a href="https://www.khanacademy.org/math/differential-calculus/basic-differentiation-dc" target="_blank">Differentiation</a>
                            <a href="http://www.mathsisfun.com/calculus/integration-introduction.html" target="_blank">Integration</a>
                        </div>
                        <div id="main1">
                            <span style="font-size: 20px; cursor: pointer" onclick="openNav1()">&#9776; Math</span>
                        </div>
                        <div id="mySidenav2" class="sidenav2">
                            <a href="javascript:void(0)" class="closebtn2" onclick="closeNav2()">&times;</a>
                            <h2 class="heading">Programming</h2>
                            <a href="https://www.tutorialspoint.com/objective_c/" target="_blank">C</a>
                            <a href="http://www.cplusplus.com/doc/tutorial/" target="_blank">C++</a>
                            <a href="https://www.java.com/" target="_blank">JAVA</a>
                            <a href="https://www.python.org/" target="_blank">Python</a>
                            <a href="http://www.ruby-lang.org/" target="_blank">RUBY</a>
                            <a href="http://www.php.net/" target="_blank">PHP</a>
                            <a href="https://www.w3schools.com/asp/default.asp" target="_blank">ASP.NET/C#</a>
                            <a href="https://www.w3schools.com/html/" target="_blank">HTML & CSS</a>
                            <a href="https://www.w3schools.com/js/" target="_blank">Java Script</a>
                            <a href="https://www.w3schools.com/sql/" target="_blank">SQL</a>
                        </div>
                        <div id="main2">
                            <span style="font-size: 20px; cursor: pointer" onclick="openNav2()">&#9776; Programming</span>
                        </div>
                        <div id="mySidenav3" class="sidenav3">
                            <a href="javascript:void(0)" class="closebtn3" onclick="closeNav3()">&times;</a>
                            <h2 class="heading">Physics</h2>
                            <a href="https://www.space.com/17661-theory-general-relativity.html" target="_blank">Theory of Relativity</a>
                            <a href="http://bigbangtheory.wikia.com/wiki/Stephen_Hawking" target="_blank">Big Bang Theory</a>
                            <a href="http://hyperphysics.phy-astr.gsu.edu/hbase/mod6.html" target="_blank">Black Body Radiotion</a>
                            <a href="http://www.physicsclassroom.com/class/circles/Lesson-3/Newton-s-Law-of-Universal-Gravitation" target="_blank">Newton's Gravitational Law</a>
                        </div>
                        <div id="main3">
                            <span style="font-size: 20px; cursor: pointer" onclick="openNav3()">&#9776; Physics</span>
                        </div>

                    </div>
                </div>

                <div class="col-lg-8" style="background-color: white; box-shadow: 1px 1px #d4d4d4;">
                    <div>
                        <h1 style="text-align: center; font-size: 113px;">Courses</h1>
                        <asp:LinkButton ID="L1" OnClick="one" runat="server" class="courselink">
                        <div id="box" class="container-fluid">
                            <div class="col-lg-4"><asp:Image ID="p1"  class="courses" runat="server" /></div>
                            <div class="col-lg-1"></div>
                            <div class="col-lg-7"><h2>Corse Title: </h2>
                            <asp:Label ID="a1" runat="server" Text="" style="font-size: 30px;" />
                            <h3>Lecturer Name: </h3>
                            <asp:Label ID="b1" runat="server" ></asp:Label>
                                <asp:Label ID="c1" runat="server" ></asp:Label>
                            </div>                                        
                        </div></asp:LinkButton><br />

                         <asp:LinkButton ID="L2" OnClick="two" runat="server" class="courselink">
                        <div id="box" class="container-fluid">
                            <div class="col-lg-4"><asp:Image ID="p2" class="courses" runat="server" /></div>
                            <div class="col-lg-1"></div>
                            <div class="col-lg-7">
                                <h2>Corse Title: </h2>
                                <asp:Label ID="a2" runat="server" Text=""   style="font-size: 30px;" />
                             <h3>Lecturer Name:</h3>
                            <asp:Label ID="b2" runat="server" ></asp:Label><asp:Label ID="c2" runat="server" ></asp:Label>
                            </div></div></asp:LinkButton><br />

                     <asp:LinkButton ID="L3" OnClick="three" runat="server" class="courselink">
                        <div id="box" class="container-fluid">
                            <div class="col-lg-4"><asp:Image ID="p3" class="courses" runat="server" /></div>
                            <div class="col-lg-1"></div>
                            <div class="col-lg-7"><h2>Corse title: </h2>
                            <asp:Label ID="a3" runat="server" Text=""  style="font-size: 30px;"/>
                            <h3>Lecturer Name: </h3>
                            <asp:Label ID="b3" runat="server" ></asp:Label><asp:Label ID="c3" runat="server" ></asp:Label></div>
                        </div></asp:LinkButton><br />
                        
                       <asp:LinkButton ID="L4" OnClick="four" runat="server" class="courselink">
                        <div id="box" class="container-fluid">
                            <div class="col-lg-4"><asp:Image ID="p5"  class="courses" runat="server" /></div>
                            <div class="col-lg-1"></div>
                            <div class="col-lg-7"><h2>Corse Title: </h2>
                            <asp:label ID="a5" runat="server" Text=""  style="font-size: 30px;" />
                            <h3>Lecturer Name: </h3>
                            <asp:Label ID="b5" runat="server" ></asp:Label><asp:Label ID="c5" runat="server" Text="Label"></asp:Label></div>
                        </div></asp:LinkButton><br />

                    <asp:LinkButton ID="L5" OnClick="five" runat="server" class="courselink">
                        <div id="box" class="container-fluid">
                            <div class="col-lg-4"><asp:Image ID="p4" class="courses" runat="server" /></div>
                            <div class="col-lg-1"></div>
                            <div class="col-lg-7"><h2>Corse Title: </h2>
                            <asp:label ID="a4" runat="server" Text="" style="font-size: 30px;" />
                            <h3>Lecturer Name: </h3>
                            <asp:Label ID="b4" runat="server" ></asp:Label><asp:Label ID="c4" runat="server" Text="Label"></asp:Label></div>
                        </div></asp:LinkButton><br />

                    <asp:LinkButton ID="L6" OnClick="six" runat="server" class="courselink">
                        <div id="box" class="container-fluid">
                            <div class="col-lg-4"><asp:Image ID="p6"  class="courses" runat="server" /></div>
                            <div class="col-lg-1"></div>
                            <div class="col-lg-7"><h2>Corse title: </h2>
                            <asp:label ID="a6" runat="server" Text="" style="background-color:white;" />
                            <h3>Lecturer Name: </h3>
                            <asp:Label ID="b6" runat="server" ></asp:Label><asp:Label ID="c6" runat="server" ></asp:Label></div>
                        </div></asp:LinkButton><br />
                        
                    <asp:LinkButton ID="L7" OnClick="seven" runat="server" class="courselink">
                        <div id="box" class="container-fluid">
                            <div class="col-lg-4"><asp:Image ID="p7"  class="courses" runat="server" /></div>
                            <div class="col-lg-1"></div>
                            <div class="col-lg-7"><h2>Corse title: </h2>
                            <asp:label ID="a7" runat="server" Text="" style="font-size: 30px;" />
                            <h3>Lecturer Name: </h3>
                            <asp:Label ID="b7" runat="server" ></asp:Label><asp:Label ID="c7" runat="server" ></asp:Label></div>
                        </div></asp:LinkButton><br />

                    <asp:LinkButton ID="L8" OnClick="eight" runat="server" class="courselink">
                        <div id="box" class="container-fluid">
                            <div class="col-lg-4"><asp:Image ID="p8"  class="courses" runat="server" /></div>
                            <div class="col-lg-1"></div>
                            <div class="col-lg-7"><h2>Corse title: </h2>
                            <asp:label ID="a8" runat="server" Text="" style="font-size: 30px;" />
                            <h3>Lecturer Name: </h3>
                            <asp:Label ID="b8" runat="server" ></asp:Label><asp:Label ID="c8" runat="server" ></asp:Label></div>
                        </div></asp:LinkButton><br />

                    <asp:LinkButton ID="L9" OnClick="nine" runat="server" class="courselink">
                        <div id="box" class="container-fluid">
                            <div class="col-lg-4"><asp:Image ID="p9"  class="courses" runat="server" /></div>
                            <div class="col-lg-1"></div>
                            <div class="col-lg-7"><h2>Corse title: </h2>
                            <asp:label ID="a9" runat="server" Text="" style="font-size: 30px;" />
                            <h3>Lecturer Name: </h3>
                            <asp:Label ID="b9" runat="server" ></asp:Label><asp:Label ID="c9" runat="server" ></asp:Label></div>
                        </div></asp:LinkButton><br />

                        <asp:LinkButton ID="L10" OnClick="ten" runat="server" class="courselink">
                        <div id="box" class="container-fluid">
                            <div class="col-lg-4"><asp:Image ID="p10"  class="courses" runat="server" /></div>
                            <div class="col-lg-1"></div>
                            <div class="col-lg-7"><h2>Corse title: </h2>
                            <asp:label ID="a10" runat="server" Text=""  style="font-size: 30px;" />
                            <h3>Lecturer Name: </h3>
                            <asp:Label ID="b10" runat="server" ></asp:Label><asp:Label ID="c10" runat="server" ></asp:Label></div>
                        </div></asp:LinkButton><br />

                    <asp:Button ID="Button1" runat="server" class="btn btn-success" Text="Next >>" OnClick="next" style="float: right;" />
                <asp:Button ID="Button4" runat="server" class="btn btn-warning" Text="<< Prevous" OnClick="prevous" Style="float: left;" /> <br /><br />
                    </div><br />

                </div>
                <div class="col-lg-3" style="background-color: white; box-shadow: 1px 1px #d4d4d4;">

                </div>
            </div>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [user]"></asp:SqlDataSource>
            </div>
    
    
    </div>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [post]"></asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [cmmnt]"></asp:SqlDataSource>
    </form>
</body>
</html>