using System;
using System.Data;
using System.Configuration;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
public partial class Admin_ShowAllRoles : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

        if (!Page.IsPostBack)
        {
            DisplayRoles();
            ddlUser.DataTextField = "Username";
            ddlUser.DataSource = Membership.GetAllUsers();

            ddlUserAdd.DataTextField = "UserName";
            ddlUserAdd.DataSource = Membership.GetAllUsers();

            ddlUserDelete.DataTextField = "UserName";
            ddlUserDelete.DataSource = Membership.GetAllUsers();

            ddlUser.DataBind();
            ddlUserAdd.DataBind();
            ddlUserDelete.DataBind();

            BindRoleLists();
        }

        lblResults.Text = string.Empty;
        lblStatus.Text = string.Empty;
        btnDeleteUserFromRole.Enabled = (ddlRoleDelete.Items.Count > 0);
    }

    private void BindRoleLists()
    {
        ddlRoleAdd.DataSource = Roles.GetAllRoles();
        ddlRole.DataSource = Roles.GetAllRoles();
        if (ddlUserDelete.SelectedItem != null)
        {
            ddlRoleDelete.DataSource = Roles.GetRolesForUser(ddlUserDelete.SelectedItem.Text);
        }
        else
        {
            ddlRoleDelete.DataSource = Roles.GetAllRoles();
        }
        ddlRoleAdd.DataBind();
        ddlRole.DataBind();
        ddlRoleDelete.DataBind();
    }

    protected void btnAdd_Click(object sender, System.EventArgs e)
    {
        try
        {
            Roles.CreateRole(txtRole.Text);
            ddlRoleAdd.DataSource = Roles.GetAllRoles();
            ddlRoleAdd.DataBind();

            ddlRole.DataSource = Roles.GetAllRoles();
            ddlRole.DataBind();

            txtRole.Text = string.Empty;
            DisplayRoles();

        }
        catch (Exception ex)
        {
            lblStatus.Text = ex.Message;
        }
    }

    private void DisplayRoles()
    {
        grdRoles.DataSource = Roles.GetAllRoles();
        grdRoles.DataBind();
    }

    protected void grdRoles_RowCreated(object sender, System.Web.UI.WebControls.GridViewRowEventArgs e)
    {
        if (e.Row.RowType == DataControlRowType.DataRow)
        {
            string strRole = Roles.GetAllRoles()[e.Row.RowIndex];
            e.Row.Cells[1].Text = strRole;
            e.Row.Cells[2].Text = string.Join(", ", Roles.GetUsersInRole(strRole));
        }
    }

    protected void grdRoles_RowDeleting(object sender, System.Web.UI.WebControls.GridViewDeleteEventArgs e)
    {
        string strRole = grdRoles.Rows[e.RowIndex].Cells[1].Text;
        try
        {
            Roles.DeleteRole(strRole, true);
            DisplayRoles();
        }
        catch (Exception ex)
        {
            lblStatus.Text = ex.Message;
        }
    }

    protected void btnCheckUserInRole_Click(object sender, System.EventArgs e)
    {
        bool blnResult = Roles.IsUserInRole(ddlUser.SelectedItem.Text, ddlRole.SelectedItem.Text);
        lblResults.Text = blnResult.ToString();
    }

    protected void btnAddUserToRole_Click(object sender, System.EventArgs e)
    {
        try
        {
            string strUser = ddlUserAdd.SelectedItem.Text;
            Roles.AddUserToRole(strUser, ddlRoleAdd.SelectedItem.Text);

            DisplayRolesForDelete(strUser);
            DisplayRoles();
        }
        catch (Exception ex)
        {
            lblStatus.Text = ex.Message;
        }
    }

    protected void DisplayRolesForDelete(string strUser)
    {
        ddlRoleDelete.DataSource = Roles.GetRolesForUser(strUser);
        ddlRoleDelete.DataBind();
        btnDeleteUserFromRole.Enabled = (ddlRoleDelete.Items.Count > 0);
    }

    protected void ddlUserDelete_SelectedIndexChanged(object sender, System.EventArgs e)
    {
        DisplayRolesForDelete(ddlUserDelete.SelectedItem.Text);
    }

    protected void btnDeleteUserFromRole_Click(object sender, System.EventArgs e)
    {
        try
        {
            string strUser = ddlUserDelete.SelectedItem.Text;
            if (ddlRoleDelete.SelectedItem != null)
            {
                Roles.RemoveUserFromRole(strUser, ddlRoleDelete.SelectedItem.Text);
                DisplayRolesForDelete(strUser);
                DisplayRoles();
            }

        }
        catch (Exception ex)
        {
            lblStatus.Text = ex.Message;
        }
    }
}

