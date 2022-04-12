<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true"
    CodeFile="itemRequestes.aspx.cs" Inherits="members_itemRequestes" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style type="text/css">
        .wrabclass
        {
            width: 200px;
            word-wrap: break-word;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <br />
    <br />
  <div style="width:95%; margin:auto">
    <section class='main'>
         
         
          <div id="fomsurvey">
        <fieldset  id="createfac">
            <legend id="createfaclegend">view requests for my advertise</legend>
       
            <table width="100%" >
                <tr>
                    <td style="width: 150px; height:100px; padding-right: 20px">
                        <asp:Label ID="Label1" runat="server" Text=" choose product :"></asp:Label>
                    </td>
                    <td style="padding-left: 150px" align="left">
                     
                        <asp:DropDownList ID="DropDownList4" Width="70%" Font-Size="22px" CssClass="txtstyle" 
                            runat="server" AutoPostBack="True" 
                            onselectedindexchanged="DropDownList4_SelectedIndexChanged">
                         
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td style="width: 150px; padding-right: 20px; padding-top: 50px">
                        <asp:Label ID="Label2" runat="server" Text="Advertise Details :"></asp:Label>
                    </td>
                    <td>
                        <table width="100%" style="border-width:1; border-style:solid; border-color:Black" >
                            <tr>
                                <td style="width: 30%">
                                    post date 
                                </td>
                                <td>
                                    <asp:Label ID="lbStartdate" ForeColor="blue" runat="server" Text=""></asp:Label>
                                </td>
                                <td rowspan="3" style="width:200px; height:200px; vertical-align:middle" >   
                                    
                                    <img id="theimg" style="width:90%; height:90%" src="" runat="server" alt="" />
                                </td>
                            </tr>
                 
        
   <tr>
                                <td style="width: 20%">
                                the aime:
                                </td>
                                <td>
                                    <asp:Label ID="theaim" ForeColor="blue" runat="server" Text=""></asp:Label>
                                </td>
                            </tr>



   <tr>
                                <td style="width: 20%">
                                 Condtions:
                                </td>
                                <td>
                             
                                     <asp:TextBox ID="condition" Width="100%" TextMode="MultiLine" runat="server"></asp:TextBox>
                                </td>
                            </tr>


                             <tr>
                                <td style="width: 20%">
                       product details
                                </td>
                                <td>
                                     

                                    <asp:TextBox ID="product_descripation" Width="100%" TextMode="MultiLine" runat="server"></asp:TextBox>

                                </td>
                            </tr>


                        </table>
                    </td>
                </tr>
                <tr>
                    <td>
                        <br />
                        <asp:Label ID="Label4" runat="server" Text="auction for viewed product"></asp:Label>
                    </td>
                    <td>
                       
                    </td>
                </tr>
                <tr>
                    <td  colspan="2">
                        <br />
                        <br />
                    





                    </td>
                </tr>
                <tr>
                    <td>
                        <br />
                    </td>
                    <td>
                        <br />
                    </td>
                </tr>
            </table>


            <br />



                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" Width="100%"  PageSize="100" 
                            CellPadding="4" AllowPaging="True" AllowSorting="True" BackColor="White" BorderColor="#CC9966"
                            BorderWidth="1px" RowStyle-Font-Size="12px" Font-Size="12pt">
                            <RowStyle BackColor="White" Font-Size="14px" BorderWidth="1px" HorizontalAlign="Center"
                                Height="20px" ForeColor="#330099" />
                            <Columns>
                            
                                <asp:BoundField DataField="dateofauction" HeaderText="Date" SortExpression="CreatedOn" />
                                
                                <asp:BoundField DataField="requesttype" HeaderText="Aim" SortExpression="requesttype" />
 
                                   <asp:HyperLinkField DataNavigateUrlFields="exchangeproductid" DataNavigateUrlFormatString="Addauction.aspx?productid={0}"
                                    DataTextField="requestdetails" HeaderText="Details" />

 

                                       <asp:TemplateField HeaderText="condition" HeaderStyle-Width="10%"  >
                    <ItemTemplate>
 <div class="wrabclass">
                        <asp:Label ID="lbldate" runat="server" Text='<%#Eval("requestcondition") %>'    />
                        </div>
                   
                    </ItemTemplate>
                </asp:TemplateField>


           <%--                   <asp:BoundField DataField="requestcondition"  ControlStyle-CssClass="wrabclass" HeaderText="الشروط"    SortExpression="requestcondition" /> --%>

                                  <asp:BoundField DataField="mobile1" HeaderText="mobile" SortExpression="mobile" />
                                  <asp:BoundField DataField="user_email" HeaderText="mail" SortExpression="CreatedOn" />


                                
                                
                               
                                <asp:HyperLinkField DataNavigateUrlFields="userid" DataNavigateUrlFormatString="Personaldata.aspx?username={0}"
                                    DataTextField="Theuser_name" HeaderText="profile" />
                            </Columns>
                            <EditRowStyle Font-Bold="False" Font-Size="16pt" HorizontalAlign="Center" VerticalAlign="Middle" />
                            <FooterStyle BackColor="#FFFFCC" ForeColor="#330099" />
                            <PagerStyle BackColor="#FFFFCC" ForeColor="#330099" HorizontalAlign="Center" />
                            <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="#663399" />
                            <HeaderStyle BackColor="#B81D22" Font-Bold="True" ForeColor="White" />
                        </asp:GridView>



        </fieldset>
    </div>
         

         
         </section>
         </div>
</asp:Content>
