<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true"
    CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <section class='main'>


                <div class='slide_show col12' dir="ltr">
                    <div class='data col9'>
                        <div class='inner'>

                            <div class='slide_item'>
                                <div class='slide_item_right col7 ' >
                                    <h2>Exchange your items with your  frind</h2>
                                    <h1>Donate & borrow</h1>
                                    <h3> lend &sale </h3>
                                    <span class='text'>  know more about badel </span>
                                    <span class='btn'><asp:HyperLink  ForeColor="White" ID="HyperLink1" runat="server"  NavigateUrl="~/members/Allproduct.aspx"> المزيد </asp:HyperLink> </span>
                                </div>
                                <div class='slide_item_left   col5' >

                                    <img src="images/slide-2-image.jpg" alt=""/>

                                </div>
                                <div class='clearfix'></div>
                            </div>


                        </div>

                    </div>
                     

<asp:ListView ID="ListView2" runat="server" DataSourceID="SqlDataSource2">

               <LayoutTemplate>
                        <div class='slide_show_mwnu col2'>
                        <div class='inner'>
                            <div class='btn'>
                                Category
                            </div>
                            <ul>
                        <asp:PlaceHolder ID="itemPlaceholder" runat="server" />
                              </ul> 

                        </div>
                        </div>
                   
                </LayoutTemplate>
                   <ItemTemplate>
                                <li> <a class='heightlight'  style="font-size:14px" href="members/Allproduct.aspx?category_id=<%# Eval("category_id")%>">  <%# Eval("category_name")%>  </a> </li>
                      
                   </ItemTemplate>

</asp:ListView>


           <asp:DataPager ID="DataPagerProducts1" runat="server" PagedControlID="ListView2" PageSize="8">
                <Fields>
                    <asp:NumericPagerField />
                </Fields>
            </asp:DataPager>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:AuctionDBConnectionString %>"
                SelectCommand="select * from dbo.category"></asp:SqlDataSource>

                    <div class='clearfix'></div>
            

                <div class='blocks col12'>
                    <h2  class='title'><span> News  </span></h2>

<asp:ListView ID="ListView1" runat="server" DataSourceID="SqlDataSource1">

            <LayoutTemplate>
                     
                        <asp:PlaceHolder ID="itemPlaceholder" runat="server" />
                   
                </LayoutTemplate>
                
                  <ItemTemplate>
                          <div class='block col3'>
                      <div class='inner'>

                             <img src="<%# Eval("productimage")%>" width="212" height="212" alt="" />
                            <h2 style="font-family:Arial; font-size:11px">  "<%# Eval("product_name")%>"</h2>
                            <i  class="<%# Eval("aimicon")%>" aria-hidden="true"></i>
                            <div class='block_footer'>
                 
                                 <a class='heightlight' href="members/Addauction.aspx?productid=<%# Eval("product_id")%>">View Details</a>

                                        <span style="font-size:12px">   <a href="../members/Personaldata.aspx?username=<%# Eval("user_id")%>">"  <%# Eval("fullname")%>" </a> </span>                           
                            </div>
                        </div>
                   </div>

                  </ItemTemplate>

</asp:ListView> 


 <div class='clearfix'></div>  
            <asp:DataPager ID="DataPagerProducts" runat="server" PagedControlID="ListView1" PageSize="4">
                <Fields>
                    <asp:NumericPagerField />
                </Fields>
            </asp:DataPager>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:AuctionDBConnectionString %>"
                SelectCommand="exec gethomepageadvertise"></asp:SqlDataSource>
                </div>

            </section>
</asp:Content>
