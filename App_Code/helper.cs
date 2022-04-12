using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI.WebControls;

using System.Data.OleDb;
using System.Data.SqlClient;
using System.Data;

/// <summary>
/// Summary description for helper
/// </summary>
public class helper
{
	public helper()
	{
		//
		// TODO: Add constructor logic here
		//
	}
    private static DataTable _help_collection;
    private static int _userid;
    private static string _Identity_num;
    private static string _userkind;
    private static string _thename;
    private static int _department_id;

    public static int userid
    {
        get { return _userid; }
        set { _userid = value; }
    }
    public static string Identity_num
    {
        get { return _Identity_num; }
        set { _Identity_num = value; }
    }
    public static string userkind
    {
        get { return _userkind; }
        set { _userkind = value; }
    }

    public static string thename
    {
        get { return _thename; }
        set { _thename = value; }
    }
    public static int department_id
    {
        get { return _department_id; }
        set { _department_id = value; }
    }

    public static DataTable help_collection
    {
        get { return _help_collection; }
        set { _help_collection = value; }
    }
    //public static void getuseid()
    //{

    //    System.Web.HttpContext.Current.Session["userprofile"] = null;

    //    if (System.Web.HttpContext.Current.Session["userprofile"] != null)
    //    {
    //        help_collection = (DataTable)System.Web.HttpContext.Current.Session["userprofile"];
    //    }
    //    else
    //    {
    //        userinformationBl obj = new userinformationBl();
    //        obj.Theuser_name = System.Web.Security.Membership.GetUser().ToString().Trim();
    //        obj.getuserdi();
    //        System.Web.HttpContext.Current.Session["userprofile"] = obj.userCollection;
    //        help_collection = obj.userCollection;

    //    }
    //    userid = Convert.ToInt16(help_collection.Rows[0]["userid"].ToString());
    //    Identity_num = help_collection.Rows[0]["Identity_num"].ToString();
    //    userkind = help_collection.Rows[0]["userkind"].ToString();
    //    thename = help_collection.Rows[0]["username"].ToString();
    //    department_id = Convert.ToInt16(help_collection.Rows[0]["department_id"].ToString());
    //}




    public static int getuseid()
    {
        userinformationBl obj = new userinformationBl();
        obj.Theuser_name = System.Web.Security.Membership.GetUser().ToString().Trim();
        obj.getuserdi();
        return Convert.ToInt32(obj.userCollection.Rows[0][0].ToString());

    }



    public static string Decodestring(string encodedText)
    {
        byte[] decode = Convert.FromBase64String(encodedText);
        return encodedText = System.Text.Encoding.ASCII.GetString(decode);
    }


    public static string Encode(string text)
    {
        byte[] encodedText = System.Text.Encoding.UTF8.GetBytes(text);
        return System.Convert.ToBase64String(encodedText);
    }


    public static string GET_comboTEXT(DropDownList com)
    {
        string x;

        if (com.Text == "" || com.SelectedIndex == -1)
        {

            x = null;

        }
        else
        {

            x = com.Text.ToString().Trim();

        }

        return x;
    }

    public static int GET_combovalue(DropDownList com)
    {
        int x;

        if (com.SelectedIndex != -1 & Convert.ToInt16(com.SelectedValue) != 0)
        {

            x = Convert.ToInt32(com.SelectedValue);


        }

        else
        {
            x = Convert.ToInt32(null);

        }

        return x;
    }










}




