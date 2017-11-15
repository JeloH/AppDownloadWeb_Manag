using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

using System.Configuration;
using System.Data;
using System.Data.SqlClient;

using System.Globalization;

using System.IO;

 
using Microsoft.VisualBasic;

using System.Text;

using System.Collections;
 
 

using System.Web.UI.WebControls;
 
using System.Web.UI;
using System.Web.UI.WebControls;
 

/// <summary>
/// Summary description for Class1
/// </summary>
public class Class1
{

    public static string[] Choromos;
    public static string[] Index_Gen_WebSite;

    public static string[][] Choromos2 = new string[][] { };



    SqlConnection con;

    public static string date_login_logout = "";
   
    public static string ip_login = "";
  
    public static string statue_insert_Data_DB="";

    public static string urlAddress = "";

    public static string url_Address = "http://www.irvb.ir";

    public static bool status_createTagLinkPost = false;
  
 


	public Class1()
	{

}


    public void CmdSqlDataBaesAccess(string strCodeSql)
    {
        
        try
        {

            string str1 = "";
            str1 = ConfigurationManager.ConnectionStrings["cn1"].ConnectionString;
            con = new SqlConnection(str1);



            SqlCommand cmd = new SqlCommand(strCodeSql, con);
            con.Open();

            cmd.ExecuteNonQuery();

            Class1.statue_insert_Data_DB="insert_succes";
        }

        catch (Exception)
        {

            Class1.statue_insert_Data_DB = "insert_error";
            //  MessageBox.Show("امکان خطا وجود دارد!");
            //    MessageBox.Show("مشکل خطا را بررسی کنید");

        //     r.Message.ToString();
        }

        finally
        {
            //con.Close();
        }

    }






 
    public static bool IsNumeric2( string s)
    {
        foreach (char c in s)
        {
            if (!char.IsDigit(c))
            {
                return false;
            }
        }

        return true;
    }

    public static string Date()
    {
        string tarikhShamsi="";

        PersianCalendar pc = new PersianCalendar();
        DateTime dt = DateTime.Now;
        tarikhShamsi = pc.GetYear(dt).ToString() + "/" + pc.GetMonth(dt).ToString() + "/" + pc.GetDayOfMonth(dt).ToString();

        return tarikhShamsi;

    }


    public static string clock() {

        string saat = "";

        saat = DateTime.Now.ToLongTimeString();

        return saat;
    }


    public static string end_item_rpt()
    {

        string TarikheOzviat = "";
        string NonvehOzviat = "";


        string str1 = "";
        str1 = ConfigurationManager.ConnectionStrings["cn1"].ConnectionString;
        SqlConnection CN = new SqlConnection(str1);



        CN.Open();

        try
        {



            SqlCommand objCmd = new SqlCommand("SELECT   MAX(rpt) AS Expr1 FROM   rpt_log ", CN);
            SqlDataReader reader = objCmd.ExecuteReader();


            while (reader.Read())
            {

                TarikheOzviat = reader["Expr1"].ToString();
                

            }


          

        }
        catch (Exception ex)
        {
       //     MessageBox.Show(ex.Message.ToString());
        }
        finally
        {
            CN.Close();
        }






        return TarikheOzviat;
    
    }








 public static string end_item_Field(string cmdSql)
    {

        string TarikheOzviat = "";
        string NonvehOzviat = "";


        string str1 = "";
        str1 = ConfigurationManager.ConnectionStrings["cn1"].ConnectionString;
        SqlConnection CN = new SqlConnection(str1);



        CN.Open();

        try
        {



            SqlCommand objCmd = new SqlCommand(cmdSql, CN);
            SqlDataReader reader = objCmd.ExecuteReader();


            while (reader.Read())
            {

                TarikheOzviat = reader["Expr1"].ToString();


            }




        }
        catch (Exception ex)
        {
            //     MessageBox.Show(ex.Message.ToString());
        }
        finally
        {
            CN.Close();
        }






        return TarikheOzviat;

    }









public static string Count_login_rpt()
    {

        string count_input = "";
        

         string str1 = "";
         str1 = ConfigurationManager.ConnectionStrings["cn1"].ConnectionString.ToString();
        SqlConnection CN = new SqlConnection(str1);

//string pass = "0gqQ*os*n!n8d; ";


        //SqlConnection CN = new SqlConnection("Data Source=79.143.84.31;  Initial Catalog=kimiahost_d20;  User ID=demah;Password="+pass+" ");

        CN.Open();

        try
        {



            SqlCommand objCmd = new SqlCommand("SELECT count(*) AS Expr1 FROM   rpt_log ", CN);
            SqlDataReader reader = objCmd.ExecuteReader();


            while (reader.Read())
            {

                count_input = reader["Expr1"].ToString();


            }




        }
        catch (Exception ex)
        {
            //     MessageBox.Show(ex.Message.ToString());
        }
        finally
        {
            CN.Close();
        }






        return count_input;

    }






