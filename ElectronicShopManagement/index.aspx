<%@ Page Title="" Language="C#" MasterPageFile="~/header.Master" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="ElectronicShopManagement.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            height: 15px;
        }
    </style>

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
                  <div class="box">
                        
                      <asp:DataList ID="DataList1" runat="server" CellPadding="1" DataSourceID="SqlDataSource1" RepeatColumns="4" RepeatDirection="Horizontal" ShowFooter="False" ShowHeader="False" Width="1541px">
                          <ItemTemplate>
                              <table class="auto-style1">
                                  <tr>
                                      <td>
                                          <asp:Label ID="Label1" runat="server" Font-Size="X-Large" Text='<%# Eval("pname") %>'></asp:Label>
                                          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                          <asp:Label ID="Label4" runat="server" Font-Size="X-Large" Text="₹"></asp:Label>
                                          <asp:Label ID="Label3" runat="server" Font-Size="X-Large" Text='<%# Eval("price") %>'></asp:Label>
                                          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                          <asp:ImageButton ID="ImageButton1" runat="server" Height="100px" ImageUrl='<%# Eval("pimage") %>' Width="100px" />
                                          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
                                  </tr>
                                  <tr>
                                      <td>
                                          <asp:TextBox ID="txtQuantity" runat="server" CssClass="auto-style5" Font-Size="Large" Height="38px" placeholder="Quantity" Width="176px" Wrap="False"></asp:TextBox>
                                          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                          <asp:Button ID="btnAdd" runat="server" BackColor="#FF9900" CssClass="btn" ForeColor="White" Text="Add To Cart" />
                                          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
                                  </tr>
                              </table>
                              <br />
                              <br />
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
                              <table class="auto-style1">
                                  <tr>
                                      <td class="auto-style2">
                                          <asp:Label ID="Label1" runat="server" Font-Size="X-Large" Text='<%# Eval("pname") %>'></asp:Label>
                                          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                          <asp:Label ID="Label4" runat="server" Font-Size="X-Large" Text="₹"></asp:Label>
                                          <asp:Label ID="Label3" runat="server" Font-Size="X-Large" Text='<%# Eval("price") %>'></asp:Label>
                                          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                          <asp:ImageButton ID="ImageButton1" runat="server" Height="100px" ImageUrl='<%# Eval("pimage") %>' Width="100px" />
                                          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
                                  </tr>
                                  <tr>
                                      <td>
                                          <asp:TextBox ID="txtQuantity" runat="server" CssClass="auto-style5" Font-Size="Large" Height="38px" placeholder="Quantity" Width="176px" Wrap="False"></asp:TextBox>
                                          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Button ID="btnAdd" runat="server" BackColor="#FF9900" CssClass="btn" ForeColor="White" Text="Add To Cart" />
                                          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
                                  </tr>
                              </table>
                              <br />
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
                              <table class="auto-style1">
                                  <tr>
                                      <td>
                                          <asp:Label ID="Label1" runat="server" Font-Size="X-Large" Text='<%# Eval("pname") %>'></asp:Label>
                                          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="Label4" runat="server" Font-Size="X-Large" Text="₹"></asp:Label>
                                          <asp:Label ID="Label3" runat="server" Font-Size="X-Large" Text='<%# Eval("price") %>'></asp:Label>
                                          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                          <asp:ImageButton ID="ImageButton1" runat="server" Height="100px" ImageUrl='<%# Eval("pimage") %>' Width="100px" />
                                          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
                                  </tr>
                                  <tr>
                                      <td>
                                          <asp:TextBox ID="txtQuantity" runat="server" CssClass="auto-style5" Font-Size="Large" Height="38px" placeholder="Quantity" Width="176px" Wrap="False"></asp:TextBox>
                                          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Button ID="btnAdd" runat="server" BackColor="#FF9900" CssClass="btn" ForeColor="White" Text="Add To Cart" />
                                          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
                                  </tr>
                              </table>
                              <br />
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
                              <table class="auto-style1">
                                  <tr>
                                      <td>
                                          <asp:Label ID="Label1" runat="server" Font-Size="X-Large" Text='<%# Eval("pname") %>'></asp:Label>
                                          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="Label4" runat="server" Font-Size="X-Large" Text="₹"></asp:Label>
                                          <asp:Label ID="Label3" runat="server" Font-Size="X-Large" Text='<%# Eval("price") %>'></asp:Label>
                                          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:ImageButton ID="ImageButton1" runat="server" Height="100px" ImageUrl='<%# Eval("pimage") %>' Width="100px" />
                                          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
                                  </tr>
                                  <tr>
                                      <td>
                                          <asp:TextBox ID="txtQuantity" runat="server" CssClass="auto-style5" Font-Size="Large" Height="38px" placeholder="Quantity" Width="176px" Wrap="False"></asp:TextBox>
                                          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Button ID="btnAdd" runat="server" BackColor="#FF9900" CssClass="btn" ForeColor="White" Text="Add To Cart" />
                                          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
                                  </tr>
                              </table>
                              <br />
                              <br />
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

