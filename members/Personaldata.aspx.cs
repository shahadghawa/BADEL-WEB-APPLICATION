using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class members_Personaldata : System.Web.UI.Page
{
    protected string UploadFolderPath = "~/Uploads/";
    string filename;
    string usname;
    DataTable thedt = new DataTable();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {

            try
            {

                DropDownList1.DataSource = DBaccesscs.ExcuteStoredProcedured("select * from dbo.job");
                DropDownList1.DataTextField = "job_name";
                DropDownList1.DataValueField = "jop_id";
                DropDownList1.DataBind();

                DropDownList5.DataSource = DBaccesscs.ExcuteStoredProcedured("select * from dbo.universityDepartment");
                DropDownList5.DataTextField = "debNAME";
                DropDownList5.DataValueField = "debID";
                DropDownList5.DataBind();

                try
                {
                    usname = Request.QueryString["username"].ToString().Trim();
                }
                catch
                {
                    usname = "";
                }



                if (!string.IsNullOrEmpty(usname))
                {
                    thedt = DBaccesscs.ExcuteStoredProcedured("select * from userinformation where ID = '" + Convert.ToInt32(Request.QueryString["username"].ToString().Trim()) + "'");

                    Panel1.Visible = false;
                    Panel2.Visible = false;
                }
                else
                {
                    thedt = DBaccesscs.ExcuteStoredProcedured("select * from userinformation where ID = '" + helper.getuseid() + "'");
                
                }




                personname.Text = thedt.Rows[0]["fullname"].ToString();
                phone.Text = thedt.Rows[0]["phone"].ToString();
                mob1.Text = thedt.Rows[0]["mobile1"].ToString();
                mob2.Text = thedt.Rows[0]["mobile2"].ToString();
                fax.Text = thedt.Rows[0]["fax"].ToString();
                mail.Text = thedt.Rows[0]["user_email"].ToString();
                addrex.Text = thedt.Rows[0]["address"].ToString();
                DropDownList5.SelectedValue = thedt.Rows[0]["universityDEP_id"].ToString();
                DropDownList1.SelectedValue = thedt.Rows[0]["job_id"].ToString();
                socialstate.Text = thedt.Rows[0]["Socialstatus"].ToString();
                age.Text = thedt.Rows[0]["age"].ToString();
                desc.Text = thedt.Rows[0]["anotherinfo"].ToString();

                if (string.IsNullOrEmpty(thedt.Rows[0]["personalimagepath"].ToString().Trim()))
                {
                    imgDisplay.Src = "~/" + "person.png";

                }
                else
                {
                    imgDisplay.Src = "~/" + thedt.Rows[0]["personalimagepath"].ToString();
                }

                userkind.Text = thedt.Rows[0]["userkind"].ToString();
                Theuser_name.Text = thedt.Rows[0]["Theuser_name"].ToString();
                Identity_num.Text = thedt.Rows[0]["Identity_num"].ToString();
                
            }

            catch
            {

            }
        }
    }

    protected void FileUploadComplete(object sender, AjaxControlToolkit.AsyncFileUploadEventArgs e)
    {
        filename = System.IO.Path.GetFileName(AsyncFileUpload1.FileName);
        AsyncFileUpload1.SaveAs(Server.MapPath(this.UploadFolderPath) + filename);
    }



    protected void Button1_Click1(object sender, EventArgs e)
    {
        try
        {

            string patheimage = "Uploads/" + AsyncFileUpload1.FileName.Trim();

            DBaccesscs.ExcuteStoredProcedured("UBDATE_user " + helper.getuseid() + ",'" + personname.Text.Trim() + "','" + phone.Text.Trim() + "','" + mob1.Text.Trim() + "','" + mob2.Text.Trim() + "','" + fax.Text.Trim() + "','" + mail.Text.Trim() + "','" + addrex.Text.Trim() + "'," + helper.GET_combovalue(DropDownList5) + "," + helper.GET_combovalue(DropDownList1) + ",'" + socialstate.Text.Trim() + "','" + age.Text.Trim() + "','" + desc.Text.Trim() + "','" + patheimage + "','" + userkind.Text.Trim() + "','" + Theuser_name.Text.Trim() + "','" + Identity_num.Text.Trim() + "'");

            Label1.Text = "data updated successfully";


        }
        catch
        {

        }
    }
}