using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using DAL;
using MODELS;
using System.Data;
using DAL.AdministratorsDal;

namespace BLL
{
    public class AdminShowIndexBll
    {
        AdminShowIndexDal asuid = new AdminShowIndexDal();
        /// <summary>
        /// 显示用户信息到首页  用户GridView
        /// </summary>
        /// <returns></returns>
        public DataSet gridViewDataShow()
        {
            return asuid.gridViewDataShow();
        }


        /// <summary>
        /// 显示项目信息  项目ProjectGridView
        /// </summary>
        /// <returns></returns>
        public DataSet projectGridViewShow()
        {
            return asuid.projectGridViewShow();
        }



        
            /// <summary>
        /// 显示用户评论信息  项目UserCommentaryGridViewShow
        /// </summary>
        /// <returns></returns>
        public DataSet userCommentaryGridViewShow()
        {
            return asuid.userCommentaryGridViewShow();
        }
    }
}
