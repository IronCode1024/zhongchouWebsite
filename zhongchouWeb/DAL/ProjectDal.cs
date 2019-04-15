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
        string sql = string.Format("select ProjectID,ProjectName,ProjectTargetDays,cast(AlreadyRaisedMoney/TargetAmountOfMoney as NUMERIC(18,2))*100 as sum,TargetAmountOfMoney,ReleaseDate,ReleaseStatus from ProjectTb pt,UserInfoTb ui,UserRelatedItems uri where uri.UserEmail=ui.UserEmail and pt.ProjectID=uri.ProjectsInitiated and uri.UserEmail='{0}'", p.UserEmail);
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
            string sql = string.Format("select ProjectID,ProjectName,ProjectTargetDays,cast(AlreadyRaisedMoney/TargetAmountOfMoney as NUMERIC(18,2))*100 as sum,TargetAmountOfMoney,ReleaseDate,ReleaseStatus from ProjectTb pt,UserInfoTb ui,UserRelatedItems uri where uri.UserEmail=ui.UserEmail and pt.ProjectID=uri.ProjectsSupported and uri.UserEmail='{0}'", p.UserEmail);
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
            string sql = string.Format("select ProjectID,ProjectName,ProjectTargetDays,cast(AlreadyRaisedMoney/TargetAmountOfMoney as NUMERIC(18,2))*100 as sum,TargetAmountOfMoney,ReleaseDate,ReleaseStatus from ProjectTb pt,UserInfoTb ui,UserRelatedItems uri where uri.UserEmail=ui.UserEmail and pt.ProjectID=uri.FavoriteProjects and uri.UserEmail='{0}'", p.UserEmail);
            DataSet ds = DBHelper.GetTable(sql);
            return ds;
        }
        /// <summary>
        /// 查询用户信息
        /// </summary>
        /// <returns></returns>
        public DataSet c(string email) 
        {
            string sql = string.Format("select UserName,UserEmail,PersonalizedSignature,RegistrationTime,UserAddress,UserHeadPortrait from UserInfoTb where UserEmail='{0}'", email);
            DataSet ds = DBHelper.GetTable(sql);
            return ds;
        }
        /// <summary>
        /// 计数
        /// </summary>
        /// <returns></returns>
        public DataSet cc1(Project p) 
        {
            string sql = string.Format("select COUNT(0) from ProjectTb pt,UserInfoTb ui,UserRelatedItems uri where uri.UserEmail=ui.UserEmail and pt.ProjectID=uri.ProjectsInitiated and uri.UserEmail='{0}'", p.UserEmail);
            DataSet ds = DBHelper.GetTable(sql);
            return ds;
        }
        public DataSet cc2(Project p)
        {
            string sql = string.Format("select COUNT(0) from ProjectTb pt,UserInfoTb ui,UserRelatedItems uri where uri.UserEmail=ui.UserEmail and pt.ProjectID=uri.ProjectsSupported and uri.UserEmail='{0}'", p.UserEmail);
            DataSet ds = DBHelper.GetTable(sql);
            return ds;
        }
        public DataSet cc3(Project p)
        {
            string sql = string.Format("select COUNT(0) from ProjectTb pt,UserInfoTb ui,UserRelatedItems uri where uri.UserEmail=ui.UserEmail and pt.ProjectID=uri.FavoriteProjects and uri.UserEmail='{0}'", p.UserEmail);
            DataSet ds = DBHelper.GetTable(sql);
            return ds;
        }
     
    }
}
