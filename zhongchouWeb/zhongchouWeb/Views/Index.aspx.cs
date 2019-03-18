using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using MODELS;
using BLL;

namespace zhongchouWeb.Views
{
    public partial class Index : System.Web.UI.Page
    {
        UserInfoBll ub = new UserInfoBll();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                RepeaterDataImgShow();
                
            }
        }

        void RepeaterDataImgShow()
        { 
            DataSet ds=ub.getDataSetImg();
            this.Repeater1.DataSource = ds.Tables["zcDB"];
            this.Repeater1.DataBind();
        }
    }
}