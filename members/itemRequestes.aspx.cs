using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class members_itemRequestes : System.Web.UI.Page
{
    datafunction dataobject = new datafunction();
    DataTable dt = new DataTable();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {

            DropDownList4.DataSource = DBaccesscs.ExcuteStoredProcedured("select product_id , product_name from productAddadvertise where user_id=" + helper.getuseid() + ""); 
            DropDownList4.DataTextField = "product_name";
            DropDownList4.DataValueField = "product_id";
            DropDownList4.DataBind();
            view();


        }
    }


    protected void view()
    {

        try
        {

          
            GridView1.DataSource = DBaccesscs.ExcuteStoredProcedured("exec getproductauction '" + helper.GET_combovalue(DropDownList4) + "'");
            GridView1.DataBind();


            dt = DBaccesscs.ExcuteStoredProcedured("getAddadvertisebyproid '" + helper.GET_combovalue(DropDownList4) + "'");
            theaim.Text = dt.Rows[0]["theaim"].ToString();
            condition.Text = dt.Rows[0]["condition"].ToString();
            product_descripation.Text =helper.Decodestring(dt.Rows[0]["product_descripation"].ToString());
            theimg.Src = "~/" + dt.Rows[0]["productimage"].ToString();
            lbStartdate.Text = dt.Rows[0]["Startdate"].ToString();

        }
        catch
        {

        }
    }



    protected void DropDownList4_SelectedIndexChanged(object sender, EventArgs e)
    {
        view();
    }
}