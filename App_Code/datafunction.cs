using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;


/// <summary>
/// Summary description for datafunction
/// </summary>
public class datafunction
{
	public datafunction()
	{
		//
		// TODO: Add constructor logic here
		//
	}
    private int _theid;
    private string _thename;
    private string _secondparametar;
    public int theid
    {
        get
        {
            return _theid;
        }
        set
        {
            _theid = value;
        }
    }
    public string thename
    {
        get
        {
            return _thename;
        }
        set
        {
            _thename = value;
        }
    }

    public string secondparametar
    {
        get
        {
            return _secondparametar;
        }
        set
        {
            _secondparametar = value;
        }
    }

    datafunctionDAL obj = new datafunctionDAL();

  
    public void adduniversity()
    {
        obj.adduniversity(this);
    }
 
 

    public DataTable executesotredprocedure(string x)
    {
        return DBaccesscs.ExcuteStoredProcedured(x);
    }
     


  


 
  

   


}