<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="UploadFile.aspx.cs" Inherits="DashboardSystem.UploadFile" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="uploadStyle.css" rel="stylesheet">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="container-fluid page">
        <div class="row">
            <div class="col-md-4 col-md-offset-4 text-center">
                <h2 class="text-center">Upload New Data</h2>
                <br />
                <p class="text-center">Please use the template available for download below for all data uploads. The upload system only accepts excel spreadsheets in this format.</p>
                <asp:Button ID="btnTemplate" runat="server" Text="Download Template" CssClass="btn btn-primary" />
                <br />
                <br />
                <br />
                <asp:FileUpload ID="FileUpload1" runat="server" CssClass="file"/>
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
