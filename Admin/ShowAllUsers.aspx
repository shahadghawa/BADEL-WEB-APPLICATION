<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true"
    CodeFile="ShowAllUsers.aspx.cs" Inherits="Admin_ShowAllUsers" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style type="text/css">
        .scroll
        {
            overflow: scroll;
        }
        
        
            table td:nth-child(2n) {
        padding:2px 8px;
        border-right:1px solid black; 
         border-left:1px solid black;
   
    }
        
        
 
        
        
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">



   <br />
    <div  style="border: 1px solid black; width: 100%; text-align: left">
        <div style="background-color: #182e56; height: 25px;">
            <span style="color:White" class="news_date1">Admin screen</span>
            <br />
        </div>

        <br />
       
      





    <div  style="float: left; width: 100%">
        <table>
            <tr>
                <td style="width: 100px">
                    maile:
                </td>
                <td style="width: 100px">
                    <asp:TextBox ID="txtFindByEmail" Width="100%" runat="server"></asp:TextBox>
                </td>
                <td style="width: 99px">
                    <asp:Button ID="btnFindUsersByEmail" runat="server" Text="search by mail"
                        Width="231px" Height="27px" OnClick="btnFindUsersByEmail_Click" />
                </td>
            </tr>
            <tr>
                <td style="width: 100px">
                    name :
                </td>
                <td style="width: 100px">
                    <asp:TextBox ID="txtFindByName" Width="100%" runat="server"></asp:TextBox>
                </td>
                <td style="width: 99px">
                    <asp:Button ID="btnFindUsersByName" runat="server" Text="Search by name"
                        Width="231px" Height="27px" OnClick="btnFindUsersByName_Click" />
                </td>
            </tr>
        </table>
    </div>
    <div>
        &nbsp;</div>
    <div style="text-align: left">
        <asp:Button ID="btnShowAll" runat="server" Text="view all users" OnClick="btnShowAll_Click" />
    </div>
    <div>
        &nbsp;</div>
    <div class="scroll" >
        <asp:GridView ID="grdUsers" runat="server" BorderWidth="1px" BackColor="White" CellPadding="3"
            BorderStyle="None" BorderColor="#999999" CssClass=".Grid" GridLines="Vertical"
            CaptionAlign="Left" OnSelectedIndexChanging="grdUsers_SelectedIndexChanging"
            OnRowDeleting="grdUsers_RowDeleting">
            <FooterStyle ForeColor="#4A3C8C" BackColor="#B5C7DE"></FooterStyle>
            <PagerStyle ForeColor="#4A3C8C" HorizontalAlign="Right" BackColor="#E7E7FF"></PagerStyle>
            <HeaderStyle ForeColor="#F7F7F7" Font-Bold="True" BackColor="#4A3C8C"></HeaderStyle>
            <AlternatingRowStyle BackColor="#F7F7F7"></AlternatingRowStyle>
            <Columns>
              
                <asp:CommandField ShowSelectButton="True"></asp:CommandField>
                  <asp:CommandField ShowDeleteButton="True"></asp:CommandField>
            </Columns>
            <SelectedRowStyle ForeColor="#F7F7F7" Font-Bold="True" BackColor="#738A9C"></SelectedRowStyle>
            <RowStyle ForeColor="#4A3C8C" BackColor="#E7E7FF"></RowStyle>
        </asp:GridView>
    </div>
    <div>
        <hr />
    </div>
    <br />
    <div dir="rtl" style="text-align: right">
        
    </div>
  
    <div dir="rtl" style="text-align: right">
        &nbsp;&nbsp;&nbsp;<br />
        <hr />
        <asp:Panel ID="Panel1" runat="server" Width="819px" Height="158px" Visible="False">
            
            </asp:Panel>
        <br />
        <asp:Label ID="lblStatus" runat="server" ForeColor="Red"></asp:Label>
        <br />
        <br />
        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Admin/mainusermanager.aspx">Return to home page</asp:HyperLink>
    </div>
    
    <br />
</asp:Content>
