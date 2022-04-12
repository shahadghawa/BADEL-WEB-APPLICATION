<%@ Page ValidateRequest="false" Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true"
    CodeFile="Addadvertise.aspx.cs" Inherits="mebers_Addadvertise" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <script type="text/javascript">
        function uploadStarted() {
            $get("ContentPlaceHolder1_imgDisplay").style.display = "none";
        }
        function uploadComplete(sender, args) {
            var imgDisplay = $get("ContentPlaceHolder1_imgDisplay");
            imgDisplay.src = "images/loader.gif";
            imgDisplay.style.cssText = "";
            var img = new Image();
            img.onload = function () {
                imgDisplay.style.cssText = "height:300px; width: 80%";
                imgDisplay.src = img.src;
            };
            img.src = "<%=ResolveUrl(UploadFolderPath) %>" + args.get_fileName(); ;
        }
    </script>
    <style type="text/css">
        .imgsize
        {
            width: 80%;
            height: 200px;
        }
        
        .Calendar
        {
            background-color: White;
            color: red;
            font-family: Courier New;
            font-size: 17px;
            font-weight: bold;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <br />
    <div style="width:95%; margin:auto">
    
   

    <section class='left col6 toright'>
     
     <div style="width:80%; float:right">
              <h2 style="font-family:Arial; text-align:center" class='blocktitle'> product picture</h2>  

    
                    <img id="imgDisplay" runat="server"  class="imgsize" alt="" src="" />
                    <br />
                    <asp:AsyncFileUpload OnClientUploadComplete="uploadComplete" runat="server" ID="AsyncFileUpload1"
                        Width="80%" UploaderStyle="Modern" CompleteBackColor="White" UploadingBackColor="#CCFFFF"
                        ThrobberID="imgLoader" OnUploadedComplete="FileUploadComplete" OnClientUploadStarted="uploadStarted" />
   
    </div>
            </section>
    <section class='main col6 toleft '>
   
                <h2 style="font-family:Arial" class='blocktitle'> Advertise details
    </h2>      

                 

                <div class='inputrow tworows _100'>
                    <label> product name</label> <asp:TextBox ID="itemname" Font-Size="16pt"   runat="server"></asp:TextBox>
                </div>



                 <div class='inputrow tworows _100'>
                    <label> product kind</label>
                
                     <asp:DropDownList ID="ddcategory" Width="100%" Font-Size="16pt" runat="server">
                    <asp:ListItem>a</asp:ListItem>
                      <asp:ListItem>a</asp:ListItem>
                        <asp:ListItem>a</asp:ListItem>
                    </asp:DropDownList> 
                </div>


                 <div class='inputrow tworows _100'>
                    <label>the aim</label> <asp:DropDownList ID="DropDownList2" Width="100%" Font-Size="16pt" runat="server">
                    <asp:ListItem>Exchange</asp:ListItem>
                    <asp:ListItem>Borrow</asp:ListItem>
                    <asp:ListItem>Donate</asp:ListItem>
                    </asp:DropDownList> 
                </div>


                 <div class='inputrow tworows _100'>
                    <label> condition</label> <asp:TextBox ID="condition" Font-Size="16pt"   runat="server"></asp:TextBox>
                </div>
           
 
                <div class='inputrow tworows'>
                    <label> product descripation </label>
                     <asp:TextBox ID="desc" TextMode="MultiLine" Width="100%" runat="server"></asp:TextBox>
                </div>   

                

                <div class='line'></div>

                  <label>
                        <input id="Button1" type="button" onserverclick="Button1_Click" runat="server" class="button" value="Save data" />
                         
                        <input id="Button2" type="button" onserverclick="Button2_Click" runat="server" class="button" value="Cancel" />
                    </label>


             <%--   <button  class='submit'> submit</button>
                <button class='reset' > resset</button>
                <button   > button</button>--%>
                <div class='clearfix'> </div>

    </section>
    <div class='clearfix'>
    </div>
    <asp:GridView ID="gvSubDetails" runat="server" DataKeyNames="product_id" AutoGenerateColumns="False"
        Width="100%" CellPadding="4" AllowPaging="True" AllowSorting="True" BorderColor="#CC9966"
        BorderStyle="Solid" BorderWidth="3px" RowStyle-Font-Size="10px" Font-Size="16pt">
        <RowStyle BackColor="White" Font-Size="14px" HorizontalAlign="Center" Height="20px"
            ForeColor="#330099" />
        <Columns>
            <asp:TemplateField>
                <ItemTemplate>
                    <asp:LinkButton ID="lbtnSelect" runat="server" CommandName="Select" Text="Select" />
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="category_id" Visible="false">
                <ItemTemplate>
                    <asp:Label ID="lbcategory_id" runat="server" CssClass="gridviewcolumcenter" Text='<%#Eval("category_id") %>' />
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderStyle-HorizontalAlign="Center" HeaderText="Category">
                <ItemTemplate>
                    <asp:Label ID="lblcategory_name" runat="server" CssClass="gridviewcolumcenter" Text='<%#Eval("category") %>' />
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderStyle-HorizontalAlign="Center" HeaderText="Product name">
                <ItemTemplate>
                    <asp:Label ID="lblproduct_name" runat="server" CssClass="gridviewcolumcenter" Text='<%#Eval("product_name") %>' />
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderStyle-HorizontalAlign="Center" Visible="false" HeaderText="product descripation">
                <ItemTemplate>
                    <asp:Label ID="lblproduct_descripation" runat="server" CssClass="gridviewcolumcenter"
                        Text='<%#Eval("product_descripation") %>' />
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderStyle-HorizontalAlign="Center" Visible="false" HeaderText="path">
                <ItemTemplate>
                    <asp:Label ID="lbproductimage" runat="server" CssClass="gridviewcolumcenter" Text='<%#Eval("productimage") %>' />
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderStyle-HorizontalAlign="Center" HeaderText="Date">
                <ItemTemplate>
                    <asp:Label ID="lbStartdate" runat="server" CssClass="gridviewcolumcenter" Text='<%#Eval("Startdate") %>' />
                </ItemTemplate>
            </asp:TemplateField>
            <%-- <asp:TemplateField HeaderStyle-HorizontalAlign="Center" HeaderText="الحالة">
                            <ItemTemplate>
                                <asp:Label ID="lbthesataofauction" runat="server" CssClass="gridviewcolumcenter"
                                    Text='<%#Eval("thesataofauction") %>' />
                            </ItemTemplate>
                        </asp:TemplateField>--%>
        </Columns>
        <HeaderStyle BackColor="#C0C0C0" Font-Bold="True" ForeColor="Black" />
        <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
        <RowStyle ForeColor="#000066" />
        <SelectedRowStyle BackColor="#FFA500" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#F1F1F1" />
        <SortedAscendingHeaderStyle BackColor="#007DBB" />
        <SortedDescendingCellStyle BackColor="#CAC9C9" />
        <SortedDescendingHeaderStyle BackColor="#00547E" />
    </asp:GridView>
    <asp:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server">
    </asp:ToolkitScriptManager>

     </div>
</asp:Content>
