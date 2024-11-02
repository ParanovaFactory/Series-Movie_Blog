<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/Admin.Master" AutoEventWireup="true" CodeBehind="Statisitcs.aspx.cs" Inherits="Series_Blog.AdminForms.Statisitcs" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="container">
        <h2>Statistics</h2>

        <table class="table table-striped">
                <tr>
                    <td>
                        Total Blogs: <asp:Label runat="server" ID="Label1"></asp:Label>
                    </td>
                    <td>
                        Total Comment: <asp:Label runat="server" ID="Label2"></asp:Label>

                    </td>
                    <td>
                        Movies: <asp:Label runat="server" ID="Label3"></asp:Label>

                    </td>
                </tr>
                <tr>
                    <td>
                        Series: <asp:Label runat="server" ID="Label4"></asp:Label>

                    </td>
                    <td>
                        Adventure: <asp:Label runat="server" ID="Label5"></asp:Label>

                    </td>
                    <td>
                        Most Visited Blog :<asp:Label runat="server" ID="Label6"></asp:Label>

                    </td>
                </tr>
        </table>
    </div>

</asp:Content>
