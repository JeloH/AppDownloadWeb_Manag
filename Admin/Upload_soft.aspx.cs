using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


using System.Data.SqlClient;
using System.IO;
using System.Web.UI.WebControls;


public partial class Admin_upload_soft : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }


    protected void Button2_Click(object sender, EventArgs e)
    {

        string path = Server.MapPath(".." + "/soft/"+DropDownList1.SelectedItem.ToString()+"/");
      
        string[] validtext = { ".apk", ".ipa", ".jar", ".zip", ".rar" };
        string ext = System.IO.Path.GetExtension(FileUpload1.PostedFile.FileName);

        if (Array.IndexOf(validtext, ext.ToLower()) < 0)
        {

            Label3.Text = "Invalid File extenison..";
            return;
        }


        long size = FileUpload1.PostedFile.ContentLength;
        size = size / 1024;

        if (size > 5000)
        {
            Label3.Text = "file size mute <5000 kb";
            return;
        }

        string filename = System.IO.Path.GetExtension(FileUpload1.PostedFile.FileName);
        while (System.IO.File.Exists(path + "/" + filename))

            filename = "1" + filename;
        //C:\Users\313\Documents\Visual Studio 2010\WebSites\WebSite1\Admin\soft\.jar
        FileUpload1.PostedFile.SaveAs(path + filename);
        Label3.Text = "file Upload";




    }



    protected void Button3_Click(object sender, EventArgs e)
    {
        
        
        /*string path = Server.MapPath(".") + "/soft/";
        string[] files = System.IO.Directory.GetFiles(path);
        string tags = "";

        foreach (string f in files)
        {

            string ff = System.IO.Path.GetFileName(f);
            tags += "<img width=200 heigth=200 src='soft/{0}'/>";
            tags = string.Format(tags, ff);
        }
        Label3.Text = tags;
    */

    }



}