    public static string GetUsersIP()
    {
        System.Web.HttpContext current = System.Web.HttpContext.Current;
        string ipAddress = null;

        if (current.Request.ServerVariables["HTTP_CLIENT_IP"] != null)
            ipAddress = current.Request.ServerVariables["HTTP_CLIENT_IP"];

        if (ipAddress == null || ipAddress.Length == 0 || ipAddress == "unknown")
            if (current.Request.ServerVariables["HTTP_X_FORWARDED_FOR"] != null)
                ipAddress = current.Request.ServerVariables["HTTP_X_FORWARDED_FOR"];

        if (ipAddress == null || ipAddress.Length == 0 || ipAddress == "unknown")
            if (current.Request.ServerVariables["REMOTE_ADDR"] != null)
                ipAddress = current.Request.ServerVariables["REMOTE_ADDR"];

        if (ipAddress == null || ipAddress.Length == 0)
            ipAddress = "unknown";

        return ipAddress;
    }



    public static void GetLength_File(string FilePath, out string lng)
    {

   
    FileInfo finfo = new FileInfo(FilePath);
long FileInBytes = finfo.Length;
double FileInKB;
double FileInMB;
 
        //Megabyte
	FileInKB=finfo.Length / 1024;
	lng=FileInKB.ToString();
   
        if (FileInKB < 1024)
    {

        lng = FileInKB.ToString() ;


    }
      
        else if (FileInKB > 1024)
    {
        FileInMB =  FileInKB / 1024;
        lng = FileInMB.ToString() ;

    }

 

}


    public static string GetLengthFile(string FilePath)
    {

        string[] sizes = { "B", "KB", "MB", "GB" };
        double len = new FileInfo(@"F:\picture\Picture_Khabgah_Anvari_2.1389\DSC00186.jpg").Length;
        int order = 0;
        while (len >= 1024 && order + 1 < sizes.Length)
        {
            order++;
            len = len / 1024;
        }

        // Adjust the format string to your preferences. For example "{0:0.#}{1}" would
        // show a single decimal place, and no space.
        string result = String.Format("{0:0.##} {1}", len, sizes[order]);


        return result;

    }


    // تولید کد تصادفی و حساس به کوچک و بزرگ
    public static string RandomCode(int PwdLength)
    {
        string _allowedChars = "abcdefghijkmnopqrstuvwxyzABCDEFGHJKLMNOPQRSTUVWXYZ0123456789";
        Random rndNum = new Random();
        char[] chars = new char[PwdLength];
        int strLength = _allowedChars.Length;
        for (int i = 0; i <= PwdLength - 1; i++)
        {
            chars[i] = _allowedChars[Convert.ToInt32(Math.Floor((_allowedChars.Length) * rndNum.NextDouble()))];
        }
        return new string(chars);
    }


    public static string GetClockShamsi()
    {

        PersianCalendar pc = new PersianCalendar();

        DateTime dt = DateTime.Now;


        return pc.GetYear(dt).ToString() + "/" + pc.GetMonth(dt).ToString() + "/" + pc.GetDayOfMonth(dt).ToString();
    }


    public static string createrandompwd(int pwdlength)
    {
        string _a = "0123456789abcdefghijkmnopqrstuvwxyzABCDEFGHJKLMNOPQRST";
        Random r = new Random();
        char[] arr = new char[pwdlength];
        int allchrcount = _a.Length;
        for (int i = 0; i < pwdlength; i++)
        {
            arr[i] = _a[(int)((_a.Length) * r.NextDouble())];
        }
        return new string(arr);
    }















 
      public class WebMsgBox

      {

            protected static Hashtable handlerPages = new Hashtable();            

            private WebMsgBox()

            {

            }

 

            public static void Show(string Message)

            {

                  if (!(handlerPages.Contains(HttpContext.Current.Handler)))

                  {
                      
                        Page currentPage = (Page)HttpContext.Current.Handler;

                        if (!((currentPage == null)))

                        {

                              Queue messageQueue = new Queue();

                              messageQueue.Enqueue(Message);

                              handlerPages.Add(HttpContext.Current.Handler, messageQueue);

                              currentPage.Unload += new EventHandler(CurrentPageUnload);

                        }

                  }

                  else

                  {

                        Queue queue = ((Queue)(handlerPages[HttpContext.Current.Handler]));

                        queue.Enqueue(Message);

                  }

            }

 

            private static void CurrentPageUnload(object sender, EventArgs e)

            {

                  Queue queue = ((Queue)(handlerPages[HttpContext.Current.Handler]));

                  if (queue != null)

                  {

                        StringBuilder builder = new StringBuilder();

                        int iMsgCount = queue.Count;

                        builder.Append("<script language='javascript'>");

                        string sMsg;

                        while ((iMsgCount > 0))

                        {

                              iMsgCount = iMsgCount - 1;

                              sMsg = System.Convert.ToString(queue.Dequeue());

                              sMsg = sMsg.Replace("\"", "'");

                              builder.Append("alert( \"" + sMsg + "\" );");

                        }

                        builder.Append("</script>");

                        handlerPages.Remove(HttpContext.Current.Handler);

                        HttpContext.Current.Response.Write(builder.ToString());

                  }

            }

      }








      public class MessageBox
      {
          #region Constructor
          public MessageBox()
          {
              //
              // TODO: Add constructor logic here
              //
          }
          #endregion
          #region Void
          public static void Show(UpdatePanel updatepanel, string message)
          {
              ScriptManager.RegisterStartupScript(updatepanel, updatepanel.GetType(), "MessageBox", "alert('" + message + "')", true);
          }
          public static void Show(Page page, string message)
          {
              ScriptManager.RegisterClientScriptBlock(page, page.GetType(), "MessageBox", "alert('" + message + "')", true);
          }
          #endregion
      }




}

 
