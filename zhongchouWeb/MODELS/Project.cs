using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace MODEL
{
    public class Project
    {
        public int Id { get; set; }
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
    public class UserRelateditems 
    {
        public int RelatedID { get; set; }
        public string UserEmail { get; set; }
        public string ProjectsInitiated { get; set; }
        public string ProjectsSupported { get; set; }
        public string FavoriteProjects { get; set; }
    }
}
