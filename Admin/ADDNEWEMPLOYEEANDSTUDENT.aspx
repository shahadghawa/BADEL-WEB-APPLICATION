<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="ADDNEWEMPLOYEEANDSTUDENT.aspx.cs" Inherits="Admin_ADDNEWEMPLOYEEANDSTUDENT" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        table td:nth-child(2n)
        {
            padding: 2px 8px;
            border-right: 1px solid black;
        }
    </style>




</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<br />
<div  style="border: 1px solid black; width: 90%; margin:auto; text-align: left">
        <div style="background-color:#26a2a2; height: 25px;">
            <span style="color:White" class="news_date1">add graduated and members of university</span>
            <br />
        </div>
     

        <section class='main'> 
                <h2 class='blocktitle'> Add members data to allow them using badel</h2>      
                    
                <div class='inputrow _25'>
                    <label>  Student/employee	 </label>  <asp:DropDownList ID="DropDownList1" Width="90%" Font-Size="14pt" runat="server">
                    <asp:ListItem>Student</asp:ListItem>
                 
                    <asp:ListItem>employee</asp:ListItem>
                </asp:DropDownList>
                </div>   




                <div class='inputrow _50'>
                    <label> member name *</label> <asp:TextBox ID="emptName" runat="server" Width="90%" Font-Size="14pt"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvSubjectName" runat="server" Text="*" ControlToValidate="emptName"
                    ForeColor="Red" ValidationGroup="vgAdd" />
                </div>
                <div class='inputrow _25'>
                    <label>   number </label><asp:TextBox ID="txtmemberId" runat="server"  Width="90%" Enabled="false" Font-Size="14pt" /> 
                </div>  


                   <div class='inputrow _25'>
                    <label> National ID: * 	</label>  <asp:RequiredFieldValidator ID="rfvGrade" runat="server" ControlToValidate="Identity_numbertex"
                    Text="*" ForeColor="Red" ValidationGroup="vgAdd" />
     
                
                <asp:TextBox ID="Identity_numbertex" runat="server" Width="90%" Font-Size="14pt"></asp:TextBox>
                </div>

                  <div class='inputrow _25'>
                    <label> Department *	</label>    <asp:DropDownList ID="DropDownList4" Width="90%" Font-Size="14pt" runat="server">
                </asp:DropDownList>
                </div>


   

                <div class='line'></div>


                
           




                <asp:Button ID="btnInsert" runat="server" Text="Insert" OnClick="btnInsert_Click"
                    ValidationGroup="vgAdd" />
                &nbsp;
                <asp:Button ID="btnUpdate" runat="server" Text="Update" OnClick="btnUpdate_Click"
                    ValidationGroup="vgAdd" />
                &nbsp;
                <asp:Button ID="btnDelete" runat="server" Text="Delete" OnClick="btnDelete_Click"
                    OnClientClick="return confirm('Are you sure you want to delete this record?')"
                    ValidationGroup="vgAdd" />
                &nbsp;
                <asp:Button ID="btnCancel" runat="server" Text="Cancel" OnClick="btnCancel_Click"
                    CausesValidation="false" />

                    <asp:Label ID="lblMsg" runat="server" Font-Bold="True" 
                    Font-Size="14pt" ForeColor="Red"></asp:Label>


                    <div class='line'></div>




    <asp:GridView ID="gvSubDetails" runat="server" DataKeyNames="userid" AutoGenerateColumns="False" PageSize="200"
            Width="95%" CellPadding="4" OnSelectedIndexChanged="gvSubDetails_SelectedIndexChanged"
            AllowPaging="True" AllowSorting="True" BackColor="White" BorderColor="#CC9966"
            BorderStyle="None" BorderWidth="1px" RowStyle-Font-Size="10px" Font-Size="16pt">
            <RowStyle BackColor="White" Font-Size="14px" HorizontalAlign="Center" Height="20px"
                ForeColor="#330099" />
            <Columns>
                <asp:TemplateField HeaderText="department_id" Visible="false">
                    <ItemTemplate>
                        <asp:Label ID="department_id" runat="server" CssClass="gridviewcolumcenter" Text='<%#Eval("universityID") %>' />
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderStyle-HorizontalAlign="Center" HeaderText="Student/Graduate">
                    <ItemTemplate>
                        <asp:Label ID="lbuserkind" runat="server" CssClass="gridviewcolumcenter" Text='<%#Eval("userkind") %>' />
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderStyle-HorizontalAlign="Center" HeaderText="Department">
                    <ItemTemplate>
                        <asp:Label ID="lbldepartment" runat="server" CssClass="gridviewcolumcenter" Text='<%#Eval("debNAME") %>' />
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderStyle-HorizontalAlign="Center" HeaderText="national ID">
                    <ItemTemplate>
                        <asp:Label ID="lblIdentity" runat="server" CssClass="gridviewcolumcenter" Text='<%#Eval("Identity_num") %>' />
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderStyle-HorizontalAlign="Center" HeaderText="Name">
                    <ItemTemplate>
                        <asp:Label ID="lbname" runat="server" CssClass="gridviewcolumcenter" Text='<%#Eval("username") %>' />
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderStyle-HorizontalAlign="Center" HeaderText="member number">
                    <ItemTemplate>
                        <asp:Label ID="empid" runat="server" CssClass="gridviewcolumcenter" Text='<%#Eval("userid") %>' />
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField>
                    <ItemTemplate>
                        <asp:LinkButton ID="lbtnSelect" runat="server" CommandName="Select" Text="Select" />
                    </ItemTemplate>
                </asp:TemplateField>
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




        </div>

 
    </section>


        <br />


 

     </div>
 </div>
</asp:Content>

