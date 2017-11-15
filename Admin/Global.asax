<%@ Application Language="C#" %>

    <%@ Import namespace="System.Globalization" %>


<script runat="server">

    public static int count = 0;
    
    void Application_Start(object sender, EventArgs e) 
    {
        Application["activeuser"] = 0; 

    
        // Code that runs on application startup
        Application["OnlineUsers"] = 0;
   
    }
    
    void Application_End(object sender, EventArgs e) 
    {
        //  Code that runs on application shutdown

    }
        
    void Application_Error(object sender, EventArgs e) 
    { 
        // Code that runs when an unhandled error occurs
// Response.Redirect("~/Default.aspx");
 
    }

    void Session_Start(object sender, EventArgs e) 
    {
        // Code that runs when a new session is started
        int counter = 0;
        if (Application["c"] != null)

            counter = (int)Application["c"];
        else

            Application.Add("c", 0);
        counter++;
        Application["c"] = counter;
        
        //..................

        Application.Lock();
        Application["OnlineUsers"] = (int)Application["OnlineUsers"] + 1;
        Application.UnLock();
   
        //..............................

        Session["start"] = DateTime.Now; 
        
        Application.Lock();
        Application["activeuser"] = Convert.ToInt32(Application["activeuser"]) + 1;
        Application.UnLock();
        
        
        // Code that runs when a new session is started
        
        
    }

    void Session_End(object sender, EventArgs e) 
    {
        // Code that runs when a session ends. 
        // Note: The Session_End event is raised only when the sessionstate mode
        // is set to InProc in the Web.config file. If session mode is set to StateServer 
        // or SQLServer, the event is not raised.

        Application.Lock();
        Application["OnlineUsers"] = (int)Application["OnlineUsers"] - 1;
        Application.UnLock();
        
    }
       





    public static string[] blackList = {"--",";--",";","/*","*/","@@","@","'",
                                             "char","nchar","varchar","nvarchar",
                                             "alter","begin","cast","create","cursor","declare","delete","drop","end","exec","execute",
                                             "fetch","insert","kill","open",
                                             "select", "sys","sysobjects","syscolumns",
                                             "table","update"};

        //The utility method that performs the blacklist comparisons
        //You can change the error handling, and error redirect location to whatever makes sense for your site.
        private void CheckInput(string parameter)
        {
            CompareInfo comparer = CultureInfo.InvariantCulture.CompareInfo;

            for (int i = 0; i < blackList.Length; i++)
            {
                if (comparer.IndexOf(parameter,blackList[i],CompareOptions.IgnoreCase) >= 0)
                {
                    //
                    //Handle the discovery of suspicious Sql characters here
                    //
               //    Response.Redirect("~/Default.aspx");  //generic error page on your site
                }
            }
        }




void Application_BeginRequest(object sender, EventArgs e) 
    {
        foreach (string key in Request.QueryString)
            CheckInput(Request.QueryString[key]);
        foreach (string key in Request.Form)
            CheckInput(Request.Form[key]);
        foreach (string key in Request.Cookies)
            CheckInput(Request.Cookies[key].Value);                
    }

</script>
