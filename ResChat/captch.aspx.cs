using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Globalization;
using System.IO;
using System.Windows;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using Recaptcha;
using System.Drawing;


public partial class captch : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        lblResult.Visible = false;
    }
    protected void btnLogin_Click(object sender, EventArgs e)
    {
        if (recaptcha.IsValid)
        {
            lblResult.Visible = true;
            lblResult.Text = "Login Successfully at  " + DateTime.Now.ToString("dd-MM-yyyy-hh:mm:ss");
            lblResult.ForeColor = Color.Green;

        }
        else
        {
            lblResult.Visible = true;
            lblResult.Text = "The verification Code Is incorrect.";
            lblResult.ForeColor = Color.Red;
        }   
    }
}