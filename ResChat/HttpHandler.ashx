<%@ WebHandler Language="C#" Class="HttpHandler" %>

 using System;
using System.Web;

public class HttpHandler : IHttpHandler {

    public void ProcessRequest(HttpContext context)
    {
        string imagePath = context.Request.QueryString["ID"];

        // split the string on periods and read the last element, this is to ensure we have
        // the right ContentType if the file is named something like "image1.jpg.png"
        System.IO.FileInfo imageFile = new System.IO.FileInfo(context.Request.PhysicalApplicationPath + imagePath); 
        bool fileExists = imageFile.Exists;
        if (fileExists)
        {
            context.Response.ContentType = "image/" + imageFile.Extension;
            context.Response.WriteFile(context.Server.MapPath(imagePath));
        }
        else
        {
            context.Response.ContentType = "image/jpeg";
            context.Response.WriteFile(context.Server.MapPath("NoImage.jpg"));
        }
       
            context.Response.Write(imagePath);
       
    }

    public bool IsReusable
    {
        get { return true; }
    }
}