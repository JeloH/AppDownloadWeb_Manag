using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


using System.Configuration;

using System.Data;
using System.Data.SqlClient;


public partial class Admin_LoginAdmin : System.Web.UI.Page
{

    Class1 c1 = new Class1();


    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button2_Click(object sender, EventArgs e)
    {

        string strCnx = "";
        strCnx = ConfigurationManager.ConnectionStrings["cn1"].ConnectionString;

        //string strCnx = ConfigurationSettings.AppSettings["cnxNWindGood"];





    }

}
