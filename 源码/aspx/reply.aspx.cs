using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Web.Configuration;
public partial class aspx_reply : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Session["back"] = "reply.aspx";
        if (!IsPostBack)
        {
            //string connectionString = WebConfigurationManager.ConnectionStrings["forumConnectionString"].ConnectionString;
             string connectionString = WebConfigurationManager.ConnectionStrings["forumConnectionString"].ConnectionString;          
            SqlConnection conn = new SqlConnection(connectionString);
            conn.Open();
            SqlCommand cmd = new SqlCommand("select * from forum_article where articleid='" + Session["articleid"] + "'", conn);
            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.Read())
            {
                this.TextBox1.Text = dr.GetString(0);
            }
            this.TextBox1.ReadOnly = true;

        }

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        System.DateTime currenttime = new DateTime();
        currenttime = System.DateTime.Now;
        string connectionString = WebConfigurationManager.ConnectionStrings["forumConnectionString"].ConnectionString;       
        SqlConnection conn = new SqlConnection(connectionString);
        SqlCommand cmd1 = new SqlCommand("update forum_article set seenum=seenum+1,replynum=replynum+1,latest='" + Convert.ToString(Session["username"]) + "' where articleid='" + Convert.ToString(Session["articleid"]) + "'", conn);
        SqlCommand cmd2 = new SqlCommand("update forum_plate set cardnum=cardnum+1,latest='" + Convert.ToString(Session["username"]) + "' where plateid='" + Convert.ToString(Session["ban"]) + "'", conn);
        conn.Open();
        cmd1.ExecuteNonQuery();
        cmd2.ExecuteNonQuery();
        conn.Close();
        SqlCommand cmd3 = new SqlCommand("select replynum from forum_article where articleid='" + Convert.ToString(Session["articleid"]) + "'", conn);
        conn.Open();
        SqlDataReader dr3 = cmd3.ExecuteReader();

        int i = 0;
        if (dr3.Read())
        {
            i = dr3.GetInt32(0) + 1;
        }
        conn.Close();
        SqlCommand cmd4 = new SqlCommand("insert into forum_reply values('" + Session["articleid"].ToString() + "','" + i + "','" + this.TextBox2.Text + "','" + currenttime + "','" + Session["username"].ToString() + "','" + this.TextBox1.Text + "')", conn);
        conn.Open();
        cmd4.ExecuteNonQuery();
        conn.Close();
        string url = Convert.ToString(Session["forward"]);
        this.Response.Redirect(url);
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        string url = Convert.ToString(Session["forward"]);
        this.Response.Redirect(url);
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