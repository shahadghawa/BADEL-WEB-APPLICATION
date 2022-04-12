using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Data;

/// <summary>
/// Summary description for advertisitemsDAL
/// </summary>
public class advertisitemsDAL
{
	public advertisitemsDAL()
	{
		//
		// TODO: Add constructor logic here
		//
	}
    public DataTable ADDproductAddadvertise(advertisitems user)
    {
        try
        {

            SqlParameter[] param = new SqlParameter[10];



            param[0] = new SqlParameter("@product_name", user.product_name);
            param[1] = new SqlParameter("@category_id", user.category_id);
            param[2] = new SqlParameter("@theaim", user.theaim);
            param[3] = new SqlParameter("@condition", user.condition);
            param[4] = new SqlParameter("@Startdate", user.Startdate);
            param[5] = new SqlParameter("@product_descripation", user.product_descripation);
            param[6] = new SqlParameter("@productimage", user.productimage);
            param[7] = new SqlParameter("@user_id", user.user_id);
            param[8] = new SqlParameter("@thesataofauction", user.thesataofauction);
            param[9] = new SqlParameter("@aimicon", user.aimicon);
            return DBaccesscs.ExecuteNonQuery("ADDproductAddadvertise", param);
        }
        catch
        {
            throw;
        }
    }





    public DataTable SEArch_productionauction(string str)
    {
        //try
        //{

        return DBaccesscs.ExcuteStoredProcedured(str);
        //}
        //catch
        //{
        //    throw;
        //}
    }



}