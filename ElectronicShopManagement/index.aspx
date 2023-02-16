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
      <br />
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
                      <asp:DataList ID="DataList1" runat="server" CellPadding="1" DataSourceID="SqlDataSource1" RepeatColumns="4" RepeatDirection="Horizontal" ShowFooter="False" ShowHeader="False" Width="1541px">
                          <ItemTemplate>
                              <div class="box">
                        <div class="info">
                           <h3><%# Eval("pname") %></h3>
                            <br />
                            <br />
                            <asp:HiddenField ID="lblId" runat="server" Value='<%# Eval("pid") %>' />
                            <asp:TextBox ID="txtQuantity" runat="server" CssClass="email" Font-Size="Large" placeholder="Quantity"></asp:TextBox>
                            <asp:Button ID="btnCart" runat="server" CssClass="btn" Height="36px" OnClick="btnCart_Click" Text="Add to cart" Width="150px" />
                            <br />
                        </div>
                        <div class="img"><img src='<%# Eval("pimage") %>' style="float: right; width: 100px; height: 80px;"></img> </div>
                        <div class="price">₹<%# Eval("price") %></div>
                    </div>
                          </ItemTemplate>
                      </asp:DataList>
                      <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:dbElectronicConnectionString %>" SelectCommand="SELECT * FROM [tblProduct] WHERE ([category] = @category)">
                          <SelectParameters>
                              <asp:Parameter DefaultValue="fans" Name="category" Type="String" />
                          </SelectParameters>
                      </asp:SqlDataSource>
                   </div>
               </div>
            </div>
         </div>
   </section>

    <section class="menu" id="ac">

      <div class="swiper menu-slider">
         <div class="swiper-wrapper">
            <div class="swiper-slide slide">
               <h3 class="title">Air Conditioner</h3>
               <br>
               <div class="box-container">
                  <div class="box">
                        <asp:DataList ID="DataList2" runat="server" CellPadding="1" DataSourceID="SqlDataSource2" RepeatColumns="4" RepeatDirection="Horizontal" ShowFooter="False" ShowHeader="False" Width="1541px">
                          <ItemTemplate>
                                <div class="box">
                                    <div class="info">
                                       <h3><%# Eval("pname") %></h3>
                                       <br>
                                        <br />
                                          <input type="text" size="8" placeholder="quantity" name="quantity" style="height: 45px; font-size: 18px;" >
                                          <asp:HiddenField ID="lblId" runat="server" Value='<%# Eval("pid") %>' />
                                          <asp:Button ID="btnCart" runat="server" CssClass="btn" Height="36px" Text="Add to cart" Width="150px" />
                                        <br></br>
                                    </div>
                                    <div class="img"><img src="<%# Eval("pimage") %>" style="float: right; width: 100px; height: 80px;" >
                                    </div>
                                    <div class="price">₹<%# Eval("price") %></div>
                                </div>
                          </ItemTemplate>
                      </asp:DataList>
                      <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:dbElectronicConnectionString %>" SelectCommand="SELECT * FROM [tblProduct] WHERE ([category] = @category)">
                          <SelectParameters>
                              <asp:Parameter DefaultValue="ac" Name="category" Type="String" />
                          </SelectParameters>
                      </asp:SqlDataSource>
                  </div>
        </div>
        </div>
        </div>
        </div>
   </section>

   <section class="menu" id="light">

      <div class="swiper menu-slider">
         <div class="swiper-wrapper">
            <div class="swiper-slide slide">
               <h3 class="title">Lights</h3>
               <br>
               <div class="box-container">
                  <div class="box">
                        <asp:DataList ID="DataList3" runat="server" CellPadding="1" DataSourceID="SqlDataSource3" RepeatColumns="4" RepeatDirection="Horizontal" ShowFooter="False" ShowHeader="False" Width="1541px">
                          <ItemTemplate>
                              <div class="box">
                        <div class="info">
                           <h3><%# Eval("pname") %></h3>
                           <br>
                            <br />
                              <input type="text" size="8" placeholder="quantity" name="quantity" style="height: 45px; font-size: 18px;" >
                              <asp:HiddenField ID="lblId" runat="server" Value='<%# Eval("pid") %>' />    
                            <asp:Button ID="btnCart" runat="server" CssClass="btn" Height="36px" Text="Add to cart" Width="150px" />
                            <br></br>
                        </div>
                        <div class="img"><img src="<%# Eval("pimage") %>" style="float: right; width: 100px; height: 80px;" >
                        </div>
                        <div class="price">₹<%# Eval("price") %></div>
                    </div>
                          </ItemTemplate>
                      </asp:DataList>
                      <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:dbElectronicConnectionString %>" SelectCommand="SELECT * FROM [tblProduct] WHERE ([category] = @category)">
                          <SelectParameters>
                              <asp:Parameter DefaultValue="light" Name="category" Type="String" />
                          </SelectParameters>
                      </asp:SqlDataSource>
                  </div>
        </div>
        </div>
        </div>
        </div>
   </section>
   <!-- home section ends -->
   <section class="menu" id="refrigerator">

      <div class="swiper menu-slider">
         <div class="swiper-wrapper">
            <div class="swiper-slide slide">
               <h3 class="title">Refrigerator</h3>
               <br>
               <div class="box-container">
                  <div class="box">
                        <asp:DataList ID="DataList4" runat="server" CellPadding="1" DataSourceID="SqlDataSource4" RepeatColumns="4" RepeatDirection="Horizontal" ShowFooter="False" ShowHeader="False" Width="1541px">
                          <ItemTemplate>
                              <div class="box">
                        <div class="info">
                           <h3><%# Eval("pname") %></h3>
                           <br>
                            <br />
                              <input type="text" size="8" placeholder="quantity" name="quantity" style="height: 45px; font-size: 18px;" >
                              <asp:HiddenField ID="lblId" runat="server" Value='<%# Eval("pid") %>' />  
                            <asp:Button ID="btnCart" runat="server" CssClass="btn" Height="36px" Text="Add to cart" Width="150px" />
                            <br></br>
                        </div>
                        <div class="img"><img src="<%# Eval("pimage") %>" style="float: right; width: 100px; height: 80px;" >
                        </div>
                        <div class="price">₹<%# Eval("price") %></div>
                    </div>
                          </ItemTemplate>
                      </asp:DataList>
                      <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:dbElectronicConnectionString %>" SelectCommand="SELECT * FROM [tblProduct] WHERE ([category] = @category)">
                          <SelectParameters>
                              <asp:Parameter DefaultValue="refrigerator" Name="category" Type="String" />
                          </SelectParameters>
                      </asp:SqlDataSource>
                  </div>
        </div>
        </div>
        </div>
        </div>
   </section>
</asp:Content>

