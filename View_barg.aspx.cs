using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Data;
using System.Data.SqlClient;

using System.Configuration;


public partial class View_barg : System.Web.UI.Page
{

    Class1 c1 = new Class1();


    public static string code_post = "0";

    public static string type_post = "0";


    int c3 = 0;
 public static string keyWords = "";

 public static string key_url = "";



    protected void Page_Load(object sender, EventArgs e)
    {

 

      
            if (!IsPostBack)
            {

          if (Session["user"] == null)
                  {

                div1.Visible = false    ;
                SetTextDataTable();
                     View_comment_Enable();

                }


         else
          { 
 
               div1.Visible = true    ;
               SetTextDataTable();              
              
            View_comment_Enable();


            }


 


            }

 

 Class1.urlAddress = Page.Request.Url.ToString();

    }






        SqlDataReader reader ;


    public void SetTextDataTable() {



        Random rx = new Random();

        Label4.Text = rx.Next(1000, 100000).ToString();


        int i = Convert.ToInt32(Application["activeuser"]);

try
        {


   View_barg.code_post = Page.Request.QueryString["page"].ToString();

View_barg.type_post = Page.Request.QueryString["type"].ToString();


    key_url = Page.Request.Url.ToString();
   

if(code_post == Page.Request.QueryString["page"].ToString())
{
Class1.status_createTagLinkPost =false;
Class1.url_Address = key_url;
}

else if(code_post != Page.Request.QueryString["page"].ToString())
{
Class1.status_createTagLinkPost =true;
Class1.url_Address = Page.Request.Url.ToString();
}

else
{
Class1.url_Address = Page.Request.Url.ToString();
}



          }
        catch
        {
            
       Response.Redirect("Default.aspx");

          }
        
     







 string str3 = "";
        str3 = ConfigurationManager.ConnectionStrings["cn1"].ConnectionString;
       
        SqlConnection con = new SqlConnection(str3);
        SqlCommand cmd = new SqlCommand("StoredProcedure1_View_mataleb", con);
        SqlDataReader r;

        // Configure command and add parameters.
        cmd.CommandType = CommandType.StoredProcedure;
        SqlParameter param;
         param = cmd.Parameters.Add("@code_post",SqlDbType.BigInt);
         param.Value =View_barg. code_post;


//cmd.Parameters.Add("@code_post", SqlDbType.Int);
//cmd.Parameters("@code_post").Value = code_post;

        string g1 = "#";
        g1 = param.Value.ToString();

       // cmd.Parameters.Add(param);

        //      object fr = cmd.ExecuteScalar();

        //   Response.Write(fr.ToString());
        //Response.Write(g1);







            // تشخیص اینکه کد مطلب در آدرس بار فقط عدد باشد زیرا فیلد از نوع عددی است
            // اگر غیر عدد باشد خطا است.

            if (Class1.IsNumeric2(g1) == false)
            {

                Response.Redirect(Class1.urlAddress);

            }




        // Execute the command.
        con.Open();
        r = cmd.ExecuteReader();




        if (r.HasRows)
        { // اگر این کد وجود دارد




        while (r.Read())
        {



              Page.Title = r["title"].ToString();

              HyperLink31.Text = r["title"].ToString();
            

                 //   Image1.ImageUrl = r["img_address"].ToString(); ;

                    bodyLabel.Text = r["body"].ToString();
                   // typeLabel.Text = r["type"].ToString();
                  //  lenght.Text = r["lenght"].ToString();

                    int v1 = 0;

                    
                     if (r["View_Count"].ToString() != "") {


                         v1 = int.Parse(r["View_Count"].ToString());

                     
                     }

                     v1 = v1 + 1;

                                    //     c1.CmdSqlDataBaesAccess("update demah.send_softwear set View_Count= '" + v1 + "' where code_post='" + code_post + "' ");

                  //  View_CountLabel.Text = r["View_Count"].ToString();

                 //   HyperLink13.NavigateUrl = r["soft_address"].ToString();

                    dateLabel.Text = r["DateSend"].ToString();

                 //   subject_post.Text = r["subject_post"].ToString();
      //  if (Class1.status_createTagLinkPost == true)
           // {

                Class1.url_Address = Page.Request.Url.ToString();
           // }
            //ایجاد کلمه کلیدی----------------------------------------
           //     Class1.status_createTagLinkPost = true;
                keyWords = "";//جلوگیری از تکرار چاپ کلمات کلیدی
            //     Class1.url_Address = Page.Request.Url.ToString();
                 // Create_KeyWord("",'');
                keyWords  =  Create_KeyWord(r["seo"].ToString(),',');
           //     keyWords +=  ",";
                keyWords +=  Create_KeyWord(r["title"].ToString(),'-');
                seo_Label.Text=keyWords ;

//Class1.url_Address="";

//                keyWords =" ";
            //---------------------------------------------------------
                Class1.status_createTagLinkPost = true;






            if (div1.Visible == true)
            {



                TextBox1_Title.Text = r["title"].ToString();


              //  Image2.ImageUrl = r["img_address"].ToString(); 

                 FCKeditor1.Value = r["body"].ToString();
             //   TextBox1_type.Text = r["type"].ToString();

                 DropDownList1.SelectedValue =r["type_Post"].ToString();
               

              //  TextBox1_lengh.Text = r["lenght"].ToString();

                // int v1 = int.Parse(r["View_Count"].ToString());
                // v1 = v1 + 1;

            
              //  TextBox1_AddressFile_link.Text = r["soft_address"].ToString();

                TextBox1_DateSend.Text = r["DateSend"].ToString();

                TextBox1_SubjectPost.Text = r["type_post"].ToString();
                TextBox1_Seo.Text = r["seo"].ToString();

                //TextBox1_SourceOrCompany.Text = r["source_company"].ToString();

             //  TextBox1_AddressIMG.Text = r["img_address"].ToString(); 

              // TextBox1_Abestract.Text = r["Abstruct"].ToString(); 

            }







                  //  lblPassword.Text = r["password_softwear"].ToString();
                  ///  lblsource.Text = r["source_company"].ToString();



                    // dateLabel.Text = reader["date"].ToString();//tedade dwnld
                    //  lenght.Text = reader["lenght"].ToString();tedade nazar
                    //seo










        }

        con.Close();

}


        else
        { // اگر این کد وجود ندارد

            Response.Redirect("Default.aspx");


        }

}


