using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Web.Configuration;
public partial class aspx_Fatie : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Session["back"] = "Fatie.aspx";
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string savapath = null;
        System.DateTime currenttime = new DateTime();
        currenttime = System.DateTime.Now;
        string connectionString = WebConfigurationManager.ConnectionStrings["forumConnectionString"].ConnectionString;
        SqlConnection conn = new SqlConnection(connectionString);
        SqlCommand cmd = new SqlCommand("select img from forum_user where username='"+Convert.ToString(Session["username"])+"'",conn);
        conn.Open();
        SqlDataReader drr = cmd.ExecuteReader();
        if (drr.Read())
        {
            savapath = drr.GetString(0);
        }
        conn.Close();
        SqlCommand cmd0 = new SqlCommand("select * from forum_article", conn);
        conn.Open();
        SqlDataReader dr = cmd0.ExecuteReader();
        int i = 1;
        while (dr.Read())
        {
            i++;
        }
        conn.Close();
        SqlCommand cmd1 = new SqlCommand("update forum_plate set titlenum=titlenum+1 where plateid='" + Convert.ToString(Session["plateid"]) + "'", conn);
        SqlCommand cmd2 = new SqlCommand("insert into forum_article values('" + this.TextBox1.Text + "','" + i + "','" + Convert.ToString(Session["plateid"]) + "','" + Convert.ToString(Session["username"]) + "',0,0,'" + Convert.ToString(Session["username"]) + "','" + this.TextBox2.Text + "','" + currenttime + "','"+savapath+"')", conn);
        conn.Open();
        cmd1.ExecuteNonQuery();
        cmd2.ExecuteNonQuery();
        conn.Close();
        this.Response.Redirect("ban.aspx");

    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        this.Response.Redirect("ban.aspx");
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