using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;
using MODELS;

namespace DAL
{
    public class IndexDal
    {
        /// <summary>
        /// 首页图片列表展示 repeater
        /// </summary>
        /// <returns></returns>
        public DataSet getDataRepeater1ImgIndex()
        {
            string Sql = "select top 4 ImageID,ImageUrl,Pi.UserID,Pt.UserID,Pi.ProjectID,ProjectName,ProjectOverview,ProjectType,ProjectTargetDays,TargetAmountOfMoney,AlreadyRaisedMoney,NumberOfProjectSupport,ReleaseStatus,ReleaseDate from ProjectImageTb Pi,ProjectTb Pt where Pt.ProjectID=Pi.ProjectID and Pt.UserID=Pi.UserID";
            DataSet ds = DBHelper.GetTable(Sql);
            return ds;
        }

        /// <summary>
        /// 首页图片列表展示 repeater
        /// </summary>
        /// <returns></returns>
        public DataSet getDataRepeater2ImgIndex()
        {
            string Sql = "select ImageID,ImageUrl,Pi.UserID,Pt.UserID,Pi.ProjectID,ProjectName,ProjectOverview,ProjectType,ProjectTargetDays,TargetAmountOfMoney,AlreadyRaisedMoney,NumberOfProjectSupport,ReleaseStatus,ReleaseDate from ProjectImageTb Pi,ProjectTb Pt where Pt.ProjectID=Pi.ProjectID";
            DataSet ds = DBHelper.GetTable(Sql);
            return ds;
        }
    }
}
