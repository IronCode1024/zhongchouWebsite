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
            string Sql = "select top 4 ProjectID,ProjectCover,ProjectImageUrl,UserID,ProjectName,ProjectOverview,ProjectType,ProjectTargetDays,TargetAmountOfMoney,AlreadyRaisedMoney,NumberOfProjectSupport,PublicWelfare,ReleaseStatus,ProjectUpdateTime,ReleaseDate from ProjectTb where ReleaseStatus='发布中' order by  AlreadyRaisedMoney desc";
            DataSet ds = DBHelper.GetTable(Sql);
            return ds;
        }

        /// <summary>
        /// 首页图片列表展示 repeater
        /// </summary>
        /// <returns></returns>
        public DataSet getDataRepeater2ImgIndex()
        {
            string Sql = "select top 8 ProjectID,ProjectCover,ProjectImageUrl,UserID,ProjectName,ProjectOverview,ProjectType,ProjectTargetDays,TargetAmountOfMoney,AlreadyRaisedMoney,NumberOfProjectSupport,PublicWelfare,ReleaseStatus,ProjectUpdateTime,ReleaseDate from ProjectTb where ReleaseStatus='发布中' order by NumberOfProjectSupport desc";
            DataSet ds = DBHelper.GetTable(Sql);
            return ds;
        }
    }
}
