<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true"
    CodeFile="Adddata.aspx.cs" Inherits="Admin_Adddata" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <section class='main'>

    <br />
    <div  style="border: 1px solid black; width: 90%; text-align: left; margin:auto">
        <div style="background-color: #35abab; height: 25px;">
            <span >Admin</span>
            <br />
        </div>

        <br />
          <span class="news_date1">Add Category</span>
        <hr />
        <table style="font-size: 16pt; font-weight: bold" width="100%">
            <tr>
                <td style="padding-top: 10px; vertical-align: middle; padding-right: 5px; width: 20%;
                    height: 10px;">
                    product category:
                </td>
                <td style="padding-top: 10px; vertical-align: middle; padding-right: 5px; width: 30%">
                    <asp:TextBox ID="TextBox5" Font-Size="18pt" runat="server" Width="250px"></asp:TextBox>
                </td>
                <td rowspan="3" style="padding-top: 10px; padding-bottom: 10px; vertical-align: middle;
                    padding-right: 5px; width: 40%">
                    <asp:ListBox Width="50%" ID="ListBox1" Height="200px" runat="server">
                    </asp:ListBox>
                </td>
            </tr>
            <tr>
                <td style="padding-top: 10px; vertical-align: middle; padding-right: 5px; width: 10%;
                    height: 10px;">
                    Category Details
                </td>
                <td style="padding-top: 10px; vertical-align: middle; padding-right: 5px; width: 30%">
                    <asp:TextBox ID="TextBox7" runat="server" TextMode="MultiLine" Font-Size="18pt" Width="250px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                </td>
                <td style="padding-top: 10px;padding-bottom: 10px;  vertical-align: middle; padding-right: 5px; width: 30%">
                    <asp:Button ID="Button9" Font-Size="14pt" runat="server" Text="Add category" 
                        onclick="Button9_Click" />
                    <asp:Button ID="Button10"  Font-Size="14pt" runat="server" Text="Delete category" 
                        onclick="Button10_Click" />
                </td>
            </tr>
        </table>

        <div style="width:100%; height:20px">
        
        <p><asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Size="14pt" 
                        ForeColor="Red"></asp:Label></p>
        </div>

            <br />
          <span class="news_date1">Register Department</span>
        <hr />
        <table style="font-size: 16pt; font-weight: bold" width="100%">
            <tr>
                <td style="padding-top: 10px; vertical-align: middle; padding-right: 5px; width:20%;height: 10px;">
                    
                   Departments:
                </td>
                <td style="padding-top: 10px; vertical-align: middle; padding-right: 5px; width: 10%">
                    <asp:TextBox ID="TextBox1" Font-Size="18pt" runat="server" Width="250px"></asp:TextBox>
                </td>
                <td rowspan="3" style="padding-top: 10px; padding-bottom: 10px; vertical-align: middle;
                    padding-right: 5px; width: 40%">
                    <asp:ListBox Width="50%" ID="ListBox2" Height="200px" runat="server">
                    </asp:ListBox>
                </td>
            </tr>
            <tr>
                <td style="padding-top: 10px; vertical-align: middle; padding-right: 5px; width: 30%;
                    height: 10px;">
                    &nbsp;</td>
                <td style="padding-top: 10px; vertical-align: middle; padding-right: 5px; width: 30%">
                    &nbsp;</td>
            </tr>
            <tr>
                <td>
                </td>
                <td style="padding-top: 10px;padding-bottom: 10px;  vertical-align: middle; padding-right: 5px; width: 30%">
                    <asp:Button ID="Button1" Font-Size="14pt" runat="server" Text="Add " 
                        onclick="Button1_Click" />
                    <asp:Button ID="Button2"  Font-Size="14pt" runat="server" Text="Delete " 
                        onclick="Button2_Click" />
                </td>
            </tr>
        </table>
          <div style="width:100%; height:20px">
        
        <p><asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="14pt" 
                        ForeColor="Red"></asp:Label></p>
        </div>
              <br />
          <span class="news_date1">Add jops</span>
        <hr />
        <table style="font-size: 16pt; font-weight: bold" width="100%">
            <tr>
                <td style="padding-top: 10px; vertical-align: middle; padding-right: 5px; width: 30%;
                    height: 10px;">
                   Jop:
                </td>
                <td style="padding-top: 10px; vertical-align: middle; padding-right: 5px; width: 30%">
                    <asp:TextBox ID="TextBox2" Font-Size="18pt" runat="server" Width="250px"></asp:TextBox>
                </td>
                <td rowspan="3" style="padding-top: 10px; padding-bottom: 10px; vertical-align: middle;
                    padding-right: 5px; width: 40%">
                    <asp:ListBox Width="50%" ID="ListBox3" Height="100px" runat="server">
                    </asp:ListBox>
                </td>
            </tr>
            <tr>
                <td style="padding-top: 10px; vertical-align: middle; padding-right: 5px; width: 10%;
                    height: 10px;">
                    &nbsp;</td>
                <td style="padding-top: 10px; vertical-align: middle; padding-right: 5px; width: 30%">
                    &nbsp;</td>
            </tr>
            <tr>
                <td>
                </td>
                <td style="padding-top: 10px;padding-bottom: 10px;  vertical-align: middle; padding-right: 5px; width: 30%">
                    <asp:Button ID="Button3" Font-Size="14pt" runat="server" Text="Add jop" 
                        onclick="Button3_Click" />
                    <asp:Button ID="Button4"  Font-Size="14pt" runat="server" Text="Delete Jop" 
                        onclick="Button4_Click" />
                </td>
            </tr>
        </table>
             <div style="width:100%; height:20px">
        
        <p><asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Size="14pt" 
                        ForeColor="Red"></asp:Label></p>
        </div>
        </div>
           </section>
</asp:Content>
