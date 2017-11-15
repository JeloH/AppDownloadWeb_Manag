using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_PanelAdmin : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

        
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

}