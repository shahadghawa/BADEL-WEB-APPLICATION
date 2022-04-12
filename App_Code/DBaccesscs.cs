using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

/// <summary>
/// Summary description for DBaccesscs
/// </summary>
public class DBaccesscs
{

    public static string ConnectionString
    {
        get
        {
            return ConfigurationManager.ConnectionStrings["Auctionconnection"].ConnectionString;
        }
    }


    //public static DataTable ExecuteDataTable(string storedProcedureName, params SqlParameter[] arrParam)
    //{
    //    DataTable dt = new DataTable();
    //    SqlConnection con = new SqlConnection(ConnectionString);

    //    SqlCommand cmd = new SqlCommand(storedProcedureName, con);
    //    cmd.CommandType = CommandType.StoredProcedure;

    //    if (con.State == ConnectionState.Closed || con.State == ConnectionState.Broken)
    //        con.Open();

    //    try
    //    {
    //        if (arrParam != null)
    //        {
    //            foreach (SqlParameter param in arrParam)
    //                cmd.Parameters.Add(param);
    //        }
    //        SqlDataAdapter da = new SqlDataAdapter(cmd);
    //        da.Fill(dt);
    //        return dt;
    //    }
    //    catch (Exception ex)
    //    {
    //        //Utilities.LogError(ex);

    //        throw new Exception("Error: " + ex.Message);
    //    }
    //    finally
    //    {
    //        cmd.Dispose();
    //        con.Close();
    //    }
    //}

 
    public static DataTable ExecuteNonQuery(string storedProcedureName, params SqlParameter[] arrParam)
    {
        SqlConnection con = new SqlConnection(ConnectionString);
        SqlCommand cmd = new SqlCommand(storedProcedureName, con);
        cmd.CommandType = CommandType.StoredProcedure;

        if (con.State == ConnectionState.Closed || con.State == ConnectionState.Broken)
            con.Open();

        try
        {
            if (arrParam != null)
            {
                foreach (SqlParameter param in arrParam)
                    cmd.Parameters.Add(param);
            }

            DataTable objDataset = null;
            using (SqlDataAdapter objAdapter = new SqlDataAdapter(cmd))
            {
                objDataset = new DataTable();
                objAdapter.Fill(objDataset);
                cmd.Dispose();
                objAdapter.Dispose();
            }

            return objDataset;
        }

        catch (Exception ex)
        {
            //Utilities.LogError(ex);
            throw new Exception("Error: " + ex.Message);
        }

        finally
        {
            cmd.Dispose();
            con.Close();
        }
    }

 
    public static void ExcuteStoredProcedureNoneQuary(string storedProcedureName,
            params SqlParameter[] arrParam)
    {
        SqlConnection con = new SqlConnection(ConnectionString);
        SqlCommand cmd = new SqlCommand(storedProcedureName, con);
        cmd.CommandType = CommandType.StoredProcedure;

        if (con.State == ConnectionState.Closed || con.State == ConnectionState.Broken)
            con.Open();

        try
        {
            if (arrParam != null)
            {
                foreach (SqlParameter param in arrParam)
                    cmd.Parameters.Add(param);
            }

            cmd.ExecuteNonQuery();
            cmd.Dispose();
            con.Close();
        }
        catch
        {
            //Utilities.LogError(ex);
            throw;
        }
    }


    public static DataTable ExcuteStoredProcedured(string StoredProcedureText)
    {
        SqlConnection con = new SqlConnection(ConnectionString);
        SqlCommand cmd = new SqlCommand(StoredProcedureText, con);
        cmd.CommandType = CommandType.Text;
        cmd.Connection = con;
        cmd.CommandText = StoredProcedureText;


        DataTable objDataset = null;

        using (SqlDataAdapter objAdapter = new SqlDataAdapter(cmd))
        {
            objAdapter.SelectCommand.CommandTimeout = 600;
            objDataset = new DataTable();

            objAdapter.Fill(objDataset);

            cmd.Dispose();

            objAdapter.Dispose();

        }

        //closeConnection();

        return objDataset;
    }

    public static void ExcuteStoredProcedurednonquery(string thestatement)
    {

        SqlConnection con = new SqlConnection(ConnectionString);

        SqlCommand objCommand = new SqlCommand(thestatement, con);

        con.Open();
        objCommand.ExecuteNonQuery();
        objCommand.Dispose();
        con.Close();



    }


}



