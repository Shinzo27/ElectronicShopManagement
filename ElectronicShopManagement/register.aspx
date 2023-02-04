<%@ Page Title="" Language="C#" MasterPageFile="~/header.Master" AutoEventWireup="true" CodeBehind="register.aspx.cs" Inherits="ElectronicShopManagement.WebForm4" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="css/loginstyle.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceholder1" runat="server">
    <section class="w3l-mockup-form">
        <div class="container">
            <!-- /form -->
            <div class="workinghny-form-grid">
                <div class="main-mockup">
                    <div class="w3l_form align-self">
                        <div class="left_grid_info">
                            <img src="images\undraw_showing_support_re_5f2v.svg" alt="">
                        </div>
                    </div>
                    <div class="content-wthree">
                        <h2>Register Now</h2>
                        <p>Join Us In This Journey By Being A Part Of It! </p>
                            <asp:TextBox ID="txtUsername" runat="server" CssClass="inputBox" placeholder="Enter Your Username" Width="300px"></asp:TextBox>
                            <asp:TextBox ID="txtEmail" runat="server" CssClass="inputBox" placeholder="Enter Your Email" Width="300px"></asp:TextBox>
                            <asp:TextBox ID="txtPassword" runat="server" CssClass="inputBox" placeholder="Enter Your Password" Width="300px" TextMode="Password"></asp:TextBox>
                            <br/>
                            <asp:Button ID="btnRegister" runat="server" BackColor="RoyalBlue" CssClass="btn" Font-Bold="True" Font-Size="Large" ForeColor="White" Text="Register" OnClick="btnRegister_Click" />
                        <div class="social-icons">
                            <p>Have an account! <a href="login.aspx">Login</a>.</p>
                        </div>
                    </div>
                </div>
            </div>
            <!-- //form -->
        </div>
    </section>
    <!-- //form section start -->

    <script src="js/jquery.min.js"></script>
    <script>
        $(document).ready(function(c) {
            $('.alert-close').on('click', function(c) {
                $('.main-mockup').fadeOut('slow', function(c) {
                    $('.main-mockup').remove();
                });
            });
        });
    </script>
</asp:Content>
