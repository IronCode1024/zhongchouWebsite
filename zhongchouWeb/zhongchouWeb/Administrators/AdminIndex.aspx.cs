using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using MODELS;
using BLL;

namespace zhongchouWeb.Administrators
{
    public partial class AdminIndex : System.Web.UI.Page
    {
        AdminInfos ai = new AdminInfos();
        AdminInfoBll ab = new AdminInfoBll();
        AdminShowUserInfoBll asuib = new AdminShowUserInfoBll();
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
                gridViewDataShow();
            }
        }


        void gridViewDataShow()
        {
            DataSet ds = asuib.gridViewDataShow();
            this.UserInfoGridView1.DataSource=ds.Tables["zcDB"];
            this.UserInfoGridView1.DataBind();
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