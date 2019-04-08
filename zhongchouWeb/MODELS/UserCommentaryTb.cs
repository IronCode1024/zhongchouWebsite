using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace MODEL
{
    public class UserCommentaryTb
    {
        //评论
        public int CommentaryID { get; set; }
        public int UserID { get; set; }
        public string UserEmail { get; set; }
        public int ProjectID { get; set; }
        public int CommentatorID { get; set; }
        public string Content { get; set; }
        public DateTime CommentaryDate { get; set; }
    }
}
