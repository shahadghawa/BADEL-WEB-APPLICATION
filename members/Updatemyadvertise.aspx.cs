using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class members_Updatemyadvertise : System.Web.UI.Page
{
    int currentuserid;
    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {

            currentuserid = helper.getuseid();
            Label1.Text = currentuserid.ToString();
        }
        catch
        {
        }
    }
}