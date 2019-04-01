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
        AdminShowIndexBll asuib = new AdminShowIndexBll();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                gridViewDataShow();//用户信息
                projectGridViewShow();//项目信息
                userCommentaryGridViewShow();//评论信息
            }
        }


        void gridViewDataShow()
        {
            DataSet ds = asuib.gridViewDataShow();
            this.UserInfoGridView.DataSource=ds.Tables["zcDB"];
            this.UserInfoGridView.DataBind();
        }

        void projectGridViewShow()
        {
            DataSet ds = asuib.projectGridViewShow();
            this.ProjectGridView.DataSource=ds.Tables["zcDB"];
            this.ProjectGridView.DataBind();
        }

        void userCommentaryGridViewShow()
        {
            DataSet ds = asuib.userCommentaryGridViewShow();
            this.UserCommentaryGridView.DataSource = ds.Tables["zcDB"];
            this.UserCommentaryGridView.DataBind();
        }





    }
}