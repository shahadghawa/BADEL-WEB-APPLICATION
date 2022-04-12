<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true"
    CodeFile="Register.aspx.cs" Inherits="Account_Register" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <link href="../css/slider.css" rel="stylesheet" type="text/css" />
    <link href="../css/style.css" rel="stylesheet" type="text/css" />
    <script src="../js/jquery-1.7.2.min.js" type="text/javascript"></script>
    <script src="../js/move-top.js" type="text/javascript"></script>
    <script src="../js/easing.js" type="text/javascript"></script>
    <script src="../js/startstop-slider.js" type="text/javascript"></script>
    <link href="StyleSheet.css" rel="stylesheet" type="text/css" />


</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
   
    <br />
    <div style="width:80%; margin:auto"  >
        <fieldset class="register">
            <asp:HiddenField ID="Identity_num" Value="" runat="server" />
            <asp:HiddenField ID="userkind" Value="" runat="server" />
            <asp:HiddenField ID="fullname" Value="" runat="server" />
            <asp:HiddenField ID="userid" Value="" runat="server" />
            <legend>Check user data</legend>
            <p>
                <asp:Label ID="Label1" Font-Size="16pt" runat="server">User kind :</asp:Label>
                <asp:DropDownList ID="DropDownList1" Width="100px" Font-Size="14pt" runat="server">
   <asp:ListItem>Student</asp:ListItem>
                   
                    <asp:ListItem>employee</asp:ListItem>
                </asp:DropDownList>
                <asp:Label ID="Label2" Font-Size="16pt" runat="server">Nationl ID :</asp:Label>
                <asp:TextBox ID="TextBox1" Width="150px" Font-Size="14pt" runat="server"></asp:TextBox>
                <asp:Button ID="Button1" runat="server" Text="Check user" Width="150px" OnClick="Button1_Click"
                    Font-Bold="True" Font-Size="14pt" />
                &nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label3" runat="server" Font-Size="14pt" Text="Label"></asp:Label>
            </p>
        </fieldset>
        <asp:CreateUserWizard ID="RegisterUser" runat="server" EnableViewState="false" 
            OnCreatedUser="CreateUserWizard1_CreatedUser" 
            OnFinishButtonClick="RegisterUser_FinishButtonClick" Enabled="False">
            <LayoutTemplate>
                <asp:PlaceHolder ID="wizardStepPlaceholder" runat="server"></asp:PlaceHolder>
                <asp:PlaceHolder ID="navigationPlaceholder" runat="server"></asp:PlaceHolder>
            </LayoutTemplate>
            <WizardSteps>
                <asp:CreateUserWizardStep ID="RegisterUserWizardStep" runat="server">
                    <ContentTemplate>
                        <div style="padding-right: 25px">
                            <h3>
                               Create new account
                            </h3>
                            <p style="font-family: Times New Roman; font-size: 14px;">
                                * you can not create new account befor check user data.
                                <br />
                                * enter your data to create new account.
                                <br />
                                * minmim passward letters is 
                                <%= Membership.MinRequiredPasswordLength %>
                              
                            </p>
                            <span class="failureNotification">
                                <asp:Literal ID="ErrorMessage" runat="server"></asp:Literal>
                            </span>
                            <asp:ValidationSummary ID="RegisterUserValidationSummary" runat="server" CssClass="failureNotification"
                                ValidationGroup="RegisterUserValidationGroup" />
                        </div>
                        <div class="accountInfo">
                            <fieldset class="register">
                                <legend>new account data</legend>
                                <p>
                                    <asp:Label ID="UserNameLabel" runat="server" AssociatedControlID="UserName">Username :</asp:Label>
                                    <asp:TextBox ID="UserName" runat="server" CssClass="txtstyle"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="UserNameRequired" runat="server" ControlToValidate="UserName"
                                        CssClass="failureNotification" ErrorMessage="user name is require." ToolTip="user name is require."
                                        ValidationGroup="RegisterUserValidationGroup">*</asp:RequiredFieldValidator>
                                </p>
                                <p>
                                    <asp:Label ID="EmailLabel" runat="server" AssociatedControlID="Email">Mail :</asp:Label>
                                    <asp:TextBox ID="Email" runat="server" CssClass="txtstyle"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="EmailRequired" runat="server" ControlToValidate="Email"
                                        CssClass="failureNotification" ErrorMessage="Mail is require." ToolTip="Mail is require."
                                        ValidationGroup="RegisterUserValidationGroup">*</asp:RequiredFieldValidator>
                                </p>
                                <p>
                                    <asp:Label ID="PasswordLabel" runat="server" AssociatedControlID="Password">Passward :</asp:Label>
                                    <asp:TextBox ID="Password" runat="server" CssClass="txtstyle" TextMode="Password"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="PasswordRequired" runat="server" ControlToValidate="Password"
                                        CssClass="failureNotification" ErrorMessage="Passward is require." ToolTip="Passward is require."
                                        ValidationGroup="RegisterUserValidationGroup">*</asp:RequiredFieldValidator>
                                </p>
                                <p>
                                    <asp:Label ID="ConfirmPasswordLabel" runat="server" AssociatedControlID="ConfirmPassword">Confirm passward :</asp:Label>
                                    <asp:TextBox ID="ConfirmPassword" runat="server" CssClass="txtstyle" TextMode="Password"></asp:TextBox>
                                    <asp:RequiredFieldValidator ControlToValidate="ConfirmPassword" CssClass="failureNotification"
                                        Display="Dynamic" ErrorMessage="Confirm passward is require." ID="ConfirmPasswordRequired"
                                        runat="server" ToolTip="Confirm Password is required." ValidationGroup="RegisterUserValidationGroup">*</asp:RequiredFieldValidator>
                                    <asp:CompareValidator ID="PasswordCompare" runat="server" ControlToCompare="Password"
                                        ControlToValidate="ConfirmPassword" CssClass="failureNotification" Display="Dynamic"
                                        ErrorMessage="your passward not compatibel with username." ValidationGroup="RegisterUserValidationGroup">*</asp:CompareValidator>
                                </p>
                            </fieldset>
                            <p class="submitButton">
                                <asp:Button ID="CreateUserButton" runat="server" CommandName="MoveNext" Font-Bold="true"
                                    Height="30px" Width="150px" Text="Create new account" ValidationGroup="RegisterUserValidationGroup" />
                            </p>
                        </div>
                    </ContentTemplate>
                    <CustomNavigationTemplate>
                    </CustomNavigationTemplate>
                </asp:CreateUserWizardStep>
            </WizardSteps>
        </asp:CreateUserWizard>
    </div>
    <br />
</asp:Content>
