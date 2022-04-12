<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="Account_login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
 

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
   
   


 <div   >

    <h1 style="text-align:center">
    <br />

       Well come to Badel system To exchange products with your frinds
    </h1>
    <br />
    <p style="text-align:center">
      enter your username and paswward .you  
        <asp:HyperLink ID="RegisterHyperLink" runat="server" EnableViewState="false">should</asp:HyperLink>  register first
    </p>


    <asp:Login ID="LoginUser"  runat="server" EnableViewState="false" RenderOuterTable="false">

     
        <LayoutTemplate>
            <span class="failureNotification">
                <asp:Literal ID="FailureText" runat="server"></asp:Literal>
            </span>
            <asp:ValidationSummary ID="LoginUserValidationSummary" runat="server" CssClass="failureNotification" 
                 ValidationGroup="LoginUserValidationGroup"/>
            <div " class="accountInfo">
                <fieldset style="background-color:#def9f9"   class="login">
                    <legend >Account info</legend>
                    <p>
                        <asp:Label ID="UserNameLabel" runat="server" AssociatedControlID="UserName">Username  :</asp:Label>
                        <asp:TextBox ID="UserName" runat="server" Width="70%" Font-Size="18px" CssClass="txtstyle"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="UserNameRequired" runat="server" ControlToValidate="UserName" 
                             CssClass="failureNotification" ErrorMessage="User Name is required." ToolTip="User Name is required." 
                             ValidationGroup="LoginUserValidationGroup">*</asp:RequiredFieldValidator>
                    </p>
                    <p>
                        <asp:Label ID="PasswordLabel" runat="server" AssociatedControlID="Password">Passward :</asp:Label>
                        <asp:TextBox ID="Password" Width="70%" runat="server" Font-Size="18px" CssClass="txtstyle" TextMode="Password"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="PasswordRequired" runat="server" ControlToValidate="Password" 
                             CssClass="failureNotification" ErrorMessage="Password is required." ToolTip="Password is required." 
                             ValidationGroup="LoginUserValidationGroup">*</asp:RequiredFieldValidator>
                    </p>
                    <p>
                        <asp:CheckBox ID="RememberMe" runat="server"/>
                        <asp:Label ID="RememberMeLabel" runat="server" AssociatedControlID="RememberMe" CssClass="inline">Save Data ?</asp:Label>

                                  <p style="float:left; padding-top:0px" class="submitButton">
                    <asp:Button ID="LoginButton" Font-Bold="true" runat="server" CommandName="Login" Text="Log IN" ValidationGroup="LoginUserValidationGroup"/>
                </p>

                    </p>

             
                </fieldset>
             
            </div>
        </LayoutTemplate>
    </asp:Login>

    <br />
    <br />
    <div class="clear">
                </div>
    </div>
     <div class="clear">
                </div>
</div>


  

</asp:Content>

