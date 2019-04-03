using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using MODELS;
using System.Data;
using System.Data.SqlClient;

namespace DAL
{
    public class ClassificationProjectDAL
    {
        //显示数据库中的类型
        public DataSet show1()
        {
            String sql = "select distinct ProjectType from ProjectTb";
            DataSet ds = DBHelper.GetTable(sql);
            return ds;
        }
        public DataSet show2(ProjectTbS pt)
        {
            string type = pt.ProjectType;
            int day = pt.ProjectTargetDays;
            decimal money = pt.TargetAmountOfMoney;
            string sql = "select top 20 ImageID,ImageUrl,Pi.UserID,Pt.UserID,Pi.ProjectID,ProjectName,ProjectOverview,ProjectType,ProjectTargetDays,TargetAmountOfMoney,AlreadyRaisedMoney,NumberOfProjectSupport,ReleaseStatus,ReleaseDate from ProjectImageTb Pi,ProjectTb Pt where Pt.ProjectID=Pi.ProjectID and Pt.UserID=Pi.UserID ";
            if (type == "" && day == 0 && money == 0)
            {
                sql = string.Format("select top 20 ImageID,ImageUrl,Pi.UserID,Pt.UserID,Pi.ProjectID,ProjectName,ProjectOverview,ProjectType,ProjectTargetDays,TargetAmountOfMoney,AlreadyRaisedMoney,NumberOfProjectSupport,ReleaseStatus,ReleaseDate from ProjectImageTb Pi,ProjectTb Pt where Pt.ProjectID=Pi.ProjectID and Pt.UserID=Pi.UserID ");
            }
            else if (type != "" || day != 0 || money != 0)
            {
                string sql2 = sql;
                if (type != "")
                {
                    sql = sql2 + ("and ProjectType like '%" + type + "%'");
                }

                if (day != 0)
                {
                    if (day == 1)
                    {
                        sql = sql2 + ("and ProjectTargetDays>80 ");
                    }
                    else if (day == 2)
                    {
                        sql = sql2 + ("and ProjectTargetDays<80 ");
                    }
                }
                if (money != 0)
                {
                    if (money == 1)
                    {
                        sql = sql2 + ("and TargetAmountOfMoney>10000 ");
                    }
                    else if (money == 2)
                    {
                        sql = sql2 + ("and TargetAmountOfMoney<10000  ");
                    }
                }
            }
            DataSet ds = DBHelper.GetTable(sql);
            return ds;

        }



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

    }
}
