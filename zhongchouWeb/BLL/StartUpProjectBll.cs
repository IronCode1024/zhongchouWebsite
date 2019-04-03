using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DAL;
using MODELS;
using System.Data;
namespace BLL
{
    public class StartUpProjectBll
    {
        StartUpProjectDal ptd;
        public StartUpProjectBll( )
        {
            ptd = new StartUpProjectDal();
        }
        //查询项目表
        public DataSet gettable(int ProjectID)
        {
            DataSet ds = ptd.gettable(ProjectID);
            return ds;
        }
        //修改
        public int update(StartUpProjects pt)
        {
            int i = ptd.update(pt);
            return i;
        }
        //修改
        public int update2(ProjectImageTb pi)
        {
            int i = ptd.update2(pi);
            return i;
        }
        //新增
        public int insert(BankTb bt)
        {
            int i = ptd.insert(bt);
            return i;
        }



        //新增项目信息
        public int Xzxmxx(StartUpProjects pt)
        {
            int i = ptd.XzXmxx(pt);
            return i;
        }

    }
}
