using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;
using MODELS;
using MODELS.Administrators;//管理员
using DAL;
using DAL.AdministratorsDal;//管理员

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




        public DataSet getProjectReleaseStatus(int ProID)//查询项目发布状态
        {
            return apid.getProjectReleaseStatus(ProID);
        }




        public int UpdateProjectReleaseStatus(AdminProjectInfos ProInfo)
        {
            return apid.UpdateProjectReleaseStatus(ProInfo);
        }

    }
}
