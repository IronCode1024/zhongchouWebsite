using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using MODELS;
using System.Data;

namespace DAL
{
    public class AdminShowUserInfoDal
    {
        AdminShowUserInfoDal asuib = new AdminShowUserInfoDal();
        /// <summary>
        /// 显示用户信息到首页  用户GridView
        /// </summary>
        /// <returns></returns>
        public DataSet gridViewDataShow()
        {
            string Sql = "select Id,UserName,UserEmail,UserPassword,UserHeadPortrait,State from UserInfoTb";
            return DBHelper.GetTable(Sql);
        }
    }
}
