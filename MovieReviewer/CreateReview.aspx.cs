using System;
using System.Collections.Generic;
using MovieReviewer.Models;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MovieReviewer
{
    public partial class CreateReview : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.Form.AllKeys.Contains("name"))
            {
                using (var db = new MovieReviewContext())
                {
                    var addReview = new Review
                    {
                        Name = Request.Form["name"],
                        Rating = int.Parse(Request.Form["rating"]),
                        Age = int.Parse(Request.Form["age"]),
                        Gender = Request.Form["gender"],
                        Occupation = Request.Form["occupation"]
                    };

                    db.Reviews.Add(addReview);
                    db.SaveChanges();
                    Response.Redirect("ReviewList.aspx");
                }
            }
        }
    }
}