using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;
using System.Net;
using System.IO;

public partial class mebers_Addadvertise : System.Web.UI.Page
{
    protected string UploadFolderPath = "~/Uploads/";
    string filename;

    datafunction obj = new datafunction();
    advertisitems itemsobj = new advertisitems();
    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
            if (!IsPostBack)
            {

                ddcategory.DataSource = DBaccesscs.ExcuteStoredProcedured("select * from dbo.category");
                ddcategory.DataTextField = "category_name";
                ddcategory.DataValueField = "category_id";
                ddcategory.DataBind();

                gvSubDetails.DataSource = DBaccesscs.ExcuteStoredProcedured("exec getuseradeverity " + helper.getuseid() + ""); 
                gvSubDetails.DataBind();

            }

        }
        catch
        {

        }



    }

    protected void FileUploadComplete(object sender, AjaxControlToolkit.AsyncFileUploadEventArgs e)
    {
        filename = System.IO.Path.GetFileName(AsyncFileUpload1.FileName);
        AsyncFileUpload1.SaveAs(Server.MapPath(this.UploadFolderPath) + filename);
    }

    protected void Button1_Click(object sender, EventArgs e)
    {

        try
        {

 

            string picturepath= "Uploads/" + AsyncFileUpload1.FileName.Trim();

            gvSubDetails.DataSource = DBaccesscs.ExcuteStoredProcedured("ADDproductAddadvertise '" + itemname.Text.Trim() + "'," + helper.GET_combovalue(ddcategory) + ",'" + helper.GET_comboTEXT(DropDownList2) + "','" + condition.Text.Trim() + "','" + DateTime.Now.ToShortDateString() + "','" + helper.Encode(desc.Text) + "','" + picturepath + "'," + helper.getuseid() + ",'true','" + geticon(DropDownList2) + "'");
            gvSubDetails.DataBind();

            Page.ClientScript.RegisterStartupScript(this.GetType(), "ShowStatus", "javascript:alert('تم حفظ الاعلان بنجاح');", true);

        }

        catch
        {

        }
    }
    //encode
 

   public  string geticon(DropDownList combo)
    {

        if (helper.GET_comboTEXT(combo) == "Exchange")
        {
            return "fa fa-exchange";

        }
        if (helper.GET_comboTEXT(combo) == "Borrow")
        {
            return "fa fa-calendar";

        }


        if (helper.GET_comboTEXT(combo) == "Donate")
        {
            return "fa fa-gift";

        }

        else
        {
            return "";
        }


    }
    protected void Button2_Click(object sender, EventArgs e)
    {

        erasdata();
    }

    public void erasdata()
    {

        itemname.Text = "";
        desc.Text = "";
    }

   
}