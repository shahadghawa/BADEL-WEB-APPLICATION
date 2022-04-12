using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;

/// <summary>
/// Summary description for userinformationBl
/// </summary>
public class userinformationBl
{
	public userinformationBl()
	{
		//
		// TODO: Add constructor logic here
		//
	}
    private int _ID;
    public int ID
    {
        get
        {
            return _ID;
        }
        set
        {
            _ID = value;
        }
    }



    private string _fullname;
    public string  fullname
    {
        get
        {
            return _fullname;
        }
        set
        {
            _fullname = value;
        }
    }



 

    private string _phone;
    public string phone
    {
        get
        {
            return _phone;
        }
        set
        {
            _phone = value;
        }
    }



    private string _mobile1;
    public string mobile1
    {
        get
        {
            return _mobile1;
        }
        set
        {
            _mobile1 = value;
        }
    }


    private string _mobile2;
    public string mobile2
    {
        get
        {
            return _mobile2;
        }
        set
        {
            _mobile2 = value;
        }
    }



    private string _fax;
    public string fax
    {
        get
        {
            return _fax;
        }
        set
        {
            _fax = value;
        }
    }

    

    private string _user_email;
    public string user_email
    {
        get
        {
            return _user_email;
        }
        set
        {
            _user_email = value;
        }
    }




    private string _address;
    public string address
    {
        get
        {
            return _address;
        }
        set
        {
            _address = value;
        }
    }


    private int _universityDEP_id;
    public int universityDEP_id
    {
        get
        {
            return _universityDEP_id;
        }
        set
        {
            _universityDEP_id = value;
        }
    }

    private int _job_id;
    public int job_id
    {
        get
        {
            return _job_id;
        }
        set
        {
            _job_id = value;
        }
    }




    private string _Socialstatus;
    public string Socialstatus
    {
        get
        {
            return _Socialstatus;
        }
        set
        {
            _Socialstatus = value;
        }
    }



    private string _age;
    public string age
    {
        get
        {
            return _age;
        }
        set
        {
            _age = value;
        }
    }



    private string _anotherinfo;
    public string anotherinfo
    {
        get
        {
            return _anotherinfo;
        }
        set
        {
            _anotherinfo = value;
        }
    }


    private string _userkind;
    public string userkind
    {
        get
        {
            return _userkind;
        }
        set
        {
            _userkind = value;
        }
    }





    private string _personalimagepath;
    public string personalimagepath
    {
        get
        {
            return _personalimagepath;
        }
        set
        {
            _personalimagepath = value;
        }
    }




    private string _Theuser_name;
    public string Theuser_name
    {
        get
        {
            return _Theuser_name;
        }
        set
        {
            _Theuser_name = value;
        }
    }

    private string _Identity_num;
    public string Identity_num
    {
        get
        {
            return _Identity_num;
        }
        set
        {
            _Identity_num = value;
        }
    }


  
    private DataTable _userCollection;
    public DataTable userCollection
    {
        get
        {
            return _userCollection;
        }
        set
        {
            _userCollection = value;
        }
    }


    userinformationDAL USERDAL = new userinformationDAL();

    public void getuserdi()
    {
        this.userCollection = USERDAL.getuserdi(this);
    }


    public void adduseinfo()
    {
        USERDAL.adduseinfo(this);
    }


    public void SEArch_student(string str)
    {
        this.userCollection = USERDAL.SEArch_student(str);
    }

    public void getuserinfobyid()
    {
        this.userCollection = USERDAL.getuserinfo(this);
    }


  
}