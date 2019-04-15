using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using Wuqi.Webdiyer;//分页
using MODELS;
using MODELS.Administrators;
using BLL;
using BLL.AdministratorsBll;

namespace zhongchouWeb.Administrators
{
    public partial class ProjectInfoAdmin : System.Web.UI.Page
    {
        AdminProjectInfos apis = new AdminProjectInfos();
        AdminProjectInfoBll apib = new AdminProjectInfoBll();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                this.bgLayer.Style.Add("display", "none");//隐藏修改编辑弹框背景遮挡层
                this.ProjectEditsBox.Style.Add("display", "none");//隐藏修改编辑弹框
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

        static int ProID;
        protected void Repeater1_ItemCommand(object source, RepeaterCommandEventArgs e)
        {
            if (e.CommandName == "Editbtns")
            {
                this.DropDownList1.Items.Clear();
                //Response.Redirect("ProjectInfoAdmin.aspx");
                ProID = Convert.ToInt32(e.CommandArgument);
                DataSet ds = apib.getProjectReleaseStatus(ProID);
                DataTable dt = ds.Tables["zcDB"];
                this.TextBox1.Text = dt.Rows[0]["ProjectID"].ToString();
                this.DropDownList1.Items.Add(dt.Rows[0]["ReleaseStatus"].ToString());
                this.DropDownList1.Items.Add("发布中");
                this.DropDownList1.Items.Add("已成功");
                this.DropDownList1.Items.Add("已失败");
                this.DropDownList1.Items.Add("冻结项目");
                //ClientScript.RegisterStartupScript(Page.GetType(), "", "<script>ProjectEditsBoxShow()</script>");


                this.bgLayer.Style.Add("display", "block");//显示修改编辑弹框背景遮挡层
                this.ProjectEditsBox.Style.Add("display", "block");//显示修改编辑弹框
                
            }
            //else
            //{
            //    //Response.Write("<script>alert('成功dd')</script>");
            //}
        }


        /// <summary>
        /// 修改项目信息单击事件
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        protected void EditUpdatebtn_Click(object sender, EventArgs e)
        {
            apis.ProjectID = Convert.ToInt32(this.TextBox1.Text);
            apis.ReleaseStatus = this.DropDownList1.Text;
            int rows = apib.UpdateProjectReleaseStatus(apis);
            if (rows > 0)
            {
                this.bgLayer.Style.Add("display", "none");//隐藏修改编辑弹框背景遮挡层
                this.ProjectEditsBox.Style.Add("display", "none");//隐藏修改编辑弹框
                
                Response.Write("<script>alert('修改成功！')</script>");
               
                getProDataShowPage();
            }
            else
            {
                Response.Write("<script>alert('修改失败！')</script>");
            }
        }
    }
}