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
        protected void Page_Load(object sender, EventArgs e)
        {

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
            object rows = ub.getLogins(Name,Pwds);
            if (Convert.ToInt32(rows) > 0)
            {
                //Response.Write("<script>alert('登录成功')</script>");
                Response.Redirect("Index.aspx");
            }
            else
            {
                Response.Write("<script>alert('登录失败')</script>");
            }
        }
    }
}