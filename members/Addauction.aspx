<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true"
    CodeFile="Addauction.aspx.cs" Inherits="mebers_Addauction" %> 
    <%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
 
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
 

    <div class="main" style="width:90%; border:1px solid black; margin:auto; margin-top:50px">
        <div class="content" style="width:100%">
            <div style="width:100%; margin:auto" >
                <div style="font-size: 18pt;width:100%; margin:auto; border:1px solid black"  class="grid news_desc">
                    <h3>
                        product details
                    </h3>
                    <hr />
                    <table width="100%">


                       <tr>
                            <td style="width: 30%">
                                product name
                            </td>
                            <td>
                                <asp:Label ID="productname" ForeColor="blue" runat="server" Text=""></asp:Label>
                            </td>
                        </tr>

                          <tr>
                            <td style="width: 30%">
                            category 
                            </td>
                            <td>
                                <asp:Label ID="categories" ForeColor="blue" runat="server" Text=""></asp:Label>
                            </td>
                        </tr>

                          <tr>
                            <td style="width: 30%">
                                the aim
                            </td>
                            <td>
                                <asp:Label ID="aim" ForeColor="blue" runat="server" Text=""></asp:Label>
                            </td>
                        </tr>


                           <tr>
                            <td style="width: 30%">
                                condition
                            </td>
                            <td>
                                <asp:Label ID="condition" ForeColor="blue" runat="server" Text=""></asp:Label>
                            </td>
                        </tr>


                    
                   

                               <tr>
                            <td style="width: 20%">
                               product Image
                            </td>
                            <td>
                                  <div class="grid images_3_of_1" >
                    <img id="theimg" src="../images/new-pic2.jpg" style="height:200px; width:200px" runat="server" alt="" />
                </div>
                            </td>
                        </tr>
                                  <tr>
                            <td style="width: 20%">
                               details
                            </td>
                            <td>
                                  <div class="grid images_3_of_1">
                      <p>
                       </p>

                    <asp:TextBox ID="lbdescripation" TextMode="MultiLine"  Width="100%" Height="200PX" runat="server"></asp:TextBox>
                </div>
                            </td>
                        </tr>
                               <tr>
                            <td style="width: 20%">
                               puplished by
                            </td>
                            <td align="left">
                    <span> 
                    <asp:LinkButton ID="LinkButton1" PostBackUrl=""  runat="server">LinkButton</asp:LinkButton>
                    </span> 
                            </td>
                        </tr>
                    </table>
 


   <asp:Panel ID="exchangePanel1" runat="server">
                    <div style="border: 1px solid black; width: 99%; text-align: left">
                        <div style="background-color: #009595; height: 25px;">
                            <span style="color: White; font-size: 18px" class="news_date1">exchange request</span>
                        </div>
                        <section class='main'>
 
                <div class='line'></div>  
                  <div class='inputrow _25'>
                </div>  
                 <div class='inputrow _25'>
                      </div>  
                 <div class='inputrow _50'>
                    <label>  products   </label> <asp:DropDownList ID="DropDownList1" runat="server"></asp:DropDownList>
                </div>  

                     <div class='inputrow tworows'>
                    <label> conduction and details </label>
                     <asp:TextBox ID="TextBox3" Width="90%" TextMode="MultiLine" runat="server"></asp:TextBox>
                </div> 

                <div class='clearfix'></div>  


            </section>
                    </div>
                    </asp:Panel>


                    <asp:Panel ID="borrowPanel1" runat="server">
                    <div style="border: 1px solid black; width: 99%; text-align: left">
                        <div style="background-color: #009595; height: 25px;">
                            <span style="color: White; font-size: 18px" class="news_date1">Borrow request</span>
                        </div>
 
                        <section class='main'>
                <div class='line'></div>  
      <div class='inputrow _25'>
                  
                </div>  
              
              

                  <div class='inputrow _25'>
                    <label>  from  </label><asp:TextBox ID="totext" type="date" runat="server"></asp:TextBox>   
                </div>  
                   <div class='inputrow _25'>
                    <label>  to  </label>  <asp:TextBox ID="fromtxt" type="date" runat="server"></asp:TextBox>             
                </div>  

                      <div class='inputrow tworows'>
                    <label> condition and details </label>
                     <asp:TextBox ID="TextBox4" TextMode="MultiLine" Width="90%" runat="server"></asp:TextBox>
                </div> 
         
                <div class='clearfix'></div>  
            </section>
                    </div>
                     </asp:Panel>



 


 <asp:Panel ID="requestPanel1" runat="server">

<div  style="border: 1px solid black; width: 99%; text-align:left">
        <div style="background-color: #009595; height: 25px;">
            <span style="color:White; font-size:18px" class="news_date1">need request </span>
        </div>
    <section class='main'>

                <div class='line'></div>  
 
                  <div class='inputrow tworows'>
                    <label> condition and details </label>
                     <asp:TextBox ID="TextBox1"  Width="90%" TextMode="MultiLine" runat="server"></asp:TextBox>
                </div> 
 

            </section>


 
 <div class='clearfix'></div>  

    </div>

 </asp:Panel>
  

   <div style="width:100% ">
 
        <asp:Label ID="lbprice0" ForeColor="Red" runat="server"    Visible="False"></asp:Label>
         <asp:Button   ID="buybtn" Font-Size="17px" Font-Bold="true" 
            style="float:left; margin:10px; width:150px; background-color:#009595; color:White"   
            Text="Send requets" runat="server" onclick="buybtn_Click"></asp:Button>
   
  
   <div class='clearfix'></div>  
   </div>


          
                        
                        
                        
                </div>
             
            </div>
        
        </div>
    </div>
</asp:Content>
