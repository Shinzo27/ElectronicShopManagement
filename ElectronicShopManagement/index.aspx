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

    <section class="menu" id="fans">
      <div class="heading">
         <span>list</span>
         <h3>Our products</h3>
      </div>
      <div class="swiper menu-slider">
         <div class="swiper-wrapper">
            <div class="swiper-slide slide">
               <h3 class="title">Fans</h3>
               <div class="box-container">
                   <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource1" RepeatDirection="Horizontal" RepeatColumns="4" Width="1504px" HorizontalAlign="Center" OnItemCommand="DataList1_ItemCommand">
                       <ItemTemplate>
                           <div class="box" style="padding-block:auto">
                        <div class="info">
                           <h3><%# Eval("pname") %></h3>
                           <asp:Label ID="pid" runat="server" Text='<%# Eval("pid") %>' Visible="False"></asp:Label>
                           <br>
                            <asp:TextBox ID="txtQuantity" runat="server" Height="45px" Width="99px" placeholder="Enter Quantity" Font-Size="Medium"></asp:TextBox>
                            <br />
                            <div class="price">
                                ₹ <%# Eval("price") %>
                            </div>
                            <asp:Button ID="btnAddtocart" runat="server" CssClass="btn" Text="Add to cart" Width="143px" Height="35px" />
                            
                            <br>

                        </div>
                        <div class="img"><img src="<%# Eval("pimage") %>" style="float: right; width: 100px; height: 100px;" >
                        </div>
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
               <div class="box-container">
                   <asp:DataList ID="DataList2" runat="server" DataSourceID="SqlDataSource2" RepeatDirection="Horizontal" RepeatColumns="4" Width="1504px" HorizontalAlign="Center">
                       <ItemTemplate>
                        <div class="box">
                            <div class="info">
                               <h3><%# Eval("pname") %></h3>
                               <br>
                                <asp:TextBox ID="txtQuantity" runat="server" Height="45px" Width="99px" placeholder="Enter Quantity"></asp:TextBox>
                                <select name="weight" required="" style="width: 70px; height: 28px; font-size: 15px;">
                                    <option value="250gm">250gms</option>
                                </select><asp:Label ID="pid" runat="server" Text='<%# Eval("pid") %>' Visible="False"></asp:Label>
                                <br>
                                <br>
                                <asp:Button ID="btnAddtocart" runat="server" CssClass="btn" Text="Add to cart" Width="143px" Height="35px" />
                                <br>
                            </div>
                            <div class="img"><img src="<%# Eval("pimage") %>" style="float: right; width: 100px; height: 100px;" >
                            </div>
                            <div class="price">₹ <%# Eval("price") %>/1kg</div>
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
   </section>

   <section class="menu" id="light">
      <div class="swiper menu-slider">
         <div class="swiper-wrapper">
            <div class="swiper-slide slide">
               <h3 class="title">Light</h3>
               <div class="box-container">
                   <asp:DataList ID="DataList3" runat="server" DataSourceID="SqlDataSource3" RepeatDirection="Horizontal" RepeatColumns="4" Width="1504px" HorizontalAlign="Center">
                       <ItemTemplate>
                           <div class="box" style="padding-block:auto">
                        <div class="info">
                           <h3><%# Eval("pname") %></h3>
                           <br>
                            <asp:TextBox ID="txtQuantity" runat="server" Height="45px" Width="99px" placeholder="Enter Quantity" Font-Size="Medium"></asp:TextBox>
                            <br />
                            <div class="price">
                                ₹ <%# Eval("price") %>
                            </div>
                            <asp:Button ID="btnAddtocart" runat="server" CssClass="btn" Text="Add to cart" Width="143px" Height="35px" />
                            
                            <br>

                        </div>
                        <div class="img"><img src="<%# Eval("pimage") %>" style="float: right; width: 100px; height: 100px;" >
                        </div>
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
   </section>

    <section class="menu" id="refrigerator">

      <div class="swiper menu-slider">
         <div class="swiper-wrapper">
            <div class="swiper-slide slide">
               <h3 class="title">Refrigerator</h3>
               <div class="box-container">
                   <asp:DataList ID="DataList4" runat="server" DataSourceID="SqlDataSource4" RepeatDirection="Horizontal" RepeatColumns="4" Width="1504px" HorizontalAlign="Center">
                       <ItemTemplate>
                           <div class="box" style="padding-block:auto">
                        <div class="info">
                           <h3><%# Eval("pname") %></h3>
                           <br>
                            <asp:TextBox ID="txtQuantity" runat="server" Height="45px" Width="99px" placeholder="Enter Quantity" Font-Size="Medium"></asp:TextBox>
                            <br />
                            <div class="price">
                                ₹ <%# Eval("price") %>
                            </div>
                            <asp:Button ID="btnAddtocart" runat="server" CssClass="btn" Text="Add to cart" Width="143px" Height="35px" />
                            
                            <br>

                        </div>
                        <div class="img"><img src="<%# Eval("pimage") %>" style="float: right; width: 100px; height: 100px;" >
                        </div>
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
   </section>
</asp:Content>

