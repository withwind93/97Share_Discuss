using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Web.Configuration;
public partial class aspx_Register : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (Page.IsValid)
        {
            if (UserValid())
            {
                /**/
                 string connectionString = WebConfigurationManager.ConnectionStrings["forumConnectionString"].ConnectionString;
                SqlConnection conn = new SqlConnection(connectionString);
                conn.Open();
                /**/

                string sql = "insert into forum_user(username,password,email) values('" + Convert.ToString(this.User.Text) + "','" + Convert.ToString(this.password.Text) + "','" + Convert.ToString(this.Email.Text) + "')";
                SqlCommand cmd = new SqlCommand(sql, conn);
                try
                {
                    cmd.ExecuteNonQuery();
                    this.Response.Write("<script language=javascript>alert('恭喜！注册成功！');location.href='Default.aspx';</script>");
                    //this.Response.Redirect("Default.aspx");
                }
                catch
                {

                    this.Response.Write("<script language=javascript>alert('注册失败，请重新注册！');location.href='Register.aspx';</script>");
                }
                finally
                {
                    cmd.Dispose();
                    conn.Close();
                }
                this.User_Exist.Visible = false;
                conn.Close();
            }
            else
            {
                this.User_Exist.Visible = true;
            }
        }
    }
    private bool UserValid()
    {
        /**/
         string connectionString = WebConfigurationManager.ConnectionStrings["forumConnectionString"].ConnectionString;
        SqlConnection conn = new SqlConnection(connectionString);
        conn.Open();
        /**/
        string sql = "select * from forum_user where username = '" + this.User.Text + "'";
        SqlCommand cmd = new SqlCommand(sql, conn);
        SqlDataReader reader = cmd.ExecuteReader();
        if (reader.Read())
        {
            this.Response.Write("<script language=javascript>alert('用户名已经存在，请重新注册！');location.href='Register.aspx';</script>");
            conn.Close();
            return false;
        }
        conn.Close();
        return true;
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