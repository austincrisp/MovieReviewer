using System;
using System.Collections.Generic;
using MovieReviewer.Models;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MovieReviewer
{
    public partial class ReviewList : System.Web.UI.Page
    {
        public List<Review> Reviews;

        protected void Page_Load(object sender, EventArgs e)
        {
            using (var db = new MovieReviewContext())
            {
                Reviews = db.Reviews.Include("Movie").ToList();
            }
        }
    }
}