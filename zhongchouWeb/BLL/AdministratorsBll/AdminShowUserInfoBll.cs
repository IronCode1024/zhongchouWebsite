using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using DAL;
using MODELS;
using System.Data;

namespace BLL
{
    public class AdminShowUserInfoBll
    {
        AdminShowUserInfoDal asuid = new AdminShowUserInfoDal();
        /// <summary>
        /// 显示用户信息到首页  用户GridView
        /// </summary>
        /// <returns></returns>
        public DataSet gridViewDataShow()
        {
            return asuid.gridViewDataShow();
        }
    }
}
