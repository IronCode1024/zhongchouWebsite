using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using MODELS;
using DAL;

namespace BLL
{
    public class SupportProjectBll
    {
        SupportProjectDal spd = new SupportProjectDal();
        public int Support(SupportProject sp)
        {
            return spd.Support(sp);
        }
    }
}
