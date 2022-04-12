using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class mebers_Addauction : System.Web.UI.Page
{
    datafunction obj = new datafunction();
    DataTable dt = new DataTable();
    Sendrequests auctionobj = new Sendrequests();
    int productid;
    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {

        productid = int.Parse(Request.QueryString["productid"]);
        dt = DBaccesscs.ExcuteStoredProcedured("exec getAddadvertisebyproid '" + productid + "'"); 


        productname.Text = dt.Rows[0]["product_name"].ToString();
        categories.Text = dt.Rows[0]["category_name"].ToString();
        aim.Text = dt.Rows[0]["theaim"].ToString();
        condition.Text = dt.Rows[0]["condition"].ToString();
        lbdescripation.Text = helper.Decodestring(dt.Rows[0]["product_descripation"].ToString().ToString());
        theimg.Src = "~/" + dt.Rows[0]["productimage"].ToString();
      LinkButton1.Text = dt.Rows[0]["fullname"].ToString();
        LinkButton1.PostBackUrl = "~/members/Personaldata.aspx?" + "username=" + dt.Rows[0]["user_id"].ToString();

      


        showpanalcontent(aim.Text.Trim());



        if (!IsPostBack)
        {
        DropDownList1.DataSource = DBaccesscs.ExcuteStoredProcedured("exec getuserproduct '" + helper.getuseid() + "'"); 
        DropDownList1.DataTextField = "product_name";
        DropDownList1.DataValueField = "product_id";
        DropDownList1.DataBind();
            }
        }
        catch
        {
        }

    }





    decimal thepric;
    decimal theintroducedpric;


    public string requestdetails(string aimtxt)
    {

        if (aimtxt == "Borrow")
        { 
            return "Borrow request from :   " + fromtxt.Text.Trim() + "  To  " + totext.Text.Trim();
        }

        else if (aimtxt == "Exchange")
        {
            return "exchange request by :   " +  DropDownList1.SelectedItem.Text.Trim(); 
        }
        else if (aimtxt == "Donate")
        {
            return "Donate request :    ";
        }
        else
        {
            return "";
        }

    }

    public string requestcondition(string aimtxt)
    {
        if (aimtxt == "Borrow")
        {
            return TextBox4.Text.Trim(); 
        }

        else if (aimtxt == "Exchange")
        {
            return TextBox3.Text.Trim(); 
        }
        else if (aimtxt == "Donate")
        {
            return TextBox1.Text.Trim(); 
        }
        else
        {
            return "";
        }
    }


    public void showpanalcontent(string aimtxt)
    {

        if (aimtxt == "Borrow")
        {
            showpanal(borrowPanel1);
        }

        else if (aimtxt == "Exchange")
        {
            showpanal(exchangePanel1);
        }
        else if (aimtxt == "Donate")
        {
            showpanal(requestPanel1);
        }
       
    }



    void showpanal(Panel panlshow)
    {
       
        exchangePanel1.Visible = false;
        borrowPanel1.Visible = false;
        requestPanel1.Visible = false;
        panlshow.Visible = true;
    }

    int exchangeproductid;
   private string Decode(string encodedText)
    {
        byte[] decodedText = System.Convert.FromBase64String(encodedText);
        return System.Text.Encoding.UTF8.GetString(decodedText );
    }
    protected void buybtn_Click(object sender, EventArgs e)
    {
        try
        {

            if (exchangePanel1.Visible == true)
            {
                exchangeproductid = helper.GET_combovalue(DropDownList1);
            }
            else
            {
                exchangeproductid = productid;
            }

            DBaccesscs.ExcuteStoredProcedured("ADDauctionforproduct  " + productid + "," + helper.getuseid() + ",'" + DateTime.Now.ToShortDateString() + "','" + aim.Text.Trim() + "','" + requestdetails(aim.Text.Trim()) + "','" + requestcondition(aim.Text.Trim()) + "'," + exchangeproductid + "");
            Page.ClientScript.RegisterStartupScript(this.GetType(), "ShowStatus", "javascript:alert('تم حفظ بيانات المزايدة بنجاح');", true);

        }
        catch
        {
            Page.ClientScript.RegisterStartupScript(this.GetType(), "ShowStatus", "javascript:alert('لم يتم حفظ بيانات هذه المذايدة');", true);
        }

    }
}