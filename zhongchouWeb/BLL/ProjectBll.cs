using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using MODEL;
using DAL;
namespace BLL
{
    public class ProjectBll
    {
        ProjectDal pd = new ProjectDal();
        public DataSet repeaterc1(Project p) 
        {
            return pd.repeaterc1(p);
        }
        public DataSet repeaterc2(Project p)
        {
            return pd.repeaterc2(p);
        }
        public DataSet repeaterc3(Project p)
        {
            return pd.repeaterc3(p);
        }
        public DataSet cc1(Project p)
        {
            return pd.cc1(p);
        }
        public DataSet cc2(Project p)
        {
            return pd.cc2(p);
        }
        public DataSet cc3(Project p)
        {
            return pd.cc3(p);
        }
        public DataSet c(string email)
        {
            return pd.c(email);
        }
    }
}
