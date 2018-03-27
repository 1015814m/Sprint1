<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Rewards.aspx.cs" Inherits="Rewards" %>

<!DOCTYPE html>
<html>
    <head>
        <title>View Rewards</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
        <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Poppins">

        <link href="css/bootstrap.min.css" rel="stylesheet">

    <link href="css/custom.css" rel="stylesheet">

    <link href="https://fonts.googleapis.com/css?family=Roboto|Roboto+Slab:100,300,400,700" rel="stylesheet">
        <style>
        body,h1,h2,h3,h4,h5 {font-family: "Poppins", sans-serif}
        body {font-size:16px;}
        .button
        {
            background-color: #F44336;
            color: white;
            padding: 12px 20px;
            border: none;
            border-radius: 4px;
            cursor: pointer;
        }
        .button:hover{
            background-color: #bf342a;
        }
        input[type=text], .ddl, textarea {
            width: 100%;
            padding: 12px;
            border: 1px solid #ccc;
            border-radius: 4px;
            box-sizing: border-box;
            margin-top: 6px;
            margin-bottom: 16px;
            resize: vertical;
        }
        .welcomelabel {
            
            font-weight: bold;
            font-size: x-large;
        }
        .w3-half img{margin-bottom:-6px;margin-top:16px;opacity:0.8;cursor:pointer;}
        .w3-half img:hover{opacity:1}
            #feed {
                height: 62px;
            }

        </style>
    </head>
    <body>

        <nav class="navbar navbar-inverse">
        <div class="container-fluid" style="padding-left: 30px; padding-right: 50px;">
            <div class="navbar-header">
                
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#MyNavbar">
                    <img src="img/profile_icon.png" class="toppic"></a>
                </button>

                <a class="navbar-brand" href="GivePoints.aspx"><img id="logo-img" src="img/applaud_full.png"></a>
            </div>
            <div class="collapse navbar-collapse" id="MyNavbar">
                <ul class="nav navbar-nav navbar-right">
                    
                    <li><a href="HomePage.aspx">Home</a></li>
                    <li class="active"><a href="Rewards.aspx">Boards</a></li>

                    <li><a href="GivePoints.aspx">Reward</a></li>

                    <li class="hidden-xl hidden-lg hidden-md hidden-sm"><a href="#">Profile</a></li>
                    

                    <li class="dropdown">
                        <a href="#" class="dropdown-toggle hidden-xs" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false" style="padding-top: 12px;"><img src="img/profile_icon.png" class="toppic"> <span class="caret"></span></a>
                            <ul class="dropdown-menu righted">
                                <li class="dropdown-header"><%=theName%></li>
                                <li class="dropdown-header"><%=thePoints%></li>
                                <li role="separator" class="divider"></li>
                                <li><a href="Logout.aspx">Log Out</a></li>
                            </ul>
                    </li>

                </ul>
            </div>
        </div>
    </nav>

    

    <!-- !PAGE CONTENT! -->
    <div class="w3-main" style="margin-left:340px;margin-right:40px">

      <!-- Header -->
      <div class="w3-container" style="margin-top:80px" id="showcase">
        <h1 class="w3-jumbo"><b>View Rewards</b></h1>
        
        <form id="feed" runat="server">
            
            
            <h3 class="w3-xlarge"><asp:Label ID="lblPoints" CssClass="welcomelabel" runat="server" Text=""></asp:Label></h3>
            <hr style="width:50px;border:5px solid #fcb32a; float: left;" class="w3-round">
            
            <div class="row" style="margin-top:30px;">
                <div class="col-sm-12">
                    <h1 style="color:#af1a1a;">Still in a Giving Mood?</h1>
                    <button class="charity-btn">Donate Money to Charity</button>
                </div>
            </div>


            <br />

            <asp:Label ID="lblSuccess" runat="server" Text=""></asp:Label>



            <asp:Label ID="errorMessage" runat="server" Text=""></asp:Label>
            <br />
            <br />
        </form>
        
      </div>

    <div class="w3-container" id="viewreward" style="margin-top: 75px;">
    </div>
  

    <!-- End page content -->
    </div>

    <!-- W3.CSS Container -->
    <!--<div class="w3-light-grey w3-container w3-padding-32" style="margin-top:75px;padding-right:58px"><p class="w3-right">Powered by <a href="https://www.w3schools.com/w3css/default.asp" title="W3.CSS" target="_blank" class="w3-hover-opacity">w3.css</a></p></div>-->

    <script>
        // Script to open and close sidebar
        function w3_open() {
            document.getElementById("mySidebar").style.display = "block";
            document.getElementById("myOverlay").style.display = "block";
        }

        function w3_close() {
            document.getElementById("mySidebar").style.display = "none";
            document.getElementById("myOverlay").style.display = "none";
        }

        // Modal Image Gallery
        function onClick(element) {
            document.getElementById("img01").src = element.src;
            document.getElementById("modal01").style.display = "block";
            var captionText = document.getElementById("caption");
            captionText.innerHTML = element.alt;
        }
    </script>

        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="js/bootstrap.min.js"></script>

    <script src="js/custom.js"></script>

    <script src="js/drop.js"></script>

    </body>
</html>