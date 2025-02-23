﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="TeacherRecords.aspx.cs" Inherits="Group1._3_GradingSystem.TeacherPages.TeacherRecords" EnableEventValidation="false" %>

<!DOCTYPE html>
<head runat="server">
    <title>Teacher Records</title>
    <link href="../Library/css/teacher.css" rel="stylesheet" />
    <link href="../Library/css/teacher-records.css" rel="stylesheet" />
    <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
</head>
<form id="form1" runat="server">
    <asp:Image ID="Image1" img src="../imgs/HopeLogo_TransparentPng.png" runat="server" />
    <asp:Label ID="Label1" runat="server" Text="HOPE INTEGRATED SCHOOL" Font-Bold="False" Font-Size="16pt" Width="204px" Font-Names="Times New Roman"></asp:Label>
    <asp:Image ID="UserIcon" img src="../imgs/ProfileIcon1.png" runat="server" />
    <asp:Button ID="Button1" runat="server" OnClientClick="return confirm('Logout?');" Text="Logout" OnClick="Button1_Click" />
    <body style="height: 584px; width: 1277px; margin-left: 0px;">
        <div class="teacher-side-bar">
            <asp:HyperLink ID="TeacherHomeHL" runat="server" NavigateUrl="TeacherHomePage.aspx" Font-Size="14pt" Font-Underline="False">
                <asp:Image ID="HomeIcon" img src="../imgs/icon_home.png" runat="server" Height="40px" />
            </asp:HyperLink>
            <asp:HyperLink ID="TeacherHomeLabel" runat="server" NavigateUrl="TeacherHomePage.aspx" Text="Home" Font-Size="14pt" Font-Underline="False"></asp:HyperLink>
            <asp:HyperLink ID="SetGradesHL" runat="server" NavigateUrl="TeacherGradesPage.aspx" Font-Size="14pt" Font-Underline="False">
                <asp:Image ID="SetGradesIcon" runat="server" img="" src="../imgs/ic_sharp-rate-review.png" />
            </asp:HyperLink>
            <asp:HyperLink ID="RecordsHL" runat="server" NavigateUrl="TeacherRecords.aspx" Font-Size="14pt" Text="Records" Font-Underline="False">
                <asp:Image ID="RecordsIcon" runat="server" src="../imgs/icon-park_mail-review.png" />
            </asp:HyperLink>
            <asp:HyperLink ID="SetGradesLabel" runat="server" NavigateUrl="TeacherGradesPage.aspx" Font-Size="14pt" Text="Grades" Font-Underline="False"></asp:HyperLink>
        </div>
        <div class="set-grades-container" aria-atomic="False" aria-checked="true">
            <asp:Label ID="TSetGradesLabel" runat="server" Font-Bold="True" Font-Names="Arial" Font-Size="20pt" ForeColor="#983939">Records</asp:Label>
            <asp:DropDownList ID="ddlGradeLevel" runat="server" Width="105px" Height="22px" AutoPostBack="true" OnSelectedIndexChanged="ddlGradeLevel_SelectedIndexChanged">
                <asp:ListItem>Select Level</asp:ListItem>
            </asp:DropDownList>
            <asp:DropDownList ID="ddlSection" runat="server" Height="22px" Width="125px" Enabled="False" AutoPostBack="True" OnSelectedIndexChanged="ddlSection_SelectedIndexChanged">
                <asp:ListItem>Select Section</asp:ListItem>
                <asp:ListItem>Kinder-A</asp:ListItem>
                <asp:ListItem>Grade 1-A</asp:ListItem>
                <asp:ListItem>Grade 2-A</asp:ListItem>
                <asp:ListItem>Grade 3-A</asp:ListItem>
                <asp:ListItem>Grade 4-A</asp:ListItem>
                <asp:ListItem>Grade 5-A</asp:ListItem>
                <asp:ListItem>Grade 6-A</asp:ListItem>
                <asp:ListItem>Grade 7-A</asp:ListItem>
                <asp:ListItem>Grade 8-A</asp:ListItem>
                <asp:ListItem>Grade 9-A</asp:ListItem>
                <asp:ListItem>Grade 10-A</asp:ListItem>
                <asp:ListItem>Grade 11-HUMSS</asp:ListItem>
                <asp:ListItem>Grade 11-STEM</asp:ListItem>
                <asp:ListItem>Grade 12-HUMSS</asp:ListItem>
                <asp:ListItem>Grade 12-STEM</asp:ListItem>
            </asp:DropDownList>
            <asp:DropDownList ID="ddlSubjects" runat="server" Height="22px" Width="125px" Enabled="False" AutoPostBack="true" OnSelectedIndexChanged="ddlSubjects_SelectedIndexChanged">
                <asp:ListItem>Select Subject</asp:ListItem>
            </asp:DropDownList>
            <asp:DropDownList ID="ddlSchoolWork" runat="server" AutoPostBack="True" Height="22px" OnSelectedIndexChanged="ddlSchoolWork_SelectedIndexChanged" Enabled="False">
                <asp:ListItem>Select School Work Type</asp:ListItem>
                <asp:ListItem Value="1">Written Work</asp:ListItem>
                <asp:ListItem Value="2">Performance Task</asp:ListItem>
                <asp:ListItem Value="3">Quarterly Assessment</asp:ListItem>
            </asp:DropDownList>
            <div class="set-grades-table" style="height: 250px; overflow: auto;">
                <asp:Label ID="TRNoRecordsLabel" runat="server"></asp:Label>
                <asp:GridView ID="gvRecords" runat="server" AllowPaging="True" PageSize="5" OnPageIndexChanging="OnPageIndexChanging" OnSelectedIndexChanged="gvRecords_SelectedIndexChanged"
                    OnRowDataBound="gvRecords_RowDataBound" CellPadding="0" ForeColor="#333333">
                    <EditRowStyle BackColor="#999999" />
                    <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                    <RowStyle BackColor="#F7F6F3" ForeColor="#333333" HorizontalAlign="Center" />
                    <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                    <SortedAscendingCellStyle BackColor="#E9E7E2" />
                    <SortedAscendingHeaderStyle BackColor="#506C8C" />
                    <SortedDescendingCellStyle BackColor="#FFFDF8" />
                    <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
                </asp:GridView>
            </div>
            <div class="set-grades-form">
                <asp:Label ID="SRFNLabel" runat="server" Font-Names="Arial" ForeColor="#983939">First Name:</asp:Label>
                <asp:TextBox ID="SRtxtFName" runat="server" BorderStyle="Solid" BorderWidth="1px" Enabled="False"></asp:TextBox>
                <asp:Label ID="SRLNLabel" runat="server" Font-Names="Arial" ForeColor="#983939" BorderStyle="None">Last Name:</asp:Label>
                <asp:Button ID="TRUpdateTable" runat="server" OnClientClick="return confirm('Update schoolwork amount?');" Text="Update" BackColor="White" Font-Names="Arial" ForeColor="#983939" Height="21px" Width="94px" OnClick="UpdateTable_Click" Enabled="False" />
                <asp:TextBox ID="SRtxtLName" runat="server" BorderStyle="Solid" BorderWidth="1px" Enabled="False"></asp:TextBox>
                <asp:Label ID="SRRecordIDLabel" runat="server" Font-Names="Arial" ForeColor="#983939" Height="18px">Record ID:</asp:Label>
                <asp:TextBox ID="SRtxtRecordID" runat="server" BorderStyle="Solid" BorderWidth="1px" Enabled="False"></asp:TextBox>
                <asp:Label ID="SGGradesLabel" runat="server" Font-Names="Arial" ForeColor="#983939" Height="18px">Score:</asp:Label>
                <asp:TextBox ID="SRtxtGrades" runat="server" BorderStyle="Solid" BorderWidth="1px" TextMode="Number"></asp:TextBox>
                <asp:Label ID="SRTotalScoreLabel" runat="server" Font-Names="Arial" ForeColor="#983939" Height="18px">Total Score:</asp:Label>
                <asp:TextBox ID="SRtxtTotalScore" runat="server" BorderStyle="Solid" BorderWidth="1px" TextMode="Number"></asp:TextBox>
                <asp:Button ID="TRSaveGrades" runat="server" OnClientClick="return confirm('Save grade?');" Text="Save" BackColor="White" Font-Names="Arial" ForeColor="#983939" OnClick="TRSaveGrades_Click" />
                <asp:Label ID="SRSWNoLabel" runat="server" Font-Names="Arial" ForeColor="#983939" Height="18px">School Work No.:</asp:Label>
                <asp:DropDownList ID="ddlSWNo" runat="server" Width="90px" Height="22px" AutoPostBack="True">
                </asp:DropDownList>
                <asp:Label ID="SGGradesLabel0" runat="server" Font-Names="Arial" ForeColor="#983939">Amount of School Work:</asp:Label>
                <asp:Button ID="TRInsertRecords" runat="server" OnClientClick="return confirm('Insert records?');" Text="Insert Records" BackColor="White" Font-Names="Arial" ForeColor="#983939" OnClick="TRInsertRecords_Click" Height="21px" Width="100px" />
                <asp:Button ID="TRUpdateTS" runat="server" OnClientClick="return confirm('Update total score?');" Text="Update" BackColor="White" Font-Names="Arial" ForeColor="#983939" Height="21px" Width="94px" OnClick="UpdateTS_Click" />
            </div>
            <asp:DropDownList ID="ddlSchoolYear" runat="server" Width="95px" Height="22px" AutoPostBack="True" OnSelectedIndexChanged="ddlSchoolYear_SelectedIndexChanged">
                <asp:ListItem>Select S.Y.</asp:ListItem>
                <asp:ListItem Value="1">2023-2024</asp:ListItem>
                <asp:ListItem Value="2">2024-2025</asp:ListItem>
                <asp:ListItem Value="3">2025-2026</asp:ListItem>
                <asp:ListItem Value="4">2026-2027</asp:ListItem>
                <asp:ListItem Value="5">2027-2028</asp:ListItem>
            </asp:DropDownList>
            <asp:DropDownList ID="ddlQuarter" runat="server" Width="110px" Height="22px" AutoPostBack="True" Enabled="False" OnSelectedIndexChanged="ddlQuarter_SelectedIndexChanged">
                <asp:ListItem>Select Quarter</asp:ListItem>
                <asp:ListItem Value="1">1st</asp:ListItem>
                <asp:ListItem Value="2">2nd</asp:ListItem>
                <asp:ListItem Value="3">3rd</asp:ListItem>
                <asp:ListItem Value="4">4th</asp:ListItem>
            </asp:DropDownList>
            <asp:DropDownList ID="ddlAmnt" runat="server" Width="115px" Height="22px" AutoPostBack="True" Enabled="False">
            </asp:DropDownList>
        </div>
    </body>
</form>
