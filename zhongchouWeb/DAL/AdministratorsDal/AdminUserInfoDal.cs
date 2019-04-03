using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using MODELS;
using System.Data.SqlClient;
using System.Data;

namespace DAL.AdministratorsDal
{
    public class AdminUserInfoDal
    {
        public DataSet getDataShowPage()
        {
            string Sql = "select Id,UserName,UserSex,UserEmail,UserPassword,UserHeadPortrait,State from UserInfoTb";
            return DBHelper.GetTable(Sql);
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