  public string Create_KeyWord(string word,char c)
    {
       string taglink="";
          //Class1.url_Address = Page.Request.Url.ToString();
        string[] str4 = new string[]{};
        string[] str5 = new string[24];

        str4 = word.Split(c);
Class1.url_Address = Class1.url_Address.Split('&')[0];//جلوگیری از تکرار چاپ کلمات کلیدی

 string s9= Page.Request.Url.ToString();

        for (int i = 0; i < str4.Length; i++)
        {

         //   str5[i] = "<a href='" + Class1.url_Address + "&" + word + "'>'" + str4[i] + "'</a> &nbsp;&nbsp;";

               
            //style="background-color: #FFCC66; border-color: #000000; border-width: 1px; border-style: solid; padding: 1px; margin: 1px; color: #996600"

            taglink+= "<a href="+ Class1.url_Address+"&" + str4[i].Replace(' ','-') + " class=link_keywords >" + str4[i] + "</a> &nbsp;&nbsp; ";


        }

        //Label1.Text = keyWords;

        return taglink;
    }






    SqlConnection sql_conn = new SqlConnection();
    SqlCommand sql_comm = new SqlCommand();
    DataSet ds = new DataSet();
    SqlDataAdapter sql_da = new SqlDataAdapter();

    string str_conn;




