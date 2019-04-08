using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Wuqi.Webdiyer;//分页
using BLL;
using MODELS;
using System.Data;
namespace zhongchouWeb.Views
{
    public partial class BrowseProject : System.Web.UI.Page
    {
        ClassificationProjectBLL bb = new ClassificationProjectBLL();
        ProjectTbS pt = new ProjectTbS();

        static string ProjectType = "0";//类型
        static int ProjectTargetDays = 0;//天数 
        static decimal TargetAmountOfMoney = 0; //金额
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                show();//类型加载
                show2();//按条件加载数据   
            }
        }
        //显示查询的条件
        void show()
        {
            DataSet ds = bb.show1();
            this.Repeater1.DataSource = ds.Tables["zcDB"];
            this.Repeater1.DataBind();
        }
        //显示项目
        void show2()
        {
            //getProDataShowPage();
            ProjectTbS pt = new ProjectTbS();
            pt.ProjectType = ProjectType;
            pt.ProjectTargetDays = ProjectTargetDays;
            pt.TargetAmountOfMoney = TargetAmountOfMoney;
            DataSet ds = bb.show2(pt);
            this.Repeater2.DataSource = ds.Tables["zcDB"];
            this.Repeater2.DataBind();
        }
        //疯哥的获得时间
        public int GetDateTimeSpan(DateTime dt)
        {
            return Math.Abs((DateTime.Now - dt).Days);
        }
        protected void Repeater1_ItemCommand(object source, RepeaterCommandEventArgs e)
        {
            ProjectType = e.CommandArgument.ToString();
            show2();

        }
        // 类型点击 全部
        protected void Button8_Click(object sender, EventArgs e)
        {
            ProjectType = "0";//类型
            ProjectTargetDays = 0;//天数 
            TargetAmountOfMoney = 0; //金额
            show2();

        }
        // 金额 点击全部
        protected void Button2_Click(object sender, EventArgs e)
        {
            ProjectType = "0";//类型
            ProjectTargetDays = 0;//天数 
            TargetAmountOfMoney = 0; //金额
            show2();
        }
        // 天数 点击全部
        protected void Button5_Click(object sender, EventArgs e)
        {
            ProjectType = "0";//类型
            ProjectTargetDays = 0;//天数 
            TargetAmountOfMoney = 0; //金额
            show2();
        }
        // 金额 大于10000
        protected void Button3_Click(object sender, EventArgs e)
        {
            TargetAmountOfMoney = 1;//大于10000赋予1
            show2();
        }
        // 金额 小于10000
        protected void Button4_Click(object sender, EventArgs e)
        {
            TargetAmountOfMoney = 2;//小于10000赋予2
            show2();
        }
        // 天数 大于80
        protected void Button6_Click(object sender, EventArgs e)
        {
            ProjectTargetDays = 1;//天数大于80
            show2();
        }
        // 天数 小于80
        protected void Button7_Click(object sender, EventArgs e)
        {
            ProjectTargetDays = 2;//天数大于80
            show2();
        }

        protected void AspNetPager1_PageChanged(object sender, EventArgs e)
        {
            //getProDataShowPage();
        }

        void getProDataShowPage()
        {
            //DataSet ds = auib.getDataShowPage();
            //this.Repeater1.DataSource = ds.Tables["zcDB"];
            //this.Repeater1.DataBind();
            //int totalOrders = (int)auib.getDataShowPage(CommandType.StoredProcedure, "P_GetOrderNumber");
            //AspNetPager1.RecordCount = totalOrders;

            //int totalOrders = bb.getExecuteScalar("GetProjectOrderNumber"); //GetOrderNumber储存过程
            //AspNetPager1.RecordCount = totalOrders;
            //Repeater2.DataSource = bb.Bind("GetProjectPagedOrders", AspNetPager1.StartRecordIndex, AspNetPager1.EndRecordIndex); //GetPagedOrders储存过程
            //Repeater2.DataBind();
        }
    }
}