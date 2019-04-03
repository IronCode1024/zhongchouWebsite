using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using MODELS;
using MODELS.Administrators;
using System.Data.SqlClient;
using System.Data;

namespace DAL.AdministratorsDal
{
    public class AdminProjectInfoDal
    {
        //public DataSet getDataShowPage()
        //{
        //    string Sql = "select Id,UserName,UserEmail,UserPassword,UserHeadPortrait,State from UserInfoTb";
        //    return DBHelper.GetTable(Sql);
        //}

        public DataTable Bind(string cmdText, int startIndex, int endIndex)
        {
            DataTable dt = new DataTable();
            SqlParameter[] paras = new SqlParameter[]{
            new SqlParameter("@startIndex",startIndex),
            new SqlParameter("@endIndex",endIndex)
            };
            dt = DBHelper.ExecuteQueryPager(cmdText, paras, CommandType.StoredProcedure);
            return dt;
        }

        public int getExecuteScalar(string cmdText)
        {
            int order = (int)DBHelper.ExecuteScalarPager(cmdText, CommandType.StoredProcedure);
            return order;
        }




        public DataSet getProjectReleaseStatus(int ProID)
        {
            string Sql = string.Format("select ProjectID,ProjectCover,UserID,UserEmail,ProjectType,ProjectName,ProjectTargetDays,ProjectOverview,ProjectDetailedPictures,TargetAmountOfMoney,AlreadyRaisedMoney,NumberOfProjectSupport,ProjectAddress,ReleaseStatus,ProjectUpdateTime,ReleaseDate from ProjectTb where ProjectID='{0}'", ProID);
            return DBHelper.GetTable(Sql);
        }


        public int UpdateProjectReleaseStatus(AdminProjectInfos ProInfo)
        {
            string Sql = " update ProjectTb set ReleaseStatus=@ReleaseStatus where ProjectID=@ProjectID";
            SqlParameter[] prm = new SqlParameter[]{
                            new SqlParameter("@ReleaseStatus",ProInfo.ReleaseStatus),//发布状态
                            new SqlParameter("@ProjectID",ProInfo.ProjectID)
                        };
            return DBHelper.ExecuteNonQuery(Sql,prm);
        }


    }
}
