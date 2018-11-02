<%@ Page Title="" Language="C#" MasterPageFile="~/NavBar.Master" AutoEventWireup="true" CodeBehind="InstructorView.aspx.cs" Inherits="DashboardSystem.InstructorView" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="dashStyle.css" rel="stylesheet" />
</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
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
</asp:Content>
