using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data.SqlClient;
using MODELS;

namespace DAL
{
    public class SupportProjectDal
    {
        public int Support(SupportProject sp)
        {
            string Sql = @"update ProjectTb set AlreadyRaisedMoney=AlreadyRaisedMoney+@a,NumberOfProjectSupport=NumberOfProjectSupport+1 where ProjectID=@b";
            SqlParameter[] prm = new SqlParameter[]{
                            new SqlParameter("@a",sp.SupportProjectsMoney),
                            new SqlParameter("@b",sp.ProjectID)
                        };
            return DBHelper.ExecuteNonQuery(Sql,prm);
        }
    }
}
