using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using Wuqi.Webdiyer;//分页
using MODELS;
using BLL;
using BLL.AdministratorsBll;

namespace zhongchouWeb.Administrators
{
    public partial class ProjectInfoAdmin : System.Web.UI.Page
    {
        AdminProjectInfoBll apib = new AdminProjectInfoBll();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                getProDataShowPage();
            }
        }

        void getProDataShowPage()
        {
            //DataSet ds = auib.getDataShowPage();
            //this.Repeater1.DataSource = ds.Tables["zcDB"];
            //this.Repeater1.DataBind();
            //int totalOrders = (int)auib.getDataShowPage(CommandType.StoredProcedure, "P_GetOrderNumber");
            //AspNetPager1.RecordCount = totalOrders;

            int totalOrders = apib.getExecuteScalar("GetProjectOrderNumber"); //GetOrderNumber储存过程
            AspNetPager1.RecordCount = totalOrders;
            Repeater1.DataSource = apib.Bind("GetProjectPagedOrders", AspNetPager1.StartRecordIndex, AspNetPager1.EndRecordIndex); //GetPagedOrders储存过程
            Repeater1.DataBind();
        }

        protected void AspNetPager1_PageChanged(object sender, EventArgs e)
        {
            getProDataShowPage();
        }
    }
}