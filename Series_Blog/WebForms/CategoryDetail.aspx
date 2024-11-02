<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/User.Master" AutoEventWireup="true" CodeBehind="CategoryDetail.aspx.cs" Inherits="Series_Blog.WebForms.CategoryDetail" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="container">
        <div class="content-grids">
            <div class="col-md-8 content-main">
                <asp:Repeater ID="Repeater1" runat="server">
                    <ItemTemplate>
                        <div class="content-grid">
                            <div class="content-grid-info">

                                <img src="<%# Eval("BlogImage") %>" alt="" style="height: 300px; width: 500px" />
                                <div class="post-info">
                                    <h4><a href="BlogDetail.aspx?BlogId=<%# Eval("BlogId") %>"><%# Eval("BlogTitle") %></a>  <%# Eval("BlogDate") %></h4>
                                    <p><%# Eval("BlogContex") %></p>
                                    <a href="BlogDetail.aspx?BlogId=<%# Eval("BlogId") %>"><span></span>READ MORE</a>

                                </div>
                            </div>
                        </div>
                    </ItemTemplate>
                </asp:Repeater>
            </div>
            <div class="col-md-4 content-right">
                <div class="recent">
                    <h3>RECENT POSTS</h3>
                    <ul>
                        <asp:Repeater ID="Repeater3" runat="server">
                            <ItemTemplate>
                                <li><a href="#"><%# Eval("BlogTitle") %></a></li>
                            </ItemTemplate>
                        </asp:Repeater>
                    </ul>
                </div>
                <div class="comments">
                    <h3>RECENT COMMENTS</h3>
                    <ul>
                        <asp:Repeater ID="Repeater4" runat="server">
                            <ItemTemplate>
                                <li><a href="#"><%# Eval("CommentNameSurname") %></a></li>
                            </ItemTemplate>
                        </asp:Repeater>
                    </ul>
                </div>
                <div class="clearfix"></div>
                <div class="archives">
                    <h3>ARCHIVES</h3>
                    <ul>
                        <li><a href="#">December</a></li>
                        <li><a href="#">November</a></li>
                        <li><a href="#">October</a></li>
                        <li><a href="#">September</a></li>
                        <li><a href="#">August</a></li>
                        <li><a href="#">July</a></li>
                        <li><a href="#">June</a></li>
                        <li><a href="#">May</a></li>
                        <li><a href="#">April</a></li>
                        <li><a href="#">March</a></li>
                        <li><a href="#">February</a></li>
                        <li><a href="#">January</a></li>
                    </ul>
                </div>
                <div class="categories">
                    <h3>CATEGORIES</h3>
                    <ul>
                        <asp:Repeater ID="Repeater2" runat="server">
                            <ItemTemplate>
                                <li><a href="CategoryDetail.aspx?CategoryId=<%# Eval("CategoryId") %>"><%# Eval("CategoryName") %></a></li>
                            </ItemTemplate>
                        </asp:Repeater>
                    </ul>
                </div>
                <div class="clearfix"></div>
            </div>
            <div class="clearfix"></div>
        </div>
    </div>

</asp:Content>
