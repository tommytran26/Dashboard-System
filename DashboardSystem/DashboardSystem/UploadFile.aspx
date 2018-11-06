<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="UploadFile.aspx.cs" Inherits="DashboardSystem.UploadFile" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="uploadStyle.css" rel="stylesheet">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="container-fluid page">
        <div class="row">
            <div class="col-md-4 col-md-offset-4 text-center">
                <asp:FileUpload ID="FileUpload1" runat="server" CssClass="file"/>
                <br />
                <br />
                <asp:Button ID="btnUpload" runat="server" Text="Upload" CssClass="btn btn-primary" OnClick="btnUpload_Click"/>
                <br />
                <br />
                <br />
                <asp:GridView ID="gvPastUploads" runat="server" AutoGenerateColumns="False" CssClass="table-bordered table-responsive table">
                    <Columns>
                        <asp:BoundField HeaderText="File Name" DataField="fileName" />
                        <asp:BoundField HeaderText="Date Uploaded" DataField="date" />
                        <asp:BoundField HeaderText="Uploaded By" DataField="uploadedBy" />
                    </Columns>
                </asp:GridView>
            </div>
        </div>
    </div>

</asp:Content>
