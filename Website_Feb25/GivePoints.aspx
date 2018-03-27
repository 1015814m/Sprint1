<%@ Page Language="C#" AutoEventWireup="true" CodeFile="GivePoints.aspx.cs" Inherits="GivePoints" %>

<!DOCTYPE html>
<html>
    <head>
        <title>Give Points</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
        <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Poppins">
        <link href="css/bootstrap.min.css" rel="stylesheet">

        <link href="css/bootstrap.min.css" rel="stylesheet">

    <link href="css/custom.css" rel="stylesheet">

        

    <link href="https://fonts.googleapis.com/css?family=Roboto|Roboto+Slab:100,300,400,700" rel="stylesheet">
        <style>
        body,h1,h2,h3,h4,h5 {font-family: "Poppins", sans-serif;
                                 color: white;
        }
        body {font-size:16px;
              background-color:#fcb32a;
        }
        .w3-half img{margin-bottom:-6px;margin-top:16px;opacity:0.8;cursor:pointer}
        .w3-half img:hover{opacity:1}

        input[type=text], .ddl, textarea {
            width: 100%;
            padding: 12px;
            border: 1px solid #ccc;
            border-radius: 4px;
            box-sizing: border-box;
            margin-top: 6px;
            margin-bottom: 16px;
            resize: vertical;
            color:black;
        }
        .button
            {
                background-color: #fcb32a;
                color: white;
                padding: 8px 10px;
                border: none;
                border-radius: 4px;
                cursor: pointer;
            }

        .button:hover{
                background-color: #bf342a;
            }

        .container {
            border-radius: 5px;
            background-color: bisque;
            padding: 20px;
        }

            .hiddencol { 
                display: none; 

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
                    <li><a href="Rewards.aspx">Boards</a></li>

                    <li class="active"><a href="GivePoints.aspx">Reward</a></li>

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
        <h1 class="w3-jumbo"><b>Reward Team Members</b></h1>
        <h1 class="w3-xxxlarge"><b>Give Kudos:</b></h1>
          <hr style="width:50px;border:5px solid white; float: left;" class="w3-round">
          <br /><br />
        
        <form id="feed" runat="server">
            <asp:Label ID="Error" runat="server" ForeColor="Red"></asp:Label>
            <br />
            <br />
            <label >Team Member</label>
            <br />
            <asp:TextBox ID="txtSearchTeamMember" runat="server" required="" OnTextChanged="Search" AutoPostBack="true"></asp:TextBox>
            <asp:GridView ID="GVTeamMember" runat="server" Visible="False" AutoGenerateColumns="False" OnPageIndexChanging="OnPaging" AutoGenerateSelectButton="True" SelectedRowStyle-BackColor="#DCDCDC" CellPadding="4" ForeColor="#333333" GridLines="None">
                <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                <Columns>
                    <asp:BoundField DataField="EmployeeID" HeaderText="EmployeeID" ItemStyle-Width="150" ItemStyle-CssClass="hiddencol"  HeaderStyle-CssClass="hiddencol">
<HeaderStyle CssClass="hiddencol"></HeaderStyle>

<ItemStyle CssClass="hiddencol" Width="150px"></ItemStyle>
                    </asp:BoundField>
                    <asp:BoundField DataField="FullName" HeaderText="Name" ItemStyle-Width="150" >
                     
<ItemStyle Width="150px"></ItemStyle>
                    </asp:BoundField>
                     
                </Columns>
                <EditRowStyle BackColor="#999999" />
                <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" CssClass="w3-red" />
                <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" CssClass="w3-red" />
                <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />

<SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333"></SelectedRowStyle>
                <SortedAscendingCellStyle BackColor="#E9E7E2" />
                <SortedAscendingHeaderStyle BackColor="#506C8C" />
                <SortedDescendingCellStyle BackColor="#FFFDF8" />
                <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
            </asp:GridView>
            <br />
            <label>Give Kudos For:</label>
            <asp:DropDownList ID="DropDownCompanyValue" required= "" runat="server" CssClass="ddl"></asp:DropDownList>
            <label>Date:</label>
            <input id="txtDate" runat="server" type="text" required= "" placeholder="YYYY-MM-DD" />

            <label>Description:</label>
            <textarea id="txtDescription" required= "" runat="server" placeholder="Write a description of the activity completed..."
                style="height:200px" cols="20" name="S1" rows="1" maxlength="50"></textarea>

            <label>Points Given:</label>
            <asp:DropDownList ID="DropDownPointsGiven" required= "" runat="server" CssClass="ddl">
                <asp:ListItem Text="Select"></asp:ListItem>
                <asp:ListItem Text="10"></asp:ListItem>
                <asp:ListItem Text="25"></asp:ListItem>
                <asp:ListItem Text="50"></asp:ListItem>
            </asp:DropDownList>

            <label>Applaud For Being:</label>
            <asp:DropDownList ID="DropDownApplaud" required= "" runat="server" CssClass="ddl"></asp:DropDownList>

            <asp:Button ID="SubmitGivePoints" runat="server" Text="Submit" OnClick="SubmitGivePointsBtn_Click" CssClass="button" />
            <br />
            <asp:Label ID="Label" runat="server"></asp:Label>
        </form>
        
      </div>

    <div class="w3-container" id="givepoints" style="margin-top: 75px;">
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

        <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="js/bootstrap.min.js"></script>

    <script src="js/custom.js"></script>

    <script src="js/drop.js"></script>

    </body>
</html>