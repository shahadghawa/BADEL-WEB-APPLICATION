using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Data;


/// <summary>
/// Summary description for userinformationDAL
/// </summary>
public class userinformationDAL
{
	public userinformationDAL()
	{
		//
		// TODO: Add constructor logic here
		//
	}



    public void adduseinfo(userinformationBl user)
    {
        try
        {

            SqlParameter[] param = new SqlParameter[4];

            param[0] = new SqlParameter("@username", user.Theuser_name);
            param[1] = new SqlParameter("@Identity_num", user.Identity_num);
            param[2] = new SqlParameter("@userkind", user.userkind);
            param[3] = new SqlParameter("@fullname", user.fullname);

            DBaccesscs.ExcuteStoredProcedureNoneQuary("insertnewuser", param);
        }
        catch
        {
            throw;
        }
  

    }





    public DataTable getuserdi(userinformationBl user)
    {
        try
        {
            SqlParameter[] param = new SqlParameter[1];
            param[0] = new SqlParameter("@UserName", user.Theuser_name);
            return DBaccesscs.ExecuteNonQuery("getuseridbyusername", param);
        }
        catch
        {
            throw;
        }
    }





    public DataTable getuserinfo(userinformationBl user)
    {
        try
        {
            SqlParameter[] param = new SqlParameter[1];
            param[0] = new SqlParameter("@UserName", user.Theuser_name);
            return DBaccesscs.ExecuteNonQuery("getuserinfo", param);
        }
        catch
        {
            throw;
        }
    }






    public DataTable SEArch_student(string str)
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