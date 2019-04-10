<%@ Application Language="C#" %>

<script runat="server">

    void Application_Start(object sender, EventArgs e)
    {
        // Code that runs on application startup
       


    }

    void Application_End(object sender, EventArgs e)
    {
        //  Code that runs on application shutdown

    }

    void Application_Error(object sender, EventArgs e)
    {
        // Code that runs when an unhandled error occurs
        Response.Redirect("ErrorPage.aspx");

    }
    
    void onSession_Start(object sender, EventArgs e)
    {
        if (Session["UserSessionID"] == null)
            Session["UserSessionID"] = System.Guid.NewGuid().ToString();
    }
    
    void Session_Start(object sender, EventArgs e)
    {
        // Code that runs when a new session is started
       
        
        HttpRequest http = HttpContext.Current.Request;
        if(http.Browser.IsMobileDevice)
        {
             Response.Redirect("MobilePage.aspx");
        }

    }

    void Session_End(object sender, EventArgs e)
    {
        // Code that runs when a session ends. 
        // Note: The Session_End event is raised only when the sessionstate mode
        // is set to InProc in the Web.config file. If session mode is set to StateServer 
        // or SQLServer, the event is not raised.
         FormsAuthentication.SignOut();
    }

</script>
