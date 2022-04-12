using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;

public partial class Admin_ADDNEWEMPLOYEEANDSTUDENT : System.Web.UI.Page
{
    string conn = ConfigurationManager.ConnectionStrings["Auctionconnection"].ConnectionString;
    datafunction obj = new datafunction();
    protected void Page_Load(object sender, EventArgs e)
    {
        lblMsg.Text = "";
        if (!IsPostBack)
        {
            BindSubjectData();

            DropDownList4.DataSource = DBaccesscs.ExcuteStoredProcedured("select * from dbo.universityDepartment");
            DropDownList4.DataTextField = "debNAME";
            DropDownList4.DataValueField = "debID";
            DropDownList4.DataBind();

        }
    }

    private void BindSubjectData()
    {
   
                gvSubDetails.DataSource = DBaccesscs.ExcuteStoredProcedured("exec getallempandstudent");  
                gvSubDetails.DataBind();
   
    }

    protected void btnInsert_Click(object sender, EventArgs e)
    {
        try
        {


            bool IsAdded = false;
            string empname = emptName.Text.Trim();
            int universityID = helper.GET_combovalue(DropDownList4);
            string Identity_number = Identity_numbertex.Text;
            string userkind = helper.GET_comboTEXT(DropDownList1);


            using (SqlConnection sqlCon = new SqlConnection(conn))
            {
                using (SqlCommand cmd = new SqlCommand())
                {
                    cmd.CommandText = "INSERT INTO user_personalinfo(Identity_num,userkind,username,universityID,isactive,theregisteruser)VALUES(@Identity_num,@userkind,@username,@universityID,'false','')";
                    cmd.Parameters.AddWithValue("@Identity_num", Identity_number);
                    cmd.Parameters.AddWithValue("@userkind", userkind);
                    cmd.Parameters.AddWithValue("@username", empname);
                    cmd.Parameters.AddWithValue("@universityID", universityID);


                    cmd.Connection = sqlCon;
                    sqlCon.Open();

                    IsAdded = cmd.ExecuteNonQuery() > 0;
                    sqlCon.Close();
                }
            }
            if (IsAdded)
            {
                lblMsg.Text = " Added  '" + empname + "' Successfully!";
                lblMsg.ForeColor = System.Drawing.Color.Green;
                BindSubjectData();
            }
            else
            {
                lblMsg.Text = "error hapend befor adding  '" + empname + "'  ";
                lblMsg.ForeColor = System.Drawing.Color.Red;
            }
            ResetAll();//to reset all form controls


        }
        catch
        {
            lblMsg.Text = "error ---- may be national id is found ";
            lblMsg.ForeColor = System.Drawing.Color.Red;
        }
    }



    //Update click event to update existing record from the gridview
    protected void btnUpdate_Click(object sender, EventArgs e)
    {
        try
        {


            if (string.IsNullOrEmpty(txtmemberId.Text))
            {
                lblMsg.Text = "select record to update";
                lblMsg.ForeColor = System.Drawing.Color.Red;
                return;
            }

            bool IsUpdated = false;

            int txtmemberIdvarabel = Convert.ToInt32(txtmemberId.Text);
            string empname = emptName.Text.Trim();
            int universityID = helper.GET_combovalue(DropDownList4);
            string Identity_number = Identity_numbertex.Text;
            string userkind = helper.GET_comboTEXT(DropDownList1);



            using (SqlConnection sqlCon = new SqlConnection(conn))
            {
                using (SqlCommand cmd = new SqlCommand())
                {


                    cmd.CommandText = "UPDATE user_personalinfo SET  Identity_num=@Identity_num,userkind=@userkind,username=@username,universityID=@universityID WHERE userid=@userid";
                    cmd.Parameters.AddWithValue("@userid", txtmemberIdvarabel);
                    cmd.Parameters.AddWithValue("@Identity_num", Identity_number);
                    cmd.Parameters.AddWithValue("@userkind", userkind);
                    cmd.Parameters.AddWithValue("@username", empname);
                    cmd.Parameters.AddWithValue("@universityID", universityID);

                    cmd.Connection = sqlCon;
                    sqlCon.Open();
                    IsUpdated = cmd.ExecuteNonQuery() > 0;
                    sqlCon.Close();
                }
            }
            if (IsUpdated)
            {
                lblMsg.Text = " data updated !  '" + empname + "'";
                lblMsg.ForeColor = System.Drawing.Color.Green;
            }
            else
            {
                lblMsg.Text = "error - befor data updated  '" + empname + "' ";
                lblMsg.ForeColor = System.Drawing.Color.Red;
            }
            gvSubDetails.EditIndex = -1;
            BindSubjectData();
            ResetAll();//to reset all form controls

        }
        catch
        {
            lblMsg.Text = "error ---- maybe national id is find ";
            lblMsg.ForeColor = System.Drawing.Color.Red;
        }
    }


    //Delete click event to delete selected record from the database
    protected void btnDelete_Click(object sender, EventArgs e)
    {

        try
        {

            if (string.IsNullOrEmpty(txtmemberId.Text))
            {
                lblMsg.Text = "select record to update";
                lblMsg.ForeColor = System.Drawing.Color.Red;
                return;
            }
            bool IsDeleted = false;
            int userid = Convert.ToInt32(txtmemberId.Text);
            string empname = emptName.Text.Trim();
            using (SqlConnection sqlCon = new SqlConnection(conn))
            {
                using (SqlCommand cmd = new SqlCommand())
                {
                    cmd.CommandText = "DELETE FROM user_personalinfo WHERE userid=@userid";
                    cmd.Parameters.AddWithValue("@userid", userid);
                    cmd.Connection = sqlCon;
                    sqlCon.Open();
                    IsDeleted = cmd.ExecuteNonQuery() > 0;
                    sqlCon.Close();
                }
            }
            if (IsDeleted)
            {
                lblMsg.Text = "'" + empname + "' Data deleted!";
                lblMsg.ForeColor = System.Drawing.Color.Green;
                BindSubjectData();
            }
            else
            {
                lblMsg.Text = "'" + empname + "' error before delete";
                lblMsg.ForeColor = System.Drawing.Color.Red;
            }
            ResetAll();//to reset all form controls
        }

        catch
        {

            lblMsg.Text = "Can not delete data ";
            lblMsg.ForeColor = System.Drawing.Color.Red;
        }
    }
    //Cancel click event to clear and reset all the textboxes

    protected void btnCancel_Click(object sender, EventArgs e)
    {
        ResetAll();//to reset all form controls
    }

    protected void gvSubDetails_SelectedIndexChanged(object sender, EventArgs e)
    {
        txtmemberId.Text = gvSubDetails.DataKeys[gvSubDetails.SelectedRow.RowIndex].Value.ToString();
        emptName.Text = (gvSubDetails.SelectedRow.FindControl("lbname") as Label).Text;
        DropDownList4.SelectedItem.Text = (gvSubDetails.SelectedRow.FindControl("lbldepartment") as Label).Text;
        DropDownList1.SelectedValue = (gvSubDetails.SelectedRow.FindControl("lbuserkind") as Label).Text;
        Identity_numbertex.Text = (gvSubDetails.SelectedRow.FindControl("lblIdentity") as Label).Text;
        //make invisible Insert button during update/delete
        btnInsert.Visible = false;
    }

    //call to reset all form controls
    private void ResetAll()
    {
        btnInsert.Visible = true;
        txtmemberId.Text = "";
        emptName.Text = "";

        Identity_numbertex.Text = "";
    }


}