<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/User.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="Series_Blog.WebForms.Contact" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <!DOCTYPE HTML>
    <html>
    <head>
        <title>Personal Blog a Blogging Category Flat Bootstarp  Responsive Website Template | Contact :: w3layouts</title>
        <link href="../web/css/bootstrap.css" rel='stylesheet' type='text/css' />
        <link href="../web/css/style.css" rel='stylesheet' type='text/css' />
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <meta name="keywords" content="Personal Blog Responsive web template, Bootstrap Web Templates, Flat Web Templates, Andriod Compatible web template, 
	Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design" />
        <script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
        <!----webfonts---->
        <link href='http://fonts.googleapis.com/css?family=Oswald:100,400,300,700' rel='stylesheet' type='text/css'>
        <link href='http://fonts.googleapis.com/css?family=Lato:100,300,400,700,900,300italic' rel='stylesheet' type='text/css'>
        <!----//webfonts---->
        <script src="http://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
        <!--end slider -->
        <!--script-->
        <script type="text/javascript" src="../web/js/move-top.js"></script>
        <script type="text/javascript" src="../web/js/easing.js"></script>
        <!--/script-->
        <script type="text/javascript">
            jQuery(document).ready(function ($) {
                $(".scroll").click(function (event) {
                    event.preventDefault();
                    $('html,body').animate({ scrollTop: $(this.hash).offset().top }, 900);
                });
            });
        </script>
        <!---->

    </head>
    <body>
        <!--/header-->
        <div class="contact-content">
            <div class="container">
                <div class="contact-info">
                    <h2>CONTACT</h2>
                </div>
                <div class="contact-details">
                    <form runat="server">
                        <asp:TextBox ID="TextBox1" runat="server" placeholder="Name and Surname" required=""></asp:TextBox>
                        <asp:TextBox ID="TextBox2" runat="server" placeholder="Email" required=""></asp:TextBox>
                        <asp:TextBox ID="TextBox3" runat="server" placeholder="Phone" required=""></asp:TextBox>
                        <asp:TextBox ID="TextBox5" runat="server" placeholder="Subject" required=""></asp:TextBox>
                        <asp:TextBox ID="TextBox4" runat="server" placeholder="Message" TextMode="MultiLine" Height="100"></asp:TextBox>
                        <asp:Button ID="Button1" runat="server" Text="SEND" OnClick="Button1_Click" />
                    </form>
                </div>
                <div class="contact-details">
                    <div class="col-md-6 contact-map">
                        <h4>FIND US HERE</h4>
                        <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d322619.26901229535!2d12.562036799545714!3d50.8225866182387!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x47a7465f01fd9de9%3A0x51ddf8280975d11c!2sChemnitz!5e0!3m2!1str!2sde!4v1730290735383!5m2!1str!2sde" frameborder="0" style="border: 0"></iframe>
                    </div>
                    <div class="col-md-6 company_address">
                        <h4>GET IN TOUCH</h4>
                        <p>Chemnitz</p>
                        <p>Germany</p>
                        <p>DE</p>
                        <p>Phone:(00) 222 666 444</p>
                        <p>Fax: (000) 123 456 78 0</p>
                        <p>Email: <a href="mailto:sadikberkaykaraduman@gmail.com">sadikberkaykaraduman@gmail.com</a></p>
                        <p>Follow on: <a href="https://www.linkedin.com/in/sad%C4%B1k-berkay-karaduman-7407621a7/">Linkedin</a>, <a href="https://github.com/ParanovaFactory">Github</a></p>
                    </div>
                    <div class="clearfix"></div>
                </div>
            </div>
        </div>
    </body>
    </html>

</asp:Content>
