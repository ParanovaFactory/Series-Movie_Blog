<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/Admin.Master" AutoEventWireup="true" CodeBehind="BlogEdit.aspx.cs" Inherits="Series_Blog.AdminForms.BlogEdit" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="container">
        <h2>Blog Edit</h2>
        <form runat="server">
            <div class="form-group">
                <asp:TextBox ID="TextBox1" runat="server" placeholder="Title" CssClass="form-control"></asp:TextBox>
            </div>
            <div class="form-group">
                <asp:TextBox ID="TextBox2" runat="server" placeholder="Context" TextMode="MultiLine" Height="100" CssClass="form-control"></asp:TextBox>
            </div>
            <div class="form-group">
                <asp:TextBox ID="TextBox3" runat="server" placeholder="Date" CssClass="form-control"></asp:TextBox>
            </div>
            <div class="form-group">
                <asp:TextBox ID="TextBox4" runat="server" placeholder="Image Url" CssClass="form-control"></asp:TextBox>
            </div>
            <div class="form-group">
                <asp:DropDownList ID="DropDownList1" runat="server" CssClass="form-control"></asp:DropDownList>
            </div>
            <div class="form-group">
                <asp:DropDownList ID="DropDownList2" runat="server" CssClass="form-control"></asp:DropDownList>
            </div>
            <asp:Button ID="Button1" runat="server" CssClass="btn btn-success" Text="SAVE" OnClick="Button1_Click" />
        </form>
    </div>

</asp:Content>
