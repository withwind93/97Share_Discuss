using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class aspx_myarticle : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string author;
        author = Convert.ToString(Session["username"]);
        Session["author"] = author;
        Session["back"] = "myarticle.aspx";
    }


    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Session["ban"] = "1";
        this.Response.Redirect("ban.aspx");
    }
    protected void LinkButton2_Click(object sender, EventArgs e)
    {
        Session["ban"] = "2";
        this.Response.Redirect("ban.aspx");
    }
    protected void LinkButton3_Click(object sender, EventArgs e)
    {
        Session["ban"] = "3";
        this.Response.Redirect("ban.aspx");
    }
    protected void LinkButton4_Click(object sender, EventArgs e)
    {
        Session["ban"] = "4";
        this.Response.Redirect("ban.aspx");
    }
}