using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_MasterPageModir : System.Web.UI.MasterPage
{

    Class1 c1 = new Class1();



    protected void Page_Load(object sender, EventArgs e)
    {
     


       if (Session["user"] == null)
          {

          Response.Redirect("~/Default.aspx");

    }
        else
     {

          Label1.Text = Session["fname"].ToString() + Session["lname"].ToString();
         Label2.Text = Session["user"].ToString();

   }

    }





    protected void Button1_Click(object sender, EventArgs e)
    {

        string Date_logout = Class1.Date() + "||" + Class1.clock();


        string dr = Class1.end_item_rpt();

        //حذف seseeon
        Session.RemoveAll();

        //حذف کوکی ها
        //Response.Cookies["user"].Expires = DateTime.Now.AddMinutes(-30);
       // Response.Cookies["password"].Expires = DateTime.Now.AddMinutes(-30);


       // commdAccess("select max(rpt) as end from Personel");

        c1.CmdSqlDataBaesAccess("update rpt_log set date_logout= '" + Date_logout + "' where rpt='" +dr + "';-- ");



        Response.Redirect("~/Default.aspx");
    }





 
}

    
    
    



