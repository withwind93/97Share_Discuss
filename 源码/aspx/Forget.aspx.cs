using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Web.Configuration;
public partial class aspx_Forget : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Session["back"] = "Forget.aspx";
    }
    protected void Login_button_Click(object sender, EventArgs e)
    {
        if (String.IsNullOrEmpty(verifyCode.Text) ||
          Session["verifyCode"] == null ||
          Session["verifyCode"].ToString().Trim().ToUpper() != verifyCode.Text.Trim().ToUpper())
        {
            verifyCode_label.Visible = true;
            return;
        }
        verifyCode_label.Visible = false;
        string mail = this.TextBox1.Text.Trim();
        string mail1 = null;
        string name = this.User.Text;
        string connectionString = WebConfigurationManager.ConnectionStrings["forumConnectionString"].ConnectionString;
        SqlConnection conn = new SqlConnection(connectionString);
        conn.Open();
        SqlCommand cmd = new SqlCommand("select email from forum_user where username='" + name + "'", conn);
        SqlDataReader dr = cmd.ExecuteReader();
        if (dr.Read())
        {
            mail1 = dr.GetString(0).Trim();
           
            conn.Close();
            if (mail1 == mail)
            {
                conn.Open();
                SqlCommand cmd1 = new SqlCommand("update forum_user set password='" + this.password.Text + "' where username='" + name + "'", conn);
                cmd1.ExecuteNonQuery();
                conn.Close();
                this.Response.Write("<script>alert('密码找回成功,返回首页');location.href='Default.aspx';</script>");

            }
            else
            {
                this.Response.Write("<script>alert('电子邮箱不正确！');</script>");
            }
        }
        else
        {
            this.Response.Write("<script>alert('用户名不存在！');</script>");
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