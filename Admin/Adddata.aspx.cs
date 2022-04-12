using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_Adddata : System.Web.UI.Page
{
  
    protected void Page_Load(object sender, EventArgs e)
    {

        if (!IsPostBack)
        {

            try
            {


            ListBox3.DataSource = DBaccesscs.ExcuteStoredProcedured("select * from dbo.job");
            ListBox3.DataTextField = "job_name";
            ListBox3.DataValueField = "jop_id";
            ListBox3.DataBind();


            ListBox1.DataSource = DBaccesscs.ExcuteStoredProcedured("select * from dbo.category");
            ListBox1.DataTextField = "category_name";
            ListBox1.DataValueField = "category_id";
            ListBox1.DataBind();

            ListBox2.DataSource = DBaccesscs.ExcuteStoredProcedured("select * from dbo.universityDepartment");
            ListBox2.DataTextField = "debNAME";
            ListBox2.DataValueField = "debID";
            ListBox2.DataBind();


            }

            catch
            {

            }

           

        }

    }
    
    protected void Button3_Click(object sender, EventArgs e)
    {
        try
        {
            if (!string.IsNullOrEmpty(TextBox2.Text.Trim()))
            {

                DBaccesscs.ExcuteStoredProcedured("addjob '" + TextBox2.Text.Trim() + "'");
                Label3.Text = "data Saved";
                TextBox2.Text = "";
                ListBox3.DataSource = DBaccesscs.ExcuteStoredProcedured("select * from dbo.job");
                ListBox3.DataTextField = "job_name";
                ListBox3.DataValueField = "jop_id";
                ListBox3.DataBind();

            }

        }
        catch
        {
            Label3.Text = "error - it is already found";
        }
    }
    protected void Button4_Click(object sender, EventArgs e)
    {
        

        //try
        //{

            //if (ListBox3.SelectedIndex != -1)
            //{

                Response.Write("delete from dbo.job where jop_id = " + Convert.ToInt16(ListBox3.SelectedItem.Value) + "");
                DBaccesscs.ExcuteStoredProcedured("delete from dbo.job where jop_id = " + Convert.ToInt16(ListBox3.SelectedItem.Value) + "");
                ListBox3.DataSource = DBaccesscs.ExcuteStoredProcedured("select * from dbo.job");
                ListBox3.DataTextField = "job_name";
                ListBox3.DataValueField = "jop_id";
                ListBox3.DataBind();
                Label3.Text = "Data Deleted ";

            //}

        //}
        //catch
        //{
        //    Label3.Text = " you can not delete data because it is used";
        //}
        
    }
    protected void Button10_Click(object sender, EventArgs e)
    {
        try
        {
            if (ListBox1.SelectedIndex != -1)
            {
           
                DBaccesscs.ExcuteStoredProcedured("delete from category  where category_id = " + Convert.ToInt16(ListBox1.SelectedItem.Value) + "");
              
                
                
                ListBox1.DataSource = DBaccesscs.ExcuteStoredProcedured("select * from dbo.category");
                ListBox1.DataTextField = "category_name";
                ListBox1.DataValueField = "category_id";
                ListBox1.DataBind();
                Label2.Text = "Data deleted ";

            }
        }
        catch
        {
            Label2.Text = " you can not delete data because it is used";
        }
    }
    protected void Button9_Click(object sender, EventArgs e)
    {
        try
        {

            if (!string.IsNullOrEmpty(TextBox5.Text.Trim()))
            {

        
                DBaccesscs.ExcuteStoredProcedured("addcategory  '" + TextBox5.Text.Trim() + "','" +TextBox7.Text.Trim() +"'");
                
                Label2.Text = "data Saved";

                TextBox5.Text = "";
                TextBox7.Text = "";

                ListBox1.DataSource = DBaccesscs.ExcuteStoredProcedured("select * from dbo.category");
                ListBox1.DataTextField = "category_name";
                ListBox1.DataValueField = "category_id";
                ListBox1.DataBind();

            }
        }
        catch
        {
            Label2.Text = "error - it is already found";
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {

            if (!string.IsNullOrEmpty(TextBox1.Text.Trim()))
            {
              
                DBaccesscs.ExcuteStoredProcedured("adduniversity '" + TextBox1.Text.Trim() + "'");
                Label1.Text = "data Saved";
                TextBox1.Text = "";
                ListBox2.DataSource = DBaccesscs.ExcuteStoredProcedured("select * from dbo.universityDepartment");
                ListBox2.DataTextField = "debNAME";
                ListBox2.DataValueField = "debID";
                ListBox2.DataBind();
            }
        }
        catch
        {
            Label1.Text = "error - it is already found";
        }
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        try
        {
            if (ListBox2.SelectedIndex != -1)
            {

           
                DBaccesscs.ExcuteStoredProcedured("delete from dbo.universityDepartment where debID = " + Convert.ToInt16(ListBox2.SelectedItem.Value) + "");
                ListBox2.DataSource = DBaccesscs.ExcuteStoredProcedured("select * from dbo.universityDepartment");
                ListBox2.DataTextField = "debNAME";
                ListBox2.DataValueField = "debID";
                 ListBox2.DataBind();
                 Label1.Text = "Data deleted ";

            }
        }
        catch
        {
            Label1.Text = " you can not delete data because it is used";
        }
    }
}