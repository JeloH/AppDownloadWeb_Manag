using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Configuration;

using System.Data;
using System.Data.SqlClient;


public partial class charak_charak : System.Web.UI.Page
{



    Class1 c1 = new Class1();

    string nameU = "";
    string familyU = "";


    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button2_Click(object sender, EventArgs e)
    {

        string strCnx = "";
        strCnx = ConfigurationManager.ConnectionStrings["cn1"].ConnectionString;

        //string strCnx = ConfigurationSettings.AppSettings["cnxNWindGood"];

        using (SqlConnection cnx = new SqlConnection(strCnx))
        {
            cnx.Open();

            string strQry = "SELECT Count(*) FROM modir WHERE us=@us AND pass=@pass";
            SqlCommand cmd = new SqlCommand(strQry, cnx);
            cmd.CommandType = CommandType.Text;

            SqlParameter prm = new SqlParameter("@us", SqlDbType.VarChar, 50);
            prm.Direction = ParameterDirection.Input;
            prm.Value = TextBox1.Text;
            cmd.Parameters.Add(prm);

            prm = new SqlParameter("@pass", SqlDbType.VarChar, 50);
            prm.Direction = ParameterDirection.Input;
            prm.Value = TextBox2.Text;
            cmd.Parameters.Add(prm);


            prm = new SqlParameter("@name", SqlDbType.NVarChar, 50);
            prm.Direction = ParameterDirection.ReturnValue;
            cmd.Parameters.Add(prm);
             nameU = (string)cmd.Parameters["@name"].Value;

             prm = new SqlParameter("@family", SqlDbType.NVarChar, 50);
             prm.Direction = ParameterDirection.ReturnValue;
             cmd.Parameters.Add(prm);

            familyU = (string)cmd.Parameters["@family"].Value;





            int intRecs = (int)cmd.ExecuteScalar();
            if (intRecs > 0)
            {
                //	FormsAuthentication.RedirectFromLoginPage(txtUser.Text, false);


                Session.Add("user", TextBox1.Text);
                Session.Add("fname", "i");
                Session.Add("lname", "r");


                Session.Timeout = 25;

                Response.Redirect("~/Admin/PanelAdmin.aspx");

                //             Response.Redirect("http://www.irvb.ir/Admin/PanelAdmin.aspx");

            }
            else
            {
                Response.Write("Login attempt failed.");
            }
        }




    }




    protected void Button3_Click(object sender, EventArgs e)
    {
        Session.Add("user", TextBox1.Text);
        Session.Add("fname", "i");
        Session.Add("lname", "r");


        Session.Timeout = 25;

        Response.Redirect("~/Admin/PanelAdmin.aspx");
    }
}
