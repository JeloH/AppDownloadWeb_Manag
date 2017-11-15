using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_NazarSanji_Create : System.Web.UI.Page
{
    Class1 c1 = new Class1();

    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button2_Click(object sender, EventArgs e)
    {

        string Enable_Status = "0";
        string question_abcd = "";

        if (CheckBox1.Checked==true)
        {
            Enable_Status = "True";
        }
        else
        {
            Enable_Status = "false";
        }

        question_abcd = TextBox1.Text + " || " + "a)" + TextBox2.Text + "b)" + TextBox3.Text + "c)" + TextBox4.Text + "d)" + TextBox5.Text ;

        c1.CmdSqlDataBaesAccess("insert into nazarsanji(question,a_text,b_text,c_text,d_text,date_create,Enable,question_abcd)values('" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "','" + TextBox4.Text + "','" + TextBox5.Text + "','" + TextBox6.Text + "','" + CheckBox1.Checked + "','" + question_abcd + "')");


        if (Class1.statue_insert_Data_DB == "insert_succes")
        {
            Response.Write("<script> alert('عملیات ثبت با موفقیت انجام شد'); window.location = location.href;</script>");

        }

        else if (Class1.statue_insert_Data_DB == "insert_error")
        {

            Response.Write("<script> alert(' error send '); window.location = location.href;</script>");


        }



    }
}