using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Configuration;
using System.Data;
using System.Data.SqlClient;


public partial class Admin_Send_Softwear : System.Web.UI.Page
{


    Class1 c1 = new Class1();

 public static string keyWords = "";


    protected void Page_Load(object sender, EventArgs e)
    {
    
//    DropDownList5.SelectedIndex = 3;

    }


    protected void Button3_Click(object sender, EventArgs e)
    {
        string lng_file = "";


        string DropDownSelect="";

        string subject_post = "متفرقه";
        string url_img_Address = "";
        string url_soft_Address = "";
        string seo = "";

        DropDownSelect = DropDownList1.SelectedItem.ToString();


        if (DropDownSelect == "نرم افزار جاوا") DropDownSelect = "java";
        if (DropDownSelect == "نرم افزار آندروید") DropDownSelect = "android";
        if (DropDownSelect == "نرم افزار آیفون") DropDownSelect = "iphone";
        if (DropDownSelect == "نرم افزار بادا") DropDownSelect = "bada";
        if (DropDownSelect == "عمومی") DropDownSelect = "oumumi";
        if (DropDownSelect == "تولید نرم افزار موبایل") DropDownSelect = "Educ";



        if (RadioButton1.Checked==true)
        {
            subject_post = DropDownList5.SelectedItem.ToString();
        }
        else if (RadioButton2.Checked == true)
        {
            subject_post = TextBox14.Text;
     
        }
 
 //Create_KeyWord(TextBox16.Text, TextBox17.Text);
     //   Label2.Text = keyWords;
       
 seo = keyWords;


        url_img_Address = FilePath("/img/",FileUpload1.FileName, FileUpload1);
        url_soft_Address = FilePath("/soft/" + DropDownSelect + "/", FileUpload2.FileName, FileUpload2);







     //   lng_file=  Class1.GetLengthFile(url_soft_Address);//size file soft

      if (lng_file != "")
        {
            TextBox15.Text = lng_file;
        }
    





        if (url_img_Address != "")
            TextBox7.Text = url_img_Address;

        if (url_soft_Address != "")
            TextBox8.Text = url_soft_Address;

        string date_send = DropDownList4.SelectedItem + "/" + DropDownList3.SelectedItem.ToString() + "/" + DropDownList2.SelectedItem.ToString();

        //  string qry = "insert into send_soft(date,title,img_address,soft_address,body,Abstruct,type,link_Download)values('" + Class1.GetClockShamsi()+ "','" + TextBox2.Text + "','" + url_img_Address + "','" + url_soft_Address + "','" + FCKeditor1.Value+ "','" + TextBox4.Text + "','" + DropDownList1.SelectedItem.ToString() + "','" + TextBox5.Text + "') ";

        c1.CmdSqlDataBaesAccess("insert into send_softwear(date,title,img_address,soft_address,body,Abstruct,type,lenght,source_company,subject_post,password_softwear,seo)values('" + Class1.GetClockShamsi()+ "','" + TextBox2.Text + "','" + TextBox7.Text + "','" + TextBox8.Text + "','" + FCKeditor1.Value + "','" + TextBox4.Text + "','" + DropDownSelect + "' ,'" + TextBox15.Text + "' ,'" + TextBox6.Text + "','"+subject_post+"' ,'" + TextBox_Password.Text + "' ,'" +  Label2.Text+ "' )");
        
        
            if (Class1.statue_insert_Data_DB == "insert_succes")
            {
                Response.Write("<script> alert('عملیات ثبت با موفقیت انجام شد'); window.location = location.href;</script>");

            }

            else if (Class1.statue_insert_Data_DB == "خطا دارد: لطفا دوباره امتحان کنید")
            {

                Response.Write("<script> alert(' error send '); window.location = location.href;</script>");


            }

       



        }




        

          

   
    protected void Button1_Click(object sender, EventArgs e)
    {
        Create_KeyWord(TextBox16.Text, TextBox17.Text);
        Label2.Text = keyWords;
     
   TextBox19.Text = keyWords;
         

    }


    public void Create_KeyWord(string word, string linkWord)
    {

        string[] str4 = new string[24];
        string[] str5 = new string[24];

        str4 = word.Split(',');


        for (int i = 0; i < str4.Length; i++)
        {

            str5[i] = "<a href='" + linkWord + "'>'" + str4[i] + "'</a> &nbsp;&nbsp;&nbsp;";


             //style="background-color: #FFCC66; border-color: #000000; border-width: 1px; border-style: solid; padding: 1px; margin: 1px; color: #996600"

         //   keyWords += "<a href=" + linkWord + " class=link_keywords  >" + str4[i] + "</a> &nbsp;&nbsp;&nbsp;";
            keyWords += "<a href=" + linkWord + " >" + str4[i] + "</a> &nbsp;";


        }

        //Label1.Text = keyWords;
    }




   








    private string FilePath(string Namefolder, string fileName, FileUpload fupl1)
    {
        string savePath = "";
        string ReturnPath = "";
        if (fileName != "")
        {

            savePath = Server.MapPath("..") + Namefolder;
            //savePath = Path.GetFullPath(@"E:\CAREER\PROJECT\Web\OnlineShop\App_Data\ProductsImage\");
            string pathToCheck = savePath + fileName;

            // Create a temporary file name to use for checking duplicates.
            string tempfileName = "";

            // Check to see if a file already exists with the
            // same name as the file to upload.        
            if (System.IO.File.Exists(pathToCheck))
            {
                int counter = 2;
                while (System.IO.File.Exists(pathToCheck))
                {
                    // if a file with this name already exists,
                    // prefix the filename with a number.
                    tempfileName = counter.ToString() + fileName;
                    pathToCheck = savePath + tempfileName;
                    counter++;
                }

                fileName = tempfileName;
            }

            // Append the name of the file to upload to the path.
            savePath += fileName;
            fupl1.SaveAs(savePath);

            // Call the SaveAs method to save the uploaded
            // file to the specified directory.
            ReturnPath = "~" + Namefolder +fileName;//
        }
        return ReturnPath;
    }





    protected void Button4_Click(object sender, EventArgs e)
    {
    //    bodyHtml = FCKeditor1.Value;
        
TextBox16.Text = FCKeditor1.Value;

           
   // ClientScript.RegisterStartupScript(this.GetType(), "copy", "window.clipboardData.setData('text','"+bodyHtml+"')", true);
 



    }







}
