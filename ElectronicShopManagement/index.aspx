<!DOCTYPE html>
<script runat="server">

    Protected Sub btnLogout_Click(sender As Object, e As EventArgs)
        Response.Redirect("logout.aspx")
    End Sub

    Protected Sub btnCart_Click(sender As Object, e As EventArgs)

    End Sub

    Protected Sub btnLogin_Click1(sender As Object, e As EventArgs)
        Response.Redirect("login.aspx")
    End Sub

    Protected Sub bbtnRegister_Click(sender As Object, e As EventArgs)
        Response.Redirect("register.aspx")
    End Sub

    Protected Sub btnHome_Click1(sender As Object, e As EventArgs)
        Response.Redirect("index.aspx")
    End Sub
</script>

<html lang="en">

<head>
   <meta charset="UTF-8">
   <meta http-equiv="X-UA-Compatible" content="IE=edge">
   <meta name="viewport" content="width=device-width, initial-scale=1.0">
   <title>Patel's Dryfruit and Masala</title>

   <!-- font awesome cdn link  -->
   <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">

   <link rel="stylesheet" href="https://unpkg.com/swiper@7/swiper-bundle.min.css" />

   <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/lightgallery-js/1.4.0/css/lightgallery.min.css">

   <!-- custom css file link  -->
   <link rel="stylesheet" href="css/style.css">

   <link rel="shortcut icon" type="x-icon" href="images\icon.ico">

</head>

