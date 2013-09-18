using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Web.Configuration;
public partial class aspx_content : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
       
        try
        {

            string articleid = Request.QueryString["articleid"].ToString();
            Session["articleid"] = articleid;
            Session["back"] = "content.aspx" + "?articleid=" + articleid;
            if (Session["seenumflag"].ToString() == "true")
            {
                Session["seenumflag"] = "false";
                string connectionString = WebConfigurationManager.ConnectionStrings["forumConnectionString"].ConnectionString;
                SqlConnection conn = new SqlConnection(connectionString);
                SqlCommand cmd = new SqlCommand("update forum_article set seenum=seenum+1 where articleid='" + articleid + "'", conn);
                conn.Open();
                cmd.ExecuteNonQuery();
                conn.Close();
            }
        }
        catch
        {
            this.Response.Redirect("Default.aspx");
        }



    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Session["forward"] = "content.aspx?articleid=" + Convert.ToString(Session["articleid"]);
        if (Session["username"] == null || Session["username"].ToString() == "")
        {
            this.Response.Write(" <script> alert( '请先登录！'); </script> ");
            Session["flag"] = "true";
            this.Response.Redirect("Login.aspx");
        }
        else
            Response.Redirect("reply.aspx");
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Session["articleid"] = "";
        Response.Redirect("ban.aspx");
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