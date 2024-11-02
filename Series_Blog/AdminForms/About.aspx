<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/Admin.Master" AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="Series_Blog.AdminForms.About" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="container">
        <h2>About Us</h2>

        <table class="table table-striped">
            <thead>
                <tr>
                    <th>#</th>
                    <th>Context</th>
                    <th>Update</th>
                </tr>
            </thead>
            <tbody>
                <asp:Repeater ID="Repeater1" runat="server">
                    <ItemTemplate>
                        <tr>
                            <td><%# Eval("AboutId") %></td>
                            <td><%# Eval("AboutContext") %></td>
                            <td>
                                <asp:HyperLink ID="HyperLink2" runat="server" CssClass="btn btn-warning" NavigateUrl='<%# "AboutEdit.aspx?AboutId="+Eval("AboutId") %>'>Update</asp:HyperLink></td>
                        </tr>
                    </ItemTemplate>
                </asp:Repeater>
            </tbody>
        </table>
    </div>

</asp:Content>
