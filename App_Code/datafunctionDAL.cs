using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
/// <summary>
/// Summary description for datafunctionDAL
/// </summary>
public class datafunctionDAL
{
	public datafunctionDAL()
	{
		//
		// TODO: Add constructor logic here
		//
	}
 
  public void adduniversity(datafunction obj)
    {
        try
        {
            SqlParameter[] param = new SqlParameter[1];
            param[0] = new SqlParameter("@university_name", obj.thename);
            DBaccesscs.ExcuteStoredProcedureNoneQuary("adduniversity", param);
        }
        catch
        {
            throw;
        }
    }




    }
 