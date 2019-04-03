using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using MODEL;
namespace DAL
{
    public class ProjectDal
    {
        /// <summary>
        /// 查询发起项目信息
        /// </summary>
        /// <param name="p"></param>
        /// <returns></returns>
        public  DataSet repeaterc1(Project p)
    {
        string sql = string.Format("select pt.ProjectID,pt.ProjectName,pt.ProjectTargetDays,cast(AlreadyRaisedMoney/TargetAmountOfMoney as NUMERIC(18,2))*100 as sum,pt.TargetAmountOfMoney,pt.ReleaseDate,pt.ReleaseStatus from ProjectTb pt,UserInfoTb ui,UserRelatedItems u,ProjectImageTb pit where pt.UserID=ui.Id and pt.ProjectID=pit.ProjectID and u.UserEmail=ui.UserEmail and pt.UserEmail='{0}' and pt.ProjectID=u.ProjectsInitiated", p.UserEmail);
        DataSet ds = DBHelper.GetTable(sql);
        return ds;
    }
        /// <summary>
        /// 查询支持项目信息
        /// </summary>
        /// <param name="p"></param>
        /// <returns></returns>
        public DataSet repeaterc2(Project p)
        {
            string sql = string.Format("select pt.ProjectID,pt.ProjectName,pt.ProjectTargetDays,cast(AlreadyRaisedMoney/TargetAmountOfMoney as NUMERIC(18,2))*100 as sum,pt.TargetAmountOfMoney,pt.ReleaseDate,pt.ReleaseStatus from ProjectTb pt,UserInfoTb ui,UserRelatedItems u,ProjectImageTb pit where pt.UserID=ui.Id and pt.ProjectID=pit.ProjectID and u.UserEmail=ui.UserEmail and pt.UserEmail='{0}' and pt.ProjectID=u.FavoriteProjects", p.UserEmail);
            DataSet ds = DBHelper.GetTable(sql);
            return ds;
        }
        /// <summary>
        /// 查询喜欢项目信息
        /// </summary>
        /// <param name="p"></param>
        /// <returns></returns>
        public DataSet repeaterc3(Project p)
        {
            string sql = string.Format("select pt.ProjectID,pt.ProjectName,pt.ProjectTargetDays,cast(AlreadyRaisedMoney/TargetAmountOfMoney as NUMERIC(18,2))*100 as sum,pt.TargetAmountOfMoney,pt.ReleaseDate,pt.ReleaseStatus from ProjectTb pt,UserInfoTb ui,UserRelatedItems u,ProjectImageTb pit where pt.UserID=ui.Id and pt.ProjectID=pit.ProjectID and u.UserEmail=ui.UserEmail and pt.UserEmail='{0}' and pt.ProjectID=u.ProjectsSupported", p.UserEmail);
            DataSet ds = DBHelper.GetTable(sql);
            return ds;
        }
        /// <summary>
        /// 查询用户信息
        /// </summary>
        /// <returns></returns>
        public DataSet c() 
        {
            string sql = "select UserName,UserEmail,PersonalizedSignature,RegistrationTime,UserAddress,UserHeadPortrait from UserInfoTb";
            DataSet ds = DBHelper.GetTable(sql);
            return ds;
        }
        /// <summary>
        /// 计数
        /// </summary>
        /// <returns></returns>
        public DataSet cc1(Project p) 
        {
            string sql = string.Format("select COUNT(0) from ProjectTb pt,UserInfoTb ui,UserRelatedItems u,ProjectImageTb pit where pt.UserID=ui.Id and pt.ProjectID=pit.ProjectID and u.UserEmail=ui.UserEmail and pt.UserEmail='{0}' and pt.ProjectID=u.ProjectsInitiated", p.UserEmail);
            DataSet ds = DBHelper.GetTable(sql);
            return ds;
        }
        public DataSet cc2(Project p)
        {
            string sql = string.Format("select COUNT(0) from ProjectTb pt,UserInfoTb ui,UserRelatedItems u,ProjectImageTb pit where pt.UserID=ui.Id and pt.ProjectID=pit.ProjectID and u.UserEmail=ui.UserEmail and pt.UserEmail='{0}' and pt.ProjectID=u.FavoriteProjects", p.UserEmail);
            DataSet ds = DBHelper.GetTable(sql);
            return ds;
        }
        public DataSet cc3(Project p)
        {
            string sql = string.Format("select COUNT(0) from ProjectTb pt,UserInfoTb ui,UserRelatedItems u,ProjectImageTb pit where pt.UserID=ui.Id and pt.ProjectID=pit.ProjectID and u.UserEmail=ui.UserEmail and pt.UserEmail='{0}' and pt.ProjectID=u.ProjectsSupported", p.UserEmail);
            DataSet ds = DBHelper.GetTable(sql);
            return ds;
        }
     
    }
}
