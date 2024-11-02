<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/Admin.Master" AutoEventWireup="true" CodeBehind="Messages.aspx.cs" Inherits="Series_Blog.AdminForms.Messages" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="container">
        <h2>Message List</h2>

        <table class="table table-striped">
            <thead>
                <tr>
                    <th>#</th>
                    <th>Sender</th>
                    <th>Mail</th>
                    <th>Phone</th>
                    <th>Subject</th>
                    <th>Context</th>
                </tr>
            </thead>
            <tbody>
                <asp:Repeater ID="Repeater1" runat="server">
                    <ItemTemplate>
                        <tr>
                            <td><%# Eval("ContactId") %></td>
                            <td><%# Eval("ContactNameSurname") %></td>
                            <td><%# Eval("ContactMail") %></td>
                            <td><%# Eval("ContactPhone") %></td>
                            <td><%# Eval("ContactSubject") %></td>
                            <td><%# Eval("ContactContext") %></td>
                    </ItemTemplate>
                </asp:Repeater>
            </tbody>
        </table>
    </div>

</asp:Content>
