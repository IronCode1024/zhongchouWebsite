using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;
using MODELS;
using DAL;
using DAL.AdministratorsDal;

namespace BLL.AdministratorsBll
{
    public class AdminProjectInfoBll
    {
        private AdminProjectInfoDal apid;
        public AdminProjectInfoBll()
        {
            apid = new AdminProjectInfoDal();
        }
        //public DataSet getDataShowPage()
        //{
        //    return apid.getDataShowPage();
        //}


        public DataTable Bind(string cmdText, int startIndex, int endIndex)
        {
            return apid.Bind(cmdText, startIndex, endIndex);
        }

        public int getExecuteScalar(string cmdText)
        {
            return apid.getExecuteScalar(cmdText);
        }
    }
}
