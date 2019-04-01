using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data.SqlClient;
using System.Data;
using MODELS;
using DAL;
using DAL.AdministratorsDal;


namespace BLL.AdministratorsBll
{
    public class AdminUserInfoBll
    {
        private AdminUserInfoDal auid;
        public AdminUserInfoBll()
        {
             auid = new AdminUserInfoDal();
        }
        public DataSet getDataShowPage()
        {
            return auid.getDataShowPage();
        }


        public DataTable Bind(string cmdText, int startIndex, int endIndex)
        {
            return auid.Bind(cmdText, startIndex, endIndex);
        }

        public int getExecuteScalar(string cmdText)
        {
            return auid.getExecuteScalar(cmdText);
        }
    }
}
