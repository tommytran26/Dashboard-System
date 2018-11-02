<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminView.aspx.cs" Inherits="DashboardSystem.AdminView" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <!-- Latest compiled and minified CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" />

    <!-- jQuery library -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

    <!-- Latest compiled JavaScript -->
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

    <link href="dashStyle.css" rel="stylesheet" />

</head>
<body>
    <form id="form1" runat="server">
        <!-- Nav Bar -->
        <nav class="navbar navbar-default">
            <div class="container-fluid">
                <div class="navbar-header">
                    <a class="navbar-brand" href="#" title="Temple Gen Ed">
                        <img style="max-width: 150px; margin-top: -7px;" src="images/templelogo.png" />
                    </a>
                </div>
                <ul class="nav navbar-nav">
                    <li>
                        <asp:Button ID="btnUpload" CssClass="btn btn-primary btn-default navbutton" runat="server" Text="Upload Data" OnClick="btnUpload_Click" />
                    </li>
                    <li>
                        <asp:Button ID="btnUsers" CssClass="btn btn-primary btn-default navbutton" runat="server" Text="Add/Edit Users" OnClick="btnUsers_Click" />
                    </li>
                    <li>
                        <asp:Button ID="btnDownloadGraphs" CssClass="btn btn-primary btn-default navbutton" runat="server" Text="Download Graphs" />
                    </li>
                    <li>
                        <asp:Button ID="btnLogOut" CssClass="btn btn-primary btn-default navbutton" runat="server" Text="Log Out" OnClick="btnLogOut_Click" />
                    </li>
                </ul>
            </div>
        </nav>



        
        

        <div class="filters">
            <asp:Panel ID="Panel3" runat="server" ScrollBars="Vertical" CssClass="panels" BorderColor="Black" BorderStyle="Solid">
                <h2>Department</h2>
                <asp:RadioButtonList ID="RadioButtonList1" runat="server">
                    <asp:ListItem>Computer Science</asp:ListItem>
                    <asp:ListItem>Math</asp:ListItem>
                    <asp:ListItem>Biology</asp:ListItem>
                    <asp:ListItem>Chemistry</asp:ListItem>
                    <asp:ListItem>Physics</asp:ListItem>
                    <asp:ListItem>Earth and Environmental Science</asp:ListItem>
                </asp:RadioButtonList>
                <h2>Course</h2>
                <asp:CheckBoxList ID="CheckBoxList2" runat="server">
                    <asp:ListItem>CIS3309</asp:ListItem>
                    <asp:ListItem>CIS3342</asp:ListItem>
                    <asp:ListItem>CIS3344</asp:ListItem>
                </asp:CheckBoxList>
                <h2>Semester</h2>
                <asp:CheckBoxList ID="CheckBoxList1" runat="server">
                    <asp:ListItem>Fall 2018</asp:ListItem>
                    <asp:ListItem>Summer II 2018</asp:ListItem>
                    <asp:ListItem>Summer I 2018</asp:ListItem>
                    <asp:ListItem>Spring 2018</asp:ListItem>
                    <asp:ListItem>Fall 2017</asp:ListItem>
                    <asp:ListItem>Summer II 2017</asp:ListItem>
                    <asp:ListItem>Summer I 2017</asp:ListItem>
                    <asp:ListItem>Spring 2017</asp:ListItem>
                    <asp:ListItem>Fall 2016</asp:ListItem>
                    <asp:ListItem>Summer II 2016</asp:ListItem>
                    <asp:ListItem>Summer I 2016</asp:ListItem>
                </asp:CheckBoxList>
            </asp:Panel>
        </div>

        

        <div class="liftGraph">
            <canvas id="gradeLiftByProfessor"></canvas>
        </div>

        

        <div class="finalGrade">
            <canvas id="averageFinalGradeByInstructor"></canvas>
        </div>
        
        <div class="enroll">
            <canvas id="courseEnrollByTerm"></canvas>
        </div>
        
        <div class="sectionEnroll">
            <canvas id="sectionEnrollByTermPerInstructor"></canvas> 
        </div>   

        <footer id="footer">
            &copy&nbspTemple University - 2018
        </footer>
        <script src="Chart.bundle.js"></script>
        <script src="chartviews/chaircharts.js"></script>
    </form>
</body>
</html>
