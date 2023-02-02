﻿<%@ Page Title="" Language="C#" MasterPageFile="~/header.Master" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="ElectronicShopManagement.WebForm3" %>
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
                            <img src="images\undraw_appreciate_it_qnkk.svg" alt=""/>
                        </div>
                    </div>
                    <div class="content-wthree">
                        <h2>Login Now</h2>
                        <p>Welcome to our store where you can get everything fresh with fresh vibes!</p>
                        <br />
                            <asp:TextBox ID="txtEmail" runat="server" class="email" CssClass="inputBox" placeholder="Enter your Email" style="margin-top: 5px;" Width="300px"></asp:TextBox>
                            <asp:TextBox ID="txtPassword" runat="server" class="passowrd" CssClass="inputBox" placeholder="Enter your Password" TextMode="Password" Width="300px" ></asp:TextBox>
                            <p><a href="forgetpassword.php" style="margin-bottom: 15px; display: block; text-align: right;">Forgot Password?</a></p>
                            <asp:Button ID="Button1" runat="server" CssClass="btn" Text="Login" BackColor="#0043A2" Font-Bold="True" Font-Size="Large" Font-Strikeout="False" ForeColor="White" OnClick="Button1_Click"/>
                            <div class="social-icons">
                            <p>Create Account! <a href="register.aspx">Register</a>.</p>
                        </div>
                    </div>
                </div>
            </div>
            <!-- //form -->
        </div>
    </section>

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