    public void View_comment_Enable()
    {



        string query = "SELECT name, code, body, date FROM comments WHERE  code_post = @code_post and status=@status";



        string str1 = "";
        str1 = ConfigurationManager.ConnectionStrings["cn1"].ConnectionString;
        SqlConnection conn = new SqlConnection(str1);


        str_conn = str1;

        sql_conn.ConnectionString = str_conn;
        sql_comm.Connection = sql_conn;
        sql_da.SelectCommand = new SqlCommand();
        sql_da.SelectCommand.Connection = sql_conn;
        sql_da.SelectCommand.CommandType = CommandType.StoredProcedure;

        sql_da.SelectCommand.CommandText = "demah.StoredProcedure4";

        sql_da.SelectCommand.Parameters.AddWithValue("@code_post", Request.QueryString["page"]);
        sql_da.SelectCommand.Parameters.AddWithValue("@status", "True");

        sql_da.SelectCommand.Parameters.AddWithValue("@type_post", Request.QueryString["type"]);

        // sql_da.SelectCommand.Parameters.AddWithValue("@crsid", Session["crsid"].ToString());

        sql_conn.Open();
        sql_da.Fill(ds, "comments");
        sql_conn.Close();

        GridView1.DataSource = ds;
        GridView1.DataMember = "comments";
        GridView1.DataBind();
        ds.Clear();





    }


    protected void Button2_Click(object sender, EventArgs e)
    {
        // Response.Write("<script>alert('نظر شما به ثبت رسید و پس از تایید  ، نمایش داده خواهد شد')</script>");
/*

        Button2.Attributes.Add("onclick", "GetValues()");





        string date_now = "";
        date_now = Class1.GetClockShamsi();



        if (TextBox4.Text == Label4.Text.ToString())
        {
            Label5.Visible = true;

 //c1.CmdSqlDataBaesAccess("insert into comments(name,email,body,date,code_post,title_post)values('" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "','" + date_now + "','" + code_post + "', '" + titleLabel.Text + "' )");


//gh();

            Label6.Text = Class1.statue_insert_Data_DB;


            if (Class1.statue_insert_Data_DB == "insert_succes")
            {
                Response.Write("<script> alert('نظر شما ارسال شد پس از تایید نمایش داده خواهد شد'); window.location = location.href;</script>");

            }

            else if (Class1.statue_insert_Data_DB == "خطا دارد: لطفا دوباره انتحان کنید")

            {

                Response.Write("<script> alert(' error send '); window.location = location.href;</script>");


            }



        }

        else
        {


            Label5.Visible = true;

        }
*/


 insert_comment();

    }







    private void MessageBox(string msg)
    {
        Label lbl = new Label();
        lbl.Text = "<script language='javascript'>" + Environment.NewLine + "window.alert('" + msg + "')</script>";
        Page.Controls.Add(lbl);
    }


    public void refresh()
    {



        Random rx = new Random();

        Label4.Text = rx.Next(1000, 100000).ToString();


        Page.Response.Redirect(Page.Request.Url.ToString(), true);

        Response.Write("<script>alert('نظر شما به ثبت رسید و پس از تایید  ، نمایش داده خواهد شد')</script>");
    }


  protected void LinkButton1_Click1(object sender, EventArgs e)
    {
        //حذف seseeon
        Session.RemoveAll();
      Response.Redirect("Default.aspx");

    }



 

