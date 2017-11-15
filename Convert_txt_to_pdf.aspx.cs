using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


 
using System.IO;
 
using iTextSharp.text;
using iTextSharp.text.pdf;





public partial class Convert_txt_to_pdf : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {

        string FilePath = "";
        string[] a = new string[1];
        string fileName = "";
        string FullName = "";

        

 
            string fileExt =System.IO.Path.GetExtension(FileUpload1.FileName);

            if (fileExt == ".txt")
            {
                try
                {
                  
                    long size = 0;

                   

                      size = FileUpload1.PostedFile.ContentLength;
                    size = size / 1024;

                    if (size > 1024)
                    {
                        Label1.Text = "file size mute < 1024 kb (1 MB)";
                        return;
                   
                    }
                    else{
 
                        a = FileUpload1.FileName.Split('.');
                        fileName = Convert.ToString(System.DateTime.Now.Ticks) + "." + a.GetValue(1).ToString();
                        FilePath = Server.MapPath(@"~\PDF_Files");
                        FileUpload1.SaveAs(FilePath + @"\" + fileName);

                        FullName = FilePath + @"\" + fileName;
                        // Database Saved Code
                  

                         Label1.Text = "File name: " +
                        FileUpload1.PostedFile.FileName + "<br>" +
                        FileUpload1.PostedFile.ContentLength + " kb<br>" +
                        "Content type: " +
                        FileUpload1.PostedFile.ContentType;
               
                 



                    string aaa = Server.MapPath("~/PDF_Files/" + fileName + ".pdf");
                    string email = File.ReadAllText(Server.MapPath("~/PDF_Files/" + fileName));


                    var doc1 = new iTextSharp.text.Document();
                    string path = Server.MapPath("PDF_Files");
                    PdfWriter.GetInstance(doc1, new FileStream(path + "/" + FileUpload1.FileName + ".pdf", FileMode.Create));
                    doc1.Open();
                    doc1.Add(new Paragraph(email));

                    doc1.Close();

                  

                    Response.ContentType = "application/octet-stream";
                    Response.AppendHeader("Content-Disposition", "attachment;filename=" + FileUpload1.FileName + ".pdf");

                   
                    Response.TransmitFile(Server.MapPath("~/PDF_Files/" + FileUpload1.FileName + ".pdf"));
                    Response.Write(Server.MapPath("~/PDF_Files/" + FileUpload1.FileName + ".pdf"));

                    Response.End();



                   

                    }
                
                
                
                
                }
                catch (Exception ex)
                {
                    Label1.Text = "ERROR: " + ex.Message.ToString();
                }
            }
            else
            {
                Label1.Text = "Only .txt files allowed!";
            }
        }

    
}

 


