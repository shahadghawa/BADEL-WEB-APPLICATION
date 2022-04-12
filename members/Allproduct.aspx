<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Allproduct.aspx.cs" Inherits="members_Allproduct" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

 

            <sectionclass='main'>
                <h2 style="text-align:right" class='blocktitle'> .</h2>      
 
         <div  style="width:100%; margin-right:-30px; float:right; display:inline">
            <p style="font-size: 20pt; font-weight: bold; display: inline; color: Red">
                Category :</p>
            <asp:DropDownList Font-Bold="true" Width="250px" AutoPostBack="true" Font-Size="20pt"
                ID="DropDownList1" runat="server">
            </asp:DropDownList>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label1" runat="server" Font-Size="20pt" Text="Search "></asp:Label>

            <asp:TextBox ID="TextBox1" runat="server" Font-Size="20pt"></asp:TextBox>  
            <asp:Button ID="Button1" runat="server" Text="Search" onclick="Button1_Click" Font-Size="20pt"/>



    <br />    <br />
      
        
        </div>

 <div class="clear"></div>
     <br />     <br />

     <div class="line"></div>
 
                <div class='blocks col12'>


<asp:ListView ID="ListView1" runat="server" DataSourceID="SqlDataSource1">

            <LayoutTemplate>
                     
                        <asp:PlaceHolder ID="itemPlaceholder" runat="server" />
                   
                </LayoutTemplate>


                  <ItemTemplate>
                  
                  <div class='block col3'>
                      <div class='inner'>
                          <%--  <img src="images/feature-pic4.jpg" alt=""/>--%>

                             <img src="../<%# Eval("productimage")%>" width="212" height="212" alt="" />


                            <h2 style="font-family:Arial; font-size:11px" >  "<%# Eval("product_name")%>"</h2>
                           <i  class="<%# Eval("aimicon")%>" aria-hidden="true"></i>
                            <div class='block_footer'>
                                  <a class='heightlight' href="../members/Addauction.aspx?productid=<%# Eval("product_id")%>">  View Details</a>
                                  <span style="font-size:12px">   <a href="../members/Personaldata.aspx?username=<%# Eval("user_id")%>">"  <%# Eval("fullname")%>" </a> </span> 


                            </div>

                        </div>
                  
                   </div>
                  
                  
                  </ItemTemplate>





</asp:ListView>


     <div class='clearfix'></div>  
           <div class="content-pagenation">
                        <asp:DataPager ID="DataPagerProducts" runat="server" PagedControlID="ListView1" PageSize="24">
                            <Fields>
                                <asp:NextPreviousPagerField ShowFirstPageButton="True"  ShowNextPageButton="False" />
                                <asp:NumericPagerField />
                                <asp:NextPreviousPagerField ShowLastPageButton="True" ShowPreviousPageButton="False" />
                            </Fields>
                        </asp:DataPager>
                    </div>
                       


            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:AuctionDBConnectionString %>"
                SelectCommand="" >
                <SelectParameters>
                    <asp:ControlParameter ControlID="DropDownList1" DefaultValue="1" 
                        Name="category_id" PropertyName="SelectedValue" Type="Int32" />
                </SelectParameters>
             </asp:SqlDataSource>



               
                </div>
 








                 
 

  


           

 

             



 

















           




                    


    </section>
        <div class='clearfix'> </div>





</asp:Content>

