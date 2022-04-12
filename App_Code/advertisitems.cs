using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;

/// <summary>
/// Summary description for advertisitems
/// </summary>
public class advertisitems
{
	public advertisitems()
	{
		//
		// TODO: Add constructor logic here
		//
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
    private int _category_id;
    public int category_id
    {
        get
        {
            return _category_id;
        }
        set
        {
            _category_id = value;
        }
    }


    private string _product_name;
    public string product_name
    {
        get
        {
            return _product_name;
        }
        set
        {
            _product_name = value;
        }
    }



    private string _theaim;
    public string theaim
    {
        get
        {
            return _theaim;
        }
        set
        {
            _theaim = value;
        }
    }




    private string _condition;
    public string condition
    {
        get
        {
            return _condition;
        }
        set
        {
            _condition = value;
        }
    }









 



    private string _product_descripation;
    public string product_descripation
    {
        get
        {
            return _product_descripation;
        }
        set
        {
            _product_descripation = value;
        }
    }





    private string _productimage;
    public string productimage
    {
        get
        {
            return _productimage;
        }
        set
        {
            _productimage = value;
        }
    }
    private int _user_id;
    public int user_id
    {
        get
        {
            return _user_id;
        }
        set
        {
            _user_id = value;
        }
    }
    private DateTime _Startdate;
    public DateTime Startdate
    {
        get
        {
            return _Startdate;
        }
        set
        {
            _Startdate = value;
        }
    }

 


    private string _thesataofauction;
    public string thesataofauction
    {
        get
        {
            return _thesataofauction;
        }
        set
        {
            _thesataofauction = value;
        }
    }


    private string _aimicon;
    public string aimicon
    {
        get
        {
            return _aimicon;
        }
        set
        {
            _aimicon = value;
        }
    }

    private DataTable _productcollection;
    public DataTable productcollection
    {
        get
        {
            return _productcollection;
        }
        set
        {
            _productcollection = value;
        }
    }


    advertisitemsDAL productaucDAL = new advertisitemsDAL();

    public void ADDproductAddadvertise()
    {
        this.productcollection = productaucDAL.ADDproductAddadvertise(this);
    }

 
}