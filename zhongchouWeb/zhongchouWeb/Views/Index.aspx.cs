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
        IndexBll ibl = new IndexBll();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                IndexRepeater1DataImgShow();
                IndexRepeater2DataImgShow();
            }
        }
        /// <summary>
        /// 众筹精选Repeater1
        /// </summary>
        void IndexRepeater1DataImgShow()
        {
            DataSet ds = ibl.getDataRepeater1ImgIndex();
            this.Repeater1.DataSource = ds.Tables["zcDB"];
            this.Repeater1.DataBind();
        }
        /// <summary>
        /// 热门项目Repeater2
        /// </summary>
        void IndexRepeater2DataImgShow()
        {
            DataSet ds = ibl.getDataRepeater2ImgIndex();
            this.Repeater2.DataSource = ds.Tables["zcDB"];
            this.Repeater2.DataBind();
        }

        /// <summary>
        /// 计算时间差
        /// </summary>
        /// <param name="dt"></param>
        /// <returns></returns>
        public int GetDateTimeSpan(DateTime dt)
        {
            return Math.Abs((DateTime.Now - dt).Days);
        }
    }
}