using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_send_post : System.Web.UI.Page
{
    string d2 = "";

    Class1 c1 = new Class1();

    string subject_post = "";

    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button3_Click(object sender, EventArgs e)
    {

        if (RadioButton1.Checked == true)
        {
            subject_post = DropDownList5.SelectedItem.ToString();
        }
        else if (RadioButton2.Checked == true)
        {
            subject_post = TextBox14.Text;

        }

        string seo_text = "";

        seo_text= TextBox15.Text;

       // Label1.Text = d2;
        c1.CmdSqlDataBaesAccess("insert into mataleb(title,DateSend,body,type_post,seo)values('" + TextBox2.Text + "','" + Class1.GetClockShamsi() + "','"+FCKeditor1.Value +"','" + subject_post + "' ,'"+seo_text+"')");
        

    }
    protected void Button2_Click(object sender, EventArgs e)
    {

        d2 = (FCKeditor1.Value);
       
    }
}
