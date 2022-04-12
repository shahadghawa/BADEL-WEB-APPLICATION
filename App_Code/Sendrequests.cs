using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;

/// <summary>
/// Summary description for Sendrequests
/// </summary>
public class Sendrequests
{
	public Sendrequests()
	{
		//
		// TODO: Add constructor logic here
		//
	}
    private int _auction_id;
    public int auction_id
    {
        get
        {
            return _auction_id;
        }
        set
        {
            _auction_id = value;
        }
    }

    private int _product_id;
    public int product_id
    {
        get
        {
            return _product_id;
        }
        set
        {
            _product_id = value;
        }
    }
    private int _userid;
    public int userid
    {
        get
        {
            return _userid;
        }
        set
        {
            _userid = value;
        }
    }
 

    private DateTime _dateofauction;
    public DateTime dateofauction
    {
        get
        {
            return _dateofauction;
        }
        set
        {
            _dateofauction = value;
        }
    }


    private string _requesttype;
    public string requesttype
    {
        get
        {
            return _requesttype;
        }
        set
        {
            _requesttype = value;
        }
    }


    private string _requestdetails;
    public string requestdetails
    {
        get
        {
            return _requestdetails;
        }
        set
        {
            _requestdetails = value;
        }
    }

    private string _requestcondition;
    public string requestcondition
    {
        get
        {
            return _requestcondition;
        }
        set
        {
            _requestcondition = value;
        }
    }



    private int _exchangeproductid;
    public int exchangeproductid
    {
        get
        {
            return _exchangeproductid;
        }
        set
        {
            _exchangeproductid = value;
        }
    }


    private DataTable _addedauctioncollection;
    public DataTable addedauctioncollection
    {
        get
        {
            return _addedauctioncollection;
        }
        set
        {
            _addedauctioncollection = value;
        }
    }


    SendrequestsDAL productaucDAL = new SendrequestsDAL();

   

}