using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Web.Configuration;
public partial class aspx_Login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
       
    }
    protected void Login_button_Click1(object sender, EventArgs e)
    {
        if (String.IsNullOrEmpty(verifyCode.Text) ||
           Session["verifyCode"] == null ||
           Session["verifyCode"].ToString().Trim().ToUpper() != verifyCode.Text.Trim().ToUpper())
        {
            verifyCode_label.Visible = true;
            return;
        }
        verifyCode_label.Visible = false;
        if (Page.IsValid)
        {
            if (IsUserIdentify())
            {
                Session["first"] = "first";
                Session["username"] = this.User.Text;
                string back=Convert.ToString(Session["back"]);
                this.Response.Redirect(back);
                /*
                if (this.User.Text.Trim().ToString() == "admin")
                {
                    Session["username"] = this.User.Text;
                    this.Response.Redirect("admin.aspx");
                }
                else
                {
                    Session["username"] = this.User.Text;
                    this.Response.Redirect("Default.aspx");
                }*/
            }
            else
            {
                this.error_label.Visible = true;
            }
        }
    }
    private bool IsUserIdentify()
    {
        string connectionString = WebConfigurationManager.ConnectionStrings["forumConnectionString"].ConnectionString;
        SqlConnection conn = new SqlConnection(connectionString);
        conn.Open();

        string sql = "select username from forum_user where username = '" + this.User.Text + "' and password = '" + this.User_psw.Text + "'";
        SqlCommand cmd = new SqlCommand(sql, conn);
        SqlDataReader reader = cmd.ExecuteReader();
        if (reader.Read())
        {

            return true;
        }
        else
        {
            return false;
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
}