<%@ WebHandler Language="C#" Class="Handler2" %>

using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.Sql;
using System.Data.SqlClient;
using System.Data.SqlTypes;
using System.IO;
using System.Data;
using System.Web.Security;
using Microsoft;
using Microsoft.Web;
using System;


public class Handler2 : IHttpHandler {
    
    public void ProcessRequest (HttpContext context) {
        string displayimid = context.Request.QueryString["id_Image"].ToString();
        string connectionString = ConfigurationManager.ConnectionStrings["RegistrationConnectionString"].ConnectionString;
        SqlConnection sqlConnect = new SqlConnection(connectionString);
        sqlConnect.Open();
        string SQLCommand = "Select Image from ImageToDB  where id="+displayimid;
        SqlCommand sqlcommand = new SqlCommand(SQLCommand, sqlConnect);
        SqlDataReader dr = sqlcommand.ExecuteReader();
        dr.Read();
        context.Response.BinaryWrite((Byte[])dr[0]);
        context.Response.End();
        
    }
    
    public bool IsReusable
    {
        get
        {
            return false;
        }
    }

}