<body>

    <form id="form1" runat="server">

   <!-- header section starts     -->

   <section class="header">

      <img src="images\logo.png" class="logo">

      <nav class="navbar">

          <asp:LinkButton ID="btnHome" runat="server" OnClick="btnHome_Click1">Home</asp:LinkButton>
          <asp:LinkButton ID="btnCart" runat="server" OnClick="btnCart_Click">Cart</asp:LinkButton>
          <asp:LinkButton ID="btnUsername" runat="server">Username</asp:LinkButton>
          <asp:LinkButton ID="btnLogin" runat="server" OnClick="btnLogin_Click1">Login</asp:LinkButton>
          <asp:LinkButton ID="bbtnRegister" runat="server" OnClick="bbtnRegister_Click">Register</asp:LinkButton>
          <asp:LinkButton ID="btnLogout" runat="server">Log Out</asp:LinkButton>

      </nav>

      <div id="menu-btn" class="fas fa-bars"></div>

   </section>

   <!-- header section ends    -->

     <section class="home" id="home">

      <div class="swiper home-slider">

         <div class="swiper-wrapper">

            <div class="swiper-slide slide" style="background: url(images/first.jpg) no-repeat;">
               <div class="content">
                  <span>Electronics?</span>
                  <h3>Visit Us</h3>
                  <a href="Product.php" class="btn">get started</a>
               </div>
            </div>

            <div class="swiper-slide slide" style="background: url(images/second.jpg) no-repeat;">
               <div class="content">
                  <span>Inspired by</span>
                  <h3>Gada Electronics</h3>
                  <a href="Product.php" class="btn">get started</a>
               </div>
            </div>

            <div class="swiper-slide slide" style="background: url(images/third.png) no-repeat;">
               <div class="content">
                  <span>Bright Light</span>
                  <h3>Makes World Brighter!</h3>
                  <a href="Product.php" class="btn">get started</a>
               </div>
            </div>

         </div>

         <div class="swiper-button-next"></div>
         <div class="swiper-button-prev"></div>

      </div>

   </section>

    
    <section class="menu" id="fans">

      <div class="heading">
         <span>list</span>
         <h3>Our products</h3>
      </div>
      <div class="swiper menu-slider">
         <div class="swiper-wrapper">
            <div class="swiper-slide slide">
               <h3 class="title">Fans</h3>
               <br>
               <div class="box-container">
                  <div class="box">
                        <div class="info">
                           <h3>Bajaj Fan</h3>
                           <br>
                              <input type="text" size="8" placeholder="quantity" name="quantity" style="height: 45px; font-size: 18px;" required>
                              <input class="btn" type="submit" name="addtocart" value="Add To Cart">
                           <br>
                        </div>
                        <div class="img"><img src="images/bajajfan.jpeg" style="float: right; width: 200px; height: 200px;" >
                        </div>
                        <div class="price">₹4199</div>
                     </div>

                   <div class="box">
                        <div class="info">
                           <h3>Usha Fan</h3>
                           <br>
                              <input type="text" size="8" placeholder="quantity" name="quantity" style="height: 45px; font-size: 18px;" required>
                              <input class="btn" type="submit" name="addtocart" value="Add To Cart">
                           <br>
                        </div>
                        <div class="img"><img src="images/ushafan.jpeg" style="float: right; width: 200px; height: 200px;" >
                        </div>
                        <div class="price">₹8199</div>
                    </div>
               </div>

           </div>

         </div>
      </div>
   </section>

   <section class="menu" id="ac">

      <div class="heading">
         <span>list</span>
         <h3>Our products</h3>
      </div>
      <div class="swiper menu-slider">
         <div class="swiper-wrapper">
            <div class="swiper-slide slide">
               <h3 class="title">Air Conditioner</h3>
               <br>
               <div class="box-container">
                  <div class="box">
                        <div class="info">
                           <h3>Panasonic Air Conditioner</h3>
                           <br>
                              <input type="text" size="8" placeholder="quantity" name="quantity" style="height: 45px; font-size: 18px;" required>
                              <input class="btn" type="submit" name="addtocart" value="Add To Cart">
                           <br>
                        </div>
                        <div class="img"><img src="images/panasonicac.jpeg" style="float: right; width: 200px; height: 200px;" >
                        </div>
                        <div class="price">₹40000</div>
                     </div>

                   <div class="box">
                        <div class="info">
                           <h3>Voltas Air Conditioner 1.5 ton</h3>
                           <br>
                              <input type="text" size="8" placeholder="quantity" name="quantity" style="height: 45px; font-size: 18px;" required>
                              <input class="btn" type="submit" name="addtocart" value="Add To Cart">
                           <br>
                        </div>
                        <div class="img"><img src="images/voltasac.jpeg" style="float: right; width: 200px; height: 100px;" >
                        </div>
                        <div class="price">₹8199</div>
                    </div>
               </div>

            </div>
         </div>
      </div>
   </section>

    <section class="footer" id="footer">

      <div class="icons-container">

         <div class="icons">
            <i class="fas fa-clock"></i>
            <h3>opening hours</h3>
            <p>09:00am to 08:00pm</p>
         </div>

         <div class="icons">
            <i class="fas fa-phone"></i>
            <h3>phone</h3>
            <p>Kevin Patel - 9898219837</p>
            <p>Meet Patel - 9998513182</p>
         </div>

         <div class="icons">
            <i class="fas fa-envelope"></i>
            <h3>email</h3>
            <p>helloelectronic@gmail.com</p>
         </div>

         <div class="icons">
            <i class="fas fa-map"></i>
            <h3>address</h3>
            <p>4-5,Regent Residency,Opp. Pratham Ganesha Apt., Nr. Pratham Circle,Pal-Adajan,Surat - 395009</p>
         </div>

      </div>

      <div class="share">
         <a href="https://www.facebook.com/" class="fab fa-facebook-f"></a>
         <a href="#" class="fab fa-twitter"></a>
         <a href="https://www.instagram.com/" class="fab fa-instagram"></a>
      </div>

      <div class="credit"> created by <span>Pratham Patel</span> | all rights reserved! </div>

   </section>

   <script src="https://unpkg.com/swiper@7/swiper-bundle.min.js"></script>

   <script src="https://cdnjs.cloudflare.com/ajax/libs/lightgallery-js/1.4.0/js/lightgallery.min.js"></script>

   <!-- custom js file link  -->
   <script src="js/script.js"></script>

   <script>
      lightGallery(document.querySelector('.gallery .gallery-container'));
   </script>
    </form>
</body>
</html>