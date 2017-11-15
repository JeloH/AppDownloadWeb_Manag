using System;
using System.Data;
using System.Configuration;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;

using Microsoft.Office.Interop.Word;

/// <summary>
/// Summary description for Word2Pdf
/// </summary>
public class Word2Pdf
{
    private Microsoft.Office.Interop.Word.ApplicationClass MSWordDoc;
    object UnknownType = Type.Missing;
	public string Word2PdfCOnversion(object InputLocation,object OutputLocation)
	{
        string result;
        try
        {
            if (MSWordDoc == null) MSWordDoc = new Microsoft.Office.Interop.Word.ApplicationClass();
            MSWordDoc.Visible = false;
            MSWordDoc.Documents.Open(ref InputLocation,    //Input File Name Location
                ref UnknownType,    // Conversion Conformation
                ref UnknownType,    // Set ReadOnly Property
                ref UnknownType,    // Add to the Recent Files
                ref UnknownType,    // Document Password Setting
                ref UnknownType,    // Password Templete
                ref UnknownType,    // Revert
                ref UnknownType,    // Write Password to Document
                ref UnknownType,    // Write Password Template
                ref UnknownType,    // File Format
                ref UnknownType,    // Encoding File
                ref UnknownType,    // Visibility
                ref UnknownType,    // To Open or Repair
                ref UnknownType,    // Document Direction
                ref UnknownType,    // Encoding Dialog
                ref UnknownType);   // XML Text Transform
            MSWordDoc.Application.Visible = false;  // To Invisible the Word Document
            MSWordDoc.WindowState = Microsoft.Office.Interop.Word.WdWindowState.wdWindowStateMinimize;    // Minimize the Opened Word File.
            object SavePDFFormat = Microsoft.Office.Interop.Word.WdSaveFormat.wdFormatPDF;
            MSWordDoc.ActiveDocument.SaveAs(ref OutputLocation, //Output File Location
            ref SavePDFFormat,    // File Format
            ref UnknownType,    // Comment to PDF File
            ref UnknownType,    // Password
            ref UnknownType,    // Add to Recent File
            ref UnknownType,    // Write Password
            ref UnknownType,    // ReadOnly Propert
            ref UnknownType,    // Original Font Embeding
            ref UnknownType,    // Save Picture
            ref UnknownType,    // Saving Form Datas
            ref UnknownType,    // Save as AOVE Letter
            ref UnknownType,    // Encoding
            ref UnknownType,    // Inserting Line Breakes
            ref UnknownType,    // Allow Substitution
            ref UnknownType,    // Line Ending
            ref UnknownType);   // Add BiDi Marks
            result = "Success";
        }
        catch (Exception ex)
        {
            result = "Error";
        }
        finally
        {
            if (MSWordDoc == null) { }
            else { MSWordDoc.Documents.Close(ref UnknownType, ref UnknownType, ref UnknownType); }
            MSWordDoc.Quit(ref UnknownType, ref UnknownType, ref UnknownType);
        }
            return result;
	}
}
