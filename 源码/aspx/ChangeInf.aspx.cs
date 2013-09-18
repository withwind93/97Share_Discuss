using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Web.Configuration;
public partial class aspx_ChangeInf : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Session["back"] = "ChangeInf.aspx";
        if (Session["username"] != null && Convert.ToString(Session["username"]) != "")
        {
            this.username.Text = Convert.ToString(Session["username"]);
            return;
        }
        else
        {

        }
        /*未登录*/
        Response.Redirect("Login.aspx");
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
            if (IsChange())
            {
                this.Response.Write("<script language=javascript>alert('修改成功！返回主页。');location.href='Default.aspx';</script>");
            }
            else
            {
                this.Response.Write("<script language=javascript>alert('修改失败！');location.href='ChangePwd.aspx';</script>");
            }
        }
    }
    private bool IsChange()
    {

        string savePath = "";
        Boolean fileOK = false;
        if (this.FileUpload.HasFile)
        {
            string fileExtension = System.IO.Path.GetExtension(FileUpload.FileName).ToLower();
            string[] allowedExtensions = { ".gif", ".png", ".jpeg", ".jpg" };
            for (int i = 0; i < allowedExtensions.Length; i++)
            {
                if (fileExtension == allowedExtensions[i])
                {
                    fileOK = true;
                }
            }
            if (fileOK)
            {

                string filename = Server.MapPath("~/images/");
                filename += FileUpload.FileName;
                savePath = filename;
                FileUpload.SaveAs(savePath);
                Page.Response.Write("<img src='" + savePath + "'>");
               
                string connectionString = WebConfigurationManager.ConnectionStrings["forumConnectionString"].ConnectionString;
                SqlConnection conn = new SqlConnection(connectionString);
                conn.Open();

                string sql = "update forum_user SET img='" + savePath + "',sex='" + this.sex.Text.ToString() + "',birthday='" + this.birthday.Text.ToString() + "',province='" + this.province.Text.ToString() + "',city='" + this.city.Text.ToString() + "',phone='" + this.phone.Text.ToString() + "' where username='" + Convert.ToString(Session["username"]) + "'";
                SqlCommand cmd = new SqlCommand(sql, conn);
                int sql_chang = cmd.ExecuteNonQuery();
                if (sql_chang >= 1)
                {
                    conn.Close();
                    return true;
                }
                else
                {
                    conn.Close();
                    return false;
                }

            }
            else
            {

                this.Response.Write("头像格式不对！");
                return false;
            }

        }
        else
        {
            Page.Response.Write("文件不存在,上传失败！");
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