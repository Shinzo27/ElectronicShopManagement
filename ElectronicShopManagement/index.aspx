<%@ Page Title="" Language="C#" MasterPageFile="~/header.Master" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="ElectronicShopManagement.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <section class="home" id="home">

      <div class="swiper home-slider">

         <div class="swiper-wrapper">

            <div class="swiper-slide slide" style="background: url(images/first.jpg) no-repeat;">
               <div class="content">
                  <span>Brighter Light</span>
                  <h3>Makes Life Brighter</h3>
                  <a href="Product.aspx" class="btn">get started</a>
               </div>
            </div>

            <div class="swiper-slide slide" style="background: url(images/second.jpg) no-repeat;">
               <div class="content">
                  <span>Inspired By</span>
                  <h3>Gada Electronics</h3>
                  <a href="Product.aspx" class="btn">get started</a>
               </div>
            </div>

            <div class="swiper-slide slide" style="background: url(images/third.png) no-repeat;">
               <div class="content">
                  <span>Need Electronics?</span>
                  <h3>Visit Us!</h3>
                  <a href="Product.aspx" class="btn">get started</a>
               </div>
            </div>

         </div>

         <div class="swiper-button-next"></div>
         <div class="swiper-button-prev"></div>

      </div>

   </section>

    <section class="menu" id="fan">

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
                           <h3>Usha Fans</h3>
                           <br>
                              <input type="text" size="8" placeholder="quantity" name="quantity" style="height: 45px; font-size: 18px;" required>
                              <input class="btn" type="submit" name="addtocart" value="Add To Cart">
                           <br>
                        </div>
                        <div class="img"><img src="images/ushafan.jpeg" style="float: right; width: 100px; height: 100px;">
                        </div>
                        <div class="price">₹2500</div>
                   </div>



                  <div class="box">
                        <div class="info">
                           <h3>Bajaj Fans</h3>
                           <br>
                              <input type="text" size="8" placeholder="quantity" name="quantity" style="height: 45px; font-size: 18px;" required>
                              <input class="btn" type="submit" name="addtocart" value="Add To Cart">
                           <br>
                        </div>
                        <div class="img"><img src="images/bajajfan.jpeg" style="float: right; width: 100px; height: 100px;">
                        </div>
                        <div class="price">₹4500</div>
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
                           <h3>Panasonic Ac</h3>
                           <br>
                              <input type="text" size="8" placeholder="quantity" name="quantity" style="height: 45px; font-size: 18px;" required>
                              <input class="btn" type="submit" name="addtocart" value="Add To Cart">
                           <br>
                        </div>
                        <div class="img"><img src="images/panasonicac.jpeg" style="float: right; width: 200px; height: 100px;">
                        </div>
                        <div class="price">₹40000</div>
                   </div>
               


                  <div class="box">
                        <div class="info">
                           <h3>Voltas Ac</h3>
                           <br>
                              <input type="text" size="8" placeholder="quantity" name="quantity" style="height: 45px; font-size: 18px;" required>
                              <input class="btn" type="submit" name="addtocart" value="Add To Cart">
                           <br>
                        </div>
                        <div class="img"><img src="images/voltasac.jpeg" style="float: right; width: 200px; height: 100px;">
                        </div>
                        <div class="price">₹4500</div>
                   </div>


                  <div class="box">
                        <div class="info">
                           <h3>Voltas Ac</h3>
                           <br>
                              <input type="text" size="8" placeholder="quantity" name="quantity" style="height: 45px; font-size: 18px;" required>
                              <input class="btn" type="submit" name="addtocart" value="Add To Cart">
                           <br>
                        </div>
                        <div class="img"><img src="images/voltasac.jpeg" style="float: right; width: 200px; height: 100px;">
                        </div>
                        <div class="price">₹4500</div>
                   </div>
               </div>
        </div>
        </div>
        </div>

   </section>

   <!-- home section ends -->

</asp:Content>

