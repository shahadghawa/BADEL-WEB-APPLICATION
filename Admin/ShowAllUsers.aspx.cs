using System;
using System.Data;
using System.Configuration;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
public partial class Admin_ShowAllUsers : System.Web.UI.Page
{
    private const int USERNAME_COL = 7;
    datafunction obj = new datafunction();
    protected void Page_Load(object sender, System.EventArgs e)
    {
        DisplayUsers();
        lblStatus.Text = string.Empty;
    }

  

    private void DisplayUsers()
    {
        grdUsers.Caption = "All Users";
        grdUsers.DataSource = Membership.GetAllUsers();
        grdUsers.DataBind();

    }

    protected void grdUsers_RowDeleting(object sender, System.Web.UI.WebControls.GridViewDeleteEventArgs e)
    {
        string strUser = grdUsers.Rows[e.RowIndex].Cells[2].Text;

        try
        {
            Membership.DeleteUser(strUser);
            obj.executesotredprocedure("exec deleteuserwithalladvertis '" + strUser + "'");
            DisplayUsers();
        }
        catch (Exception ex)
        {
            lblStatus.Text = ex.Message;
        }

    }

    protected void grdUsers_SelectedIndexChanging(object sender, System.Web.UI.WebControls.GridViewSelectEventArgs e)
    {
        string strUser = grdUsers.Rows[e.NewSelectedIndex].Cells[USERNAME_COL].Text;
        Panel1.Visible = true;
       // txtSelectedUserName.Text = strUser;
    }



    protected void btnFindUsersByEmail_Click(object sender, System.EventArgs e)
    {
        grdUsers.Caption = "Find Users by Email (" + txtFindByEmail.Text + ")";
        grdUsers.DataSource = Membership.FindUsersByEmail(txtFindByEmail.Text);
        grdUsers.DataBind();
    }

    protected void btnFindUsersByName_Click(object sender, System.EventArgs e)
    {
        grdUsers.Caption = "Find Users by Name (" + txtFindByName.Text + ")";
        grdUsers.DataSource = Membership.FindUsersByName(txtFindByName.Text);
        grdUsers.DataBind();
    }

    protected void btnShowAll_Click(object sender, System.EventArgs e)
    {
        DisplayUsers();
    }

 
}
