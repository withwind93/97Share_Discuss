using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Web.Configuration;
using System.Web.UI.WebControls.Adapters;
public partial class aspx_ban : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Session["back"] = "ban.aspx";
        string plateid;
        plateid = Convert.ToString(Session["ban"]);
        string platenam = null;
        Session["plateid"] = plateid;
        string connectionString = WebConfigurationManager.ConnectionStrings["forumConnectionString"].ConnectionString;
        SqlConnection conn = new SqlConnection(connectionString);
        conn.Open();
        SqlCommand cmd0 = new SqlCommand("select platenam from forum_plate where plateid='" + plateid + "'", conn);
        SqlDataReader dr = cmd0.ExecuteReader();
        while (dr.Read())
        {
            platenam = dr.GetString(0);
            this.Label1.Text = platenam;
        }
        conn.Close();
        Session["seenumflag"] = "true";
    
        if (Convert.ToString(Session["username"]) == "admin")
        {         
            this.HyperLink.Visible = true;
            this.HyperLink.Text = "会员管理";   
            this.GridView1.Columns[5].Visible = true;
            this.GridView1.Columns[6].Visible = true;
        }
       
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (Convert.ToString(Session["username"]) == null || Convert.ToString(Session["username"]) == "")
        {
            Session["forward"] = "Fatie.aspx";
            this.Response.Redirect("Login.aspx");
        }
        else
        {
            this.Response.Redirect("Fatie.aspx");
        }
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
    protected void LinkButton_Click(object sender, EventArgs e)
    {
        if (Convert.ToString(Session["username"]) != null && Convert.ToString(Session["username"]) != "")
        {
            this.Response.Redirect("myarticle.aspx");
        }
        else
        {
            return;
        }
    }
}