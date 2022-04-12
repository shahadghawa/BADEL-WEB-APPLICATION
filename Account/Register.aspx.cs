using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;
using System.Data;

public partial class Account_Register : System.Web.UI.Page
{
    userinformationBl obj = new userinformationBl();
    DataTable thetabel = new DataTable();
    protected void Page_Load(object sender, EventArgs e)
    {
        RegisterUser.ContinueDestinationPageUrl = Request.QueryString["ReturnUrl"];
        FormsAuthentication.SignOut();
    }
    protected void CreateUserWizard1_CreatedUser(object sender, EventArgs e)
    {
        System.Web.Security.FormsAuthentication.SetAuthCookie(RegisterUser.UserName, false /* createPersistentCookie */);
        string continueUrl = RegisterUser.ContinueDestinationPageUrl;

        if (String.IsNullOrEmpty(continueUrl))
        {
            continueUrl = "~/";
        }

        try
        {

           // Response.Write("exec insertnewuser '" + RegisterUser.UserName.Trim() + "', '" + Identity_num.Value + "','" + userkind.Value + "','" + Label3.Text.Trim() + "','" + userid.Value + "'");

            if (!string.IsNullOrEmpty(Identity_num.Value.Trim()))
            {

                DBaccesscs.ExcuteStoredProcedured("exec insertnewuser '" + RegisterUser.UserName.Trim() + "', '" + Identity_num.Value + "','" + userkind.Value + "','" + Label3.Text.Trim() + "'");
            }

        }

        catch
        {
            Label3.Text = "Error";
        }

            Response.Redirect("~/members/Personaldata.aspx");
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Identity_num.Value = string.Empty;
        userkind.Value = string.Empty;
        fullname.Value = string.Empty;
        userid.Value = string.Empty;


        try
        {


            if (!string.IsNullOrEmpty(TextBox1.Text.Trim()))
            {

                thetabel = DBaccesscs.ExcuteStoredProcedured("exec getmemberbyIdentity_num  '" + TextBox1.Text.Trim() + "',  '" + helper.GET_comboTEXT(DropDownList1) + "' ");

                Identity_num.Value = thetabel.Rows[0]["Identity_num"].ToString();
                userkind.Value = thetabel.Rows[0]["userkind"].ToString();
                fullname.Value = thetabel.Rows[0]["username"].ToString();
                userid.Value = thetabel.Rows[0]["userid"].ToString();
                Label3.Text = thetabel.Rows[0]["username"].ToString();


                if (thetabel.Rows[0]["isactive"].ToString().Trim() == "True")
                {
                    RegisterUser.Enabled = false;
                    Label3.Text = "you can not create new user you are alrady register";
                }
                else
                {
                    RegisterUser.Enabled = true;

                }
            }
        }
        catch
        {

            RegisterUser.Enabled = false;
            Label3.Text = "your data is not found ";
        }

    }
    protected void RegisterUser_FinishButtonClick(object sender, WizardNavigationEventArgs e)
    {

    }
}