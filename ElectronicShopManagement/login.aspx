<%@ Page Title="" Language="C#" MasterPageFile="~/header.Master" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="ElectronicShopManagement.WebForm3" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="css/loginstyle.css" rel="stylesheet" />
    <style>
           input[type='checkbox']:after 
            {
                    width: 9px;
                    height: 9px;
                    border-radius: 5px;
                    position: relative;
                    background-color: #3B8054;
                    content: '';
                    display: inline-block;
                    visibility: visible;
                    transition: 0.5s ease;
                    cursor: pointer;
            }

            input[type='checkbox']:checked:after 
            {
                background-color: #4169E1;
            }
    </style>
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
                            <asp:CheckBox ID="cbRemember" runat="server" Font-Overline="False" Font-Size="Large" Font-Strikeout="False" Text="  Remember Me" />
                            <br />
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
