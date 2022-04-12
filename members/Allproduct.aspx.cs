using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class members_Allproduct : System.Web.UI.Page
{

    datafunction obj = new datafunction();
    int thecategoryid=0;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            DataTable table = new DataTable();
            table = DBaccesscs.ExcuteStoredProcedured("select * from dbo.category");
            DataRow row;
            row = table.NewRow();
            row["category_name"] = "view all products";
            row["category_id"] = "0";
            table.Rows.InsertAt(row, 0);


            DropDownList1.DataSource = table;
            DropDownList1.DataTextField = "category_name";
            DropDownList1.DataValueField = "category_id";
            DropDownList1.DataBind();


            try
            {
                thecategoryid = int.Parse(Request.QueryString["category_id"]);
            }
            catch
            {
                thecategoryid = 0;
            }



            DropDownList1.SelectedValue = thecategoryid.ToString();

        }

        BindSubjectData();
    }

    private void BindSubjectData()
    {
        try
        {

            if (Convert.ToInt32(DropDownList1.SelectedValue) == 0)
            {
                SqlDataSource1.SelectCommand = "advertisecategory_all";
                ListView1.DataBind();
            }
            else
            {

                SqlDataSource1.SelectCommand = "advertisecategory_id " + helper.GET_combovalue(DropDownList1) + "";
                ListView1.DataBind();
            }
        }
        catch
        {
        }

    }


    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {
     
        SqlDataSource1.SelectCommand = "exec advertisecategory_byname '" + TextBox1.Text.Trim() + "'";
        ListView1.DataBind();

        }
        catch
        {
        }
    }
}