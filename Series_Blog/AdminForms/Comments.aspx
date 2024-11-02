<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/Admin.Master" AutoEventWireup="true" CodeBehind="Comments.aspx.cs" Inherits="Series_Blog.AdminForms.Comments" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="container">
        <h2>Comment List</h2>

        <table class="table table-striped">
            <thead>
                <tr>
                    <th>#</th>
                    <th>Commenter</th>
                    <th>Mail</th>
                    <th>Context</th>
                    <th>Blog</th>
                </tr>
            </thead>
            <tbody>
                <asp:Repeater ID="Repeater1" runat="server">
                    <ItemTemplate>
                        <tr>
                            <td><%# Eval("CommentId") %></td>
                            <td><%# Eval("CommentNameSurname") %></td>
                            <td><%# Eval("CommentMail") %></td>
                            <td><%# Eval("CommnetContext") %></td>
                            <td><%# Eval("BlogTitle") %></td>
                    </ItemTemplate>
                </asp:Repeater>
            </tbody>
        </table>
    </div>

</asp:Content>