    public void insert_comment() {

       int cp=int.Parse(View_barg. code_post);
        
        string date_now = "";
        date_now = Class1.GetClockShamsi();
 
            string str21 = "";

            str21 = ConfigurationManager.ConnectionStrings["cn1"].ConnectionString;
       
            SqlConnection con = new SqlConnection(str21);

            SqlCommand cmd = new SqlCommand();
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.CommandText = "demah.StoredProcedure_insert_comment";

 

        cmd.Parameters.Add("@code_post", SqlDbType.Int).Value = cp;
 
        cmd.Parameters.Add("@name", SqlDbType.NVarChar).Value = TextBox1.Text;
        cmd.Parameters.Add("@email", SqlDbType.NVarChar).Value = TextBox2.Text.Trim();
        cmd.Parameters.Add("@body", SqlDbType.NText).Value = TextBox3.Text.Trim();
        cmd.Parameters.Add("@date", SqlDbType.NVarChar).Value = date_now;

        cmd.Parameters.Add("@title_post", SqlDbType.NVarChar).Value = HyperLink31.Text.Trim();

        cmd.Parameters.Add("@ip", SqlDbType.NVarChar).Value = Class1.GetUsersIP();

        cmd.Parameters.Add("@type_post", SqlDbType.NVarChar).Value = View_barg.type_post;

        cmd.Connection = con;
        try
        {
            con.Open();
            cmd.ExecuteNonQuery();
            Response.Write("<script> alert('sucessfully Send'); window.location = location.href;</script>");
         // Response.Write("<script> alert('نظر شما ارسال شد پس از تایید نمایش داده خواهد شد'); window.location = location.href;</script>");

           // insertReportLabel.Text = "Student inserted sucessfully";
        }
        catch
        {
              //  Response.Write("<script> alert('عملیات ارسال ناموفق می باشد'); window.location = location.href;</script>");
                  Response.Write("<script> alert('Error Send'); window.location = location.href;</script>");

            //insertReportLabel.Text = "Student NOT inserted";
        }
        finally
        {
            con.Close();
            con.Dispose();
        }  
    
    }

 
  public void Update_Post() {
        code_post = Page.Request.QueryString["page"].ToString();
 

        string date_now = "";
        date_now = Class1.GetClockShamsi();

        string str21 = "";
        str21 = ConfigurationManager.ConnectionStrings["cn1"].ConnectionString;
        SqlConnection con = new SqlConnection(str21);
 

        SqlCommand cmd = new SqlCommand("demah.StoredProcedure_update");
        cmd.CommandType = CommandType.StoredProcedure;

    
        cmd.Parameters.Add("@code_post", SqlDbType.BigInt).Value = code_post;
        cmd.Parameters.Add("@body", SqlDbType.NText).Value = FCKeditor1.Value;
        cmd.Parameters.Add("@date", SqlDbType.NVarChar).Value = date_now;
        cmd.Parameters.Add("@title", SqlDbType.NVarChar).Value = TextBox1_Title.Text.Trim();
       // cmd.Parameters.Add("@img_address", SqlDbType.NVarChar).Value = TextBox1_AddressIMG.Text.Trim();
       // cmd.Parameters.Add("@soft_address", SqlDbType.NVarChar).Value = TextBox1_AddressFile_link.Text.Trim();
        cmd.Parameters.Add("@Abstruct", SqlDbType.NVarChar).Value = TextBox1_Abestract.Text.Trim();
        cmd.Parameters.Add("@type", SqlDbType.NVarChar).Value =  DropDownList1.SelectedItem.ToString();
      //  cmd.Parameters.Add("@lenght", SqlDbType.NVarChar).Value = TextBox1_lengh.Text.Trim();
        cmd.Parameters.Add("@source_company", SqlDbType.NVarChar).Value = TextBox1_SourceOrCompany.Text.Trim();         
         cmd.Parameters.Add("@seo", SqlDbType.NVarChar).Value = TextBox1_Seo.Text.Trim();
        cmd.Parameters.Add("@subject_post", SqlDbType.NVarChar).Value = TextBox1_SubjectPost.Text.Trim();

        cmd.Connection = con;


        try
        {
        
            con.Open();

            cmd.ExecuteNonQuery();

        }
        catch (Exception)
        {

            Response.Redirect("Default.aspx");

        }
        // lblMessage.Text = "Record updated successfully";
        finally
        {

            con.Close();

            con.Dispose();
        }
       
    
    }




}




















