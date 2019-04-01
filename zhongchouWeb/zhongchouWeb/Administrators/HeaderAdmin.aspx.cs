using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace zhongchouWeb.Administrators
{
    public partial class HeaderAdmin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Session["AdminLogins"] != null && Session["AdminLogins"].ToString() != "")
                {
                    this.notlogins.Style.Add("display", "none");
                    this.logins.Style.Add("display", "block");
                    this.Label1.Text = Session["AdminNames"].ToString();
                }
            }
        }


        /// <summary>
        /// 登出
        /// </summary>
        /// <returns></returns>
        public bool AdminLoginOuts(bool b)
        {
            if (b == true)
            {
                Session["AdminLogins"] = null;
                return true;
            }
            else
            {
                Response.Write("<script>alert('vzbz')</script>");
                return false;
            }
        }
    }
}