<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="GrantPrivileges.aspx.cs" Inherits="DashboardSystem.WebForm1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        .table {
            margin-left: 5%;
            padding: 5%;
        }

        .file {
            margin-left: 30%;
        }

        th {
            text-align: center;
        }

        .page {
            padding-top: 2%;
        }
        .addbutton{
            margin-top: 2%;
            margin-bottom: 2%;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container-fluid page">
        <div class="row">
            <div class="col-lg-3 col-md-offset-3">
                <asp:Label ID="lblID" runat="server" Text="TUID"></asp:Label> <asp:TextBox ID="txtID" runat="server" CssClass="pull-right"></asp:TextBox>
                <br />
                <br />
                <asp:Label ID="lblEmail" runat="server" Text="Email"></asp:Label> <asp:TextBox ID="txtEmail" runat="server" CssClass="pull-right"></asp:TextBox>
                <br />
                <br />
                <asp:Label ID="lblPassword" runat="server" Text="Password"></asp:Label> <asp:TextBox ID="txtPassword" runat="server" CssClass="pull-right"></asp:TextBox>
                <br />
                <br />
                <asp:Label ID="lblConfirm" runat="server" Text="Confirm Password"></asp:Label> <asp:TextBox ID="txtConfirm" runat="server" CssClass="pull-right"></asp:TextBox>
            </div>
            <div class="col-lg-3">
                <asp:Label ID="lblName" runat="server" Text="Name"></asp:Label> <asp:TextBox ID="txtName" runat="server" CssClass="pull-right"></asp:TextBox>
                <br />
                <br />
                <asp:Label ID="lblDepartment" runat="server" Text="Department"></asp:Label> <asp:TextBox ID="txtDepartment" runat="server" CssClass="pull-right"></asp:TextBox>
                <br />
                <br />
                <asp:Label ID="lblCollege" runat="server" Text="College"></asp:Label> <asp:TextBox ID="txtCollege" runat="server" CssClass="pull-right"></asp:TextBox>
                <br />
                <br />
                <asp:Label ID="lblRole" runat="server" Text="Role"></asp:Label> 
                <asp:DropDownList ID="ddlRole" runat="server" CssClass="pull-right">
                    <asp:ListItem>Instructor</asp:ListItem>
                    <asp:ListItem>Chair</asp:ListItem>
                    <asp:ListItem>Dean</asp:ListItem>
                    <asp:ListItem>Admin</asp:ListItem>
                </asp:DropDownList>
            </div>
        </div>
        <div class="row addbutton">
            <div class="col-lg-2 col-md-offset-5 text-center">
                <asp:Button ID="btnAdd" CssClass="btn btn-primary" runat="server" Text="Add User" />
            </div>    
        </div>
        <div class="row">
            <div class="col-lg-4 col-md-offset-4 text-center">
                <asp:GridView ID="gvGrantPrivileges" runat="server" AutoGenerateColumns="false" CssClass="table-bordered table-responsive table">
                    <Columns>
                        <asp:BoundField DataField="User" HeaderText="User" />
                        <asp:BoundField DataField="Role" HeaderText="Role" />
                        <asp:TemplateField HeaderText="Change Role">
                            <ItemTemplate>
                                <asp:DropDownList ID="ddlChangeRole" runat="server">
                                    <asp:ListItem>Admin</asp:ListItem>
                                    <asp:ListItem>Chair</asp:ListItem>
                                    <asp:ListItem>Dean</asp:ListItem>
                                    <asp:ListItem>Instructor</asp:ListItem>
                                </asp:DropDownList>
                            </ItemTemplate>
                        </asp:TemplateField>
                    </Columns>
                </asp:GridView>
                <br />
                <asp:Button ID="btnSubmitChanges" CssClass="btn btn-primary" runat="server" Text="Submit Changes" OnClick="btnSubmitChanges_Click" />
            </div>
        </div>
    </div>
</asp:Content>
