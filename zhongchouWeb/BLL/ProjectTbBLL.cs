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
    public class ProjectTbBLL
    {
        ProjectTbDAL ptd;
        public ProjectTbBLL( )
        {
            ptd = new ProjectTbDAL();
        }
        //查询项目表
        public DataSet gettable(int ProjectID)
        {
            DataSet ds = ptd.gettable(ProjectID);
            return ds;
        }
        //修改
        public int update(ProjectTbS pt)
        {
            int i = ptd.update(pt);
            return i;
        }
        //修改
        public int update2(ProjectImageTbS pi)
        {
            int i = ptd.update2(pi);
            return i;
        }
        //新增
        public int insert(BankTbS bt)
        {
            int i = ptd.insert(bt);
            return i;
        }

    }
}
