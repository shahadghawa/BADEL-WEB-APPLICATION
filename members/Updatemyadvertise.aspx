<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Updatemyadvertise.aspx.cs" Inherits="members_Updatemyadvertise" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <br />
  
  <div  style="border: 1px solid black; width: 99%; text-align: right; margin:auto">
        <div style="background-color: #009595; height: 25px;">
            <span style="color:White" class="news_date1"> member control panal</span>
            <br />
        </div>
        <br />
    <section class='main'>

 
                <div class='line'></div>  

             <div id="fomsurvey">
        <fieldset style="margin-right: auto; margin-bottom: auto; text-align:left" id="createfac" >
            <legend id="createfaclegend">update advertis</legend>
     
            <asp:Label ID="Label1" runat="server" Text="Label" Visible="False"></asp:Label>
       
            <br />


             <asp:DetailsView ID="DetailsView1" runat="server" Height="50px" Width="100%" AllowPaging="True"
                AutoGenerateRows="False" Font-Size="14pt" DataKeyNames="product_id"
                DataSourceID="SqlDataSource1">
                <EditRowStyle />
                <Fields>
                    <asp:BoundField DataField="product_id" HeaderText="product_id" InsertVisible="False" 
                        ReadOnly="True" SortExpression="product_id" />
                    <asp:BoundField DataField="product_name" HeaderText="product_name" 
                        SortExpression="product_name"/>
                    <asp:BoundField DataField="category_id" HeaderText="category_id" 
                        SortExpression="category_id" />
                   
                    <asp:BoundField DataField="theaim" ControlStyle-Width="100%"  
                        HeaderText="theaim" SortExpression="theaim" >
                    </asp:BoundField>
                    <asp:BoundField DataField="condition" HeaderText="condition" 
                        SortExpression="condition"/>
                    <asp:BoundField DataField="Startdate" HeaderText="Startdate" 
                        SortExpression="Startdate" />
                 

                     <asp:BoundField DataField="product_descripation" 
                        HeaderText="product_descripation" SortExpression="product_descripation" />

                     <asp:BoundField DataField="productimage" HeaderText="productimage" 
                        SortExpression="productimage" />
                  




                    <asp:BoundField DataField="user_id" HeaderText="user_id" 
                        SortExpression="user_id" />
                  




                    <asp:CheckBoxField DataField="thesataofauction" HeaderText="thesataofauction" 
                        SortExpression="thesataofauction" />
                    <asp:BoundField DataField="aimicon" HeaderText="aimicon" 
                        SortExpression="aimicon" />
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                </Fields>
                <CommandRowStyle Width="100%" />
                <EditRowStyle BorderStyle="Double" BackColor="#FFCC66" BorderWidth="2px" Width="100%"
                    Font-Size="14pt" />
                <FieldHeaderStyle Width="20%" />
            </asp:DetailsView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:AuctionDBConnectionString %>"
                DeleteCommand="DELETE FROM [productAddadvertise] WHERE [product_id] = @product_id"
                InsertCommand="INSERT INTO productAddadvertise(category_id, product_name, product_descripation, productimage, user_id, Startdate,  thesataofauction) VALUES (@category_id, @product_name, @product_descripation, @productimage, @user_id, @Startdate,  @thesataofauction)"
                SelectCommand="SELECT * FROM [productAddadvertise] WHERE ([user_id] = @user_id)"
                
                UpdateCommand="UPDATE productAddadvertise SET product_name = @product_name, product_descripation = @product_descripation, Startdate = @Startdate,  thesataofauction = @thesataofauction, condition = @condition WHERE (product_id = @product_id)">
                <DeleteParameters>
                    <asp:Parameter Name="product_id" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="category_id" Type="Int32" />
                    <asp:Parameter Name="product_name" Type="String" />
                    <asp:Parameter Name="product_descripation" Type="String" />
                    <asp:Parameter Name="productimage" Type="String" />
                    <asp:Parameter Name="user_id" Type="Int32" />
                    <asp:Parameter Name="Startdate" Type="DateTime" />
                   
                    <asp:Parameter Name="thesataofauction" Type="Boolean" />
                </InsertParameters>
                <SelectParameters>
                    <asp:ControlParameter ControlID="Label1" DefaultValue="1" Name="user_id" PropertyName="Text"
                        Type="Int32" />
                </SelectParameters>
                <UpdateParameters>
                    
                    <asp:Parameter Name="product_name" Type="String" />
                    <asp:Parameter Name="product_descripation" Type="String" />
          
                    <asp:Parameter Name="Startdate" Type="DateTime" />
                
                    <asp:Parameter Name="thesataofauction" Type="Boolean" />
                    <asp:Parameter Name="condition" />
                    <asp:Parameter Name="product_id" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </fieldset>
    </div>


                <div class='clearfix'></div>  


            </section>


 



    
    </div>


















</asp:Content>

