<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/Admin.Master" AutoEventWireup="true" CodeBehind="Blogs.aspx.cs" Inherits="Series_Blog.AdminForms.Blogs" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="container">
        <h2>Blog List</h2>

        <table class="table table-striped">
            <thead>
                <tr>
                    <th>#</th>
                    <th>Title</th>
                    <th>Date</th>
                    <th>Type</th>
                    <th>Category</th>
                    <th>Delete</th>
                    <th>Update</th>
                </tr>
            </thead>
            <tbody>
                <asp:Repeater ID="Repeater1" runat="server">
                    <ItemTemplate>
                        <tr>
                            <td><%# Eval("BlogId") %></td>
                            <td><%# Eval("BlogTitle") %></td>
                            <td><%# Eval("BlogDate") %></td>
                            <td><%# Eval("TypeName") %></td>
                            <td><%# Eval("CategoryName") %></td>
                            <td>
                                <asp:HyperLink ID="HyperLink1" runat="server" CssClass="btn btn-danger" NavigateUrl='<%# "BlogDelete.aspx?BlogId="+Eval("BlogId") %>'>Delete</asp:HyperLink></td>
                            <td>
                                <asp:HyperLink ID="HyperLink2" runat="server" CssClass="btn btn-warning" NavigateUrl='<%# "BlogEdit.aspx?BlogId="+Eval("BlogId") %>'>Update</asp:HyperLink></td>
                        </tr>
                    </ItemTemplate>
                </asp:Repeater>
            </tbody>
        </table>
        <a href="BlogAdd.aspx" class="btn btn-primary">New Blog</a>
    </div>

</asp:Content>
