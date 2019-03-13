using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace zhongchouWeb.Views
{
    public partial class Login : System.Web.UI.Page
    {
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
            string NameOrEmail = Request["Name"];
            //string Email = Request["Email"];
            string Password = Request["Password"];

            if (NameOrEmail != "" && Password != "")
            {
                //string sql = "select count(0) from UserInfoTb where UserName=@name or UserEmail=@name and UserPassword=@pwd";
                //SqlParameter[] prm = new SqlParameter[]{
                //        new SqlParameter("@name",NameOrEmail),  //用户名
                //        new SqlParameter("@pwd",Password),    //密码
                //        new SqlParameter("@state","0"),   //默认登录状态为0    --不在线
                //    };

                //object rows = DBHelper.ExecuteScalar(sql, prm);
                //if (Convert.ToInt32(rows) > 0)
                //{
                //    Response.Write("<script>alert('登录成功')</script>");
                //}
                //else
                //{
                //    ViewBag.LoginErr = "*用户名或密码错误";
                //    Response.Write("<script>alert('登录失败')</script>");
                //}
            }
            else
            {
                //Response.Write("<script>alert('" + strErr + "')</script>");
            }
        }
    }
}