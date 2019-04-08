using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using MODELS;
using BLL;

namespace zhongchouWeb.Views
{
    public partial class Login : System.Web.UI.Page
    {
        UserInfo ui = new UserInfo();
        UserInfoBll ub = new UserInfoBll();

        AdminInfos ai = new AdminInfos();
        AdminInfoBll ab = new AdminInfoBll();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                //this.TextBox1.Text = Response.Cookies["Login"]["Logins"];
            }
        }
        /// <summary>
        /// 登录方法
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        protected void Button1_Click(object sender, EventArgs e)
        {
            string Name = this.TextBox1.Text;
            string Pwds = this.TextBox3.Text;
            if (this.TextBox1.Text == "Admin")
            {
                ai.AdminName = Name;
                ai.AdminPassword = Pwds;
                object rows = ab.getAdminLogins(ai);
                if (Convert.ToInt32(rows) > 0)
                {
                    //DataSet ds = ub.getLoginState(Name);
                    //DataTable dt = ds.Tables["zcDB"];

                    Session["AdminNames"] = Name;//获取DataTable的第一行第一列

                    //Session["AdminHeadPortrait"] = dt.Rows[0][1].ToString();//获取用户头像路径

                    Session["AdminLogins"] = "登录成功";

                    Response.Redirect("~/Administrators/AdminIndex.aspx");
                }
                else
                {
                    Response.Write("<script>alert('登录失败')</script>");
                } 
            }
            else
            {
                object rows = ub.getLogins(Name, Pwds);
                if (Convert.ToInt32(rows) > 0)
                {
                    //Response.Write("<script>alert('登录成功')</script>");
                    DataSet ds = ub.getLoginState(Name);
                    DataTable dt = ds.Tables["zcDB"];


                    //HttpCookie UserNames = new HttpCookie("UserNames", dt.Rows[0][0].ToString());
                    //UserNames.Expires = DateTime.Now.AddMinutes(1);
                    //Response.Cookies.Add(UserNames);
                    Session["Id"] = dt.Rows[0]["Id"].ToString();
                    Session["UserNames"] = dt.Rows[0]["UserName"].ToString();//获取DataTable的第一行第一列


                    //HttpCookie UserHeadPortrait = new HttpCookie("UserHeadPortrait", dt.Rows[0][1].ToString());
                    //UserHeadPortrait.Expires = DateTime.Now.AddMinutes(1);
                    //Response.Cookies.Add(UserHeadPortrait);
                    Session["UserEmail"] = dt.Rows[0]["UserEmail"].ToString();
                    Session["UserHeadPortrait"] = dt.Rows[0]["UserHeadPortrait"].ToString();//获取用户头像路径
                    
                    //foreach (DataRow item in dt.Rows)
                    //{
                    //    Session["UserNames"] = item;
                    //Response.Write("<script>alert('" + Name + ":" + Session["UserHeadPortrait"].ToString() + "')</script>");
                    //}

                    Session["Logins"] = "登录成功";
                    //Response.Cookies["Logins"].Value = "登录成功";
                    //Response.Cookies["Logins"].Expires = DateTime.Now.AddMinutes(1);
                    Response.Redirect("Index.aspx");
                }
                else
                {
                    Response.Write("<script>alert('登录失败')</script>");
                } 
            }
        }
    }
}