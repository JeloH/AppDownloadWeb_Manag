﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class MasterPageEduc_mehman : System.Web.UI.MasterPage
{
    Class1 c1 = new Class1();

    protected void Page_Load(object sender, EventArgs e)
    {
        //تعداد بازدید ها
          //Label1.Text = Application["c"].ToString();

        //تعداد افراد آنلااین
        //Label2.Text = Application["OnlineUsers"].ToString();


        //Label3.Text = Class1.GetClockShamsi();

       // Label4.Text = DateTime.Now.ToLongTimeString();


        if (int.Parse(Class1.Count_login_rpt()) >= 50)
        {

            c1.CmdSqlDataBaesAccess("Delete From rpt_log");
        }
        else
        {
            c1.CmdSqlDataBaesAccess("insert into rpt_log(us,date_login,ip_login,contry,city)values('مهمان','" + Class1.date_login_logout + "','" + Class1.GetUsersIP() + "','','')");
        }


    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        string lbl_6 = "";

        int r_b1 = 0, r_b2 = 0, r_b3 = 0, r_b4 = 0;

        Button btn = sender as Button;
        GridViewRow row = btn.NamingContainer as GridViewRow;
        RadioButton rb1 = row.FindControl("RadioButton1") as RadioButton;
        RadioButton rb2 = row.FindControl("RadioButton2") as RadioButton;
        RadioButton rb3 = row.FindControl("RadioButton3") as RadioButton;
        RadioButton rb4 = row.FindControl("RadioButton4") as RadioButton;

        Label lbl6 = row.FindControl("Label6") as Label;




        lbl_6 = lbl6.Text;

        if (rb1.Checked == true) r_b1 = 1;
        if (rb2.Checked == true) r_b2 = 1;
        if (rb3.Checked == true) r_b3 = 1;
        if (rb4.Checked == true) r_b4 = 1;




        c1.CmdSqlDataBaesAccess("update nazarsanji set a=a+'" + r_b1 + "',b=b+'" + r_b2 + "',c=c+'" + r_b3 + "',d=d+'" + r_b4 + "'  where code='" + lbl_6 + "'   ");


        if (Class1.statue_insert_Data_DB == "insert_succes")
        {
            Response.Write("<script> alert('عملیات ثبت با موفقیت انجام شد'); window.location = location.href;</script>");

        }

        else if (Class1.statue_insert_Data_DB == "insert_error")
        {

            Response.Write("<script> alert('خطا دارد: لطفا دوباره امتحان کنید'); window.location = location.href;</script>");


        }





    }



}
