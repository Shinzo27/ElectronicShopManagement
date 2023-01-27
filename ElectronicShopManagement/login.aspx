<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="ElectronicShopManagement.login" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="UTF-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <title>Patel's Dryfruit and Masala</title>

    <!-- font awesome cdn link  -->

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous"/>

    <link rel="stylesheet" href="css/loginstyle.css" type="text/css" media="all" />



    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css"/>

    <link rel="stylesheet" href="https://unpkg.com/swiper@7/swiper-bundle.min.css" />

    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/lightgallery-js/1.4.0/css/lightgallery.min.css"/>

    <!-- custom css file link  -->
    <link rel="stylesheet" href="css/style.css"/>

    <link rel="shortcut icon" type="x-icon" href="images\icon.ico"/>

    <link href="//fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600&display=swap" rel="stylesheet"/>

    <!--/Style-CSS -->

    <!--//Style-CSS -->
    <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>

    <script src="https://kit.fontawesome.com/af562a2a63.js" crossorigin="anonymous"></script>
</head>
<body>
    <form id="form2" runat="server">
    <section class="header">

      <img src="images\logo.png" class="logo"/>

      <nav class="navbar">
         <asp:LinkButton ID="btnHome" runat="server" OnClick="btnHome_Click">Home</asp:LinkButton>
          <asp:LinkButton ID="btnCart" runat="server" OnClick="btnShop_Click">Cart</asp:LinkButton>
          <asp:LinkButton ID="btnLogin" runat="server" OnClick="btnLogin_Click">Login</asp:LinkButton>
          <asp:LinkButton ID="btnRegister" runat="server" OnClick="btnRegister_Click1">Register</asp:LinkButton>
          <asp:LinkButton ID="btnLogout" runat="server" OnClick="btnLogout_Click">Log out</asp:LinkButton>
      </nav>

      <div id="menu-btn" class="fas fa-bars"></div>

   </section>

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
                            <asp:Button ID="Button1" runat="server" CssClass="btn" Text="Login" BackColor="#0043A2" Font-Bold="True" Font-Size="Large" Font-Strikeout="False" ForeColor="White" OnClick="Button1_Click" />
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
        </form>
</body>
</html>
