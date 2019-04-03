using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace MODELS.Administrators
{
    public class AdminProjectInfos
    {
        public int ProjectID { get; set; }
        public int UserID { get; set; }
        public string UserEmail { get; set; }
        public string ProjectType { get; set; }
        public string ProjectName { get; set; }
        public int ProjectTargetDays { get; set; }
        public string ProjectOverview { get; set; }
        public string ProjectDetailedPictures { get; set; }
        public double TargetAmountOfMoney { get; set; }
        public double AlreadyRaisedMoney { get; set; }
        public int NumberOfProjectSupport { get; set; }
        public string ReleaseStatus { get; set; }
        public DateTime ReleaseDate { get; set; } 
    }
}
