using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using DAL;
using MODELS;
using System.Data;

namespace BLL
{
    public class AdminInfoBll
    {
        AdminInfos ai = new AdminInfos();
        AdminInfoDal ad = new AdminInfoDal();
        /// <summary>
        /// 管理员登录
        /// </summary>
        /// <param name="Name"></param>
        /// <param name="Pwds"></param>
        /// <returns></returns>
        public Object getAdminLogins(AdminInfos admin)
        {
            object rows = ad.getAdminLogins(admin);
            return rows;
        }
    }
}
