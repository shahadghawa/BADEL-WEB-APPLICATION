<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="ShowAllRoles.aspx.cs" Inherits="Admin_ShowAllRoles" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">


 <style type="text/css">
   
        table td:nth-child(2n) {
        padding:2px 8px;
        border-right:1px solid black;
    }
        
        
        
        
        
    </style>



</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
   <br />   <br />
<div  style="border: 1px solid black; padding-right:5px; width: 90%; margin:auto; text-align: left">
        <div style="background-color: #182e56; height: 25px;">
            <span style="color:White" class="news_date1">users screen</span><br />
        </div>
    
   <br />
   
    <div >
        <asp:GridView ID="grdRoles" runat="server" BorderWidth="1px" BackColor="White" CellPadding="4"
            BorderStyle="None" BorderColor="#3366CC" CssClass=".Grid" AutoGenerateColumns="False"
            OnRowCreated="grdRoles_RowCreated" OnRowDeleting="grdRoles_RowDeleting">
            <FooterStyle ForeColor="#003399" BackColor="#99CCCC"></FooterStyle>
            <PagerStyle ForeColor="#003399" HorizontalAlign="Left" BackColor="#99CCCC"></PagerStyle>
            <HeaderStyle ForeColor="#CCCCFF" Font-Bold="True" BackColor="#003399"></HeaderStyle>
            <Columns>
                <asp:CommandField ShowDeleteButton="True" DeleteText="delete"></asp:CommandField>
                <asp:BoundField ReadOnly="True" HeaderText="group">
                    <ItemStyle HorizontalAlign="Left" Font-Bold="False"></ItemStyle>
                </asp:BoundField>
                <asp:BoundField ReadOnly="True" HeaderText="users in group">
                    <ItemStyle HorizontalAlign="Left" Font-Bold="False"></ItemStyle>
                </asp:BoundField>
            </Columns>
            <SelectedRowStyle ForeColor="#CCFF99" Font-Bold="True" BackColor="#009999"></SelectedRowStyle>
            <RowStyle ForeColor="#003399" BackColor="White"></RowStyle>
        </asp:GridView>
    </div>
    <div>
        <hr />
    </div>
    <asp:Label ID="Label1" runat="server" Text="new group:"></asp:Label>
    <asp:TextBox ID="txtRole" runat="server"></asp:TextBox>
    <asp:Button ID="btnAdd" runat="server" Text="Add" OnClick="btnAdd_Click" />&nbsp;<br />
    <hr />
    <table border="1px">
        <tr>
            <td style="width: 146px; height: 7px">
                <asp:Label ID="Label4" runat="server" Text="Add this users :" Width="100%"></asp:Label>
            </td>
            <td style="width: 100px; height: 7px">
                <asp:DropDownList ID="ddlUserAdd" runat="server" Width="100%">
                </asp:DropDownList>
            </td>
            <td style="width: 127px; height: 7px">
                <asp:Label ID="Label5" runat="server" Text="to this group:" Width="100%"></asp:Label>
            </td>
            <td style="width: 146px; height: 7px">
                <asp:DropDownList ID="ddlRoleAdd" runat="server" Width="100%">
                </asp:DropDownList>
            </td>
            <td style="width: 163px; height: 7px">
                <asp:Button ID="btnAddUserToRole" runat="server" 
                    Text="add user to this groupe" OnClick="btnAddUserToRole_Click"
                    Width="100%" />
            </td>
            <td style="width: 122px; height: 7px">
            </td>
        </tr>
        <tr>
            <td style="width: 146px; height: 26px;">
                <asp:Label ID="Label3" runat="server" Text="is this user in this group: " Width="100%"></asp:Label>
            </td>
            <td style="width: 100px; height: 26px;">
                <asp:DropDownList ID="ddlUser" runat="server" Width="100%">
                </asp:DropDownList>
            </td>
            <td style="width: 127px; height: 26px;">
                <asp:Label ID="Label2" runat="server" Text="in this group:" Width="100%"></asp:Label>
            </td>
            <td style="width: 146px; height: 26px;">
                <asp:DropDownList ID="ddlRole" runat="server" Width="100%">
                </asp:DropDownList>
            </td>
            <td style="width: 163px; height: 26px;">
                <asp:Button ID="btnCheckUserInRole" OnClick="btnCheckUserInRole_Click" runat="server"
                    Text="is user in this group ؟" Width="100%" />
            </td>
            <td style="width: 122px; height: 26px;">
                <asp:Label ID="lblResults" runat="server" Width="100%"></asp:Label>
            </td>
        </tr>
        <tr>
            <td style="width: 146px; height: 26px;">
                <asp:Label ID="Label8" runat="server" Text="delet this user from group:" Width="100%"></asp:Label>
            </td>
            <td style="width: 100px; height: 26px;">
                <asp:DropDownList ID="ddlUserDelete" runat="server" OnSelectedIndexChanged="ddlUserDelete_SelectedIndexChanged"
                    AutoPostBack="True" Width="100%">
                </asp:DropDownList>
            </td>
            <td style="width: 127px; height: 26px;">
                <asp:Label ID="Label9" runat="server" Text="from this group:" Width="100%"></asp:Label>
            </td>
            <td style="width: 146px; height: 26px;">
                <asp:DropDownList ID="ddlRoleDelete" runat="server" Width="100%">
                </asp:DropDownList>
            </td>
            <td style="width: 163px; height: 26px;">
                <asp:Button ID="btnDeleteUserFromRole" runat="server" Text="delet user from this group"
                    OnClick="btnDeleteUserFromRole_Click" Width="100%" />
            </td>
            <td style="width: 122px; height: 26px;">
            </td>
        </tr>
    </table>
    <asp:Label ID="lblStatus" runat="server" ForeColor="Red"></asp:Label>
    <br />
    <br />
    <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Admin/mainusermanager.aspx">Return to home page</asp:HyperLink>
    </div>











</asp:Content>

