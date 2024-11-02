<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/Admin.Master" AutoEventWireup="true" CodeBehind="AboutEdit.aspx.cs" Inherits="Series_Blog.AdminForms.AboutEdit" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="container">
        <h2>Blog Edit</h2>
        <form runat="server">
            <div class="form-group">
                <asp:TextBox ID="TextBox1" runat="server" placeholder="Context" TextMode="MultiLine" Height="100" CssClass="form-control"></asp:TextBox>
            </div>
            <asp:Button ID="Button1" runat="server" CssClass="btn btn-success" Text="SAVE" OnClick="Button1_Click" />
        </form>
    </div>

</asp:Content>
