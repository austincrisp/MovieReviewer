using System;
using System.Collections.Generic;
using MovieReviewer.Models;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.Entity;

namespace MovieReviewer
{
    public partial class CreateReview : System.Web.UI.Page
    {
        public Review reviewInstance;

        protected void Page_Load(object sender, EventArgs e)
        {
            var movieId = int.Parse(Request.QueryString["id"]);
            using (var db = new MovieReviewContext())
            {
                reviewInstance = db.Movies.First(n => n.Id == movieId);
                if (IsPostBack)
                {
                    /*
                    reviewInstance.Name = Request.Form["name"];
                    reviewInstance.Movie.Title = Request.Form["movie"];
                    reviewInstance.Rating = int.Parse(Request.Form["rating"]);
                    reviewInstance.Age = int.Parse(Request.Form["age"]);
                    reviewInstance.Gender = Request.Form["gender"];
                    reviewInstance.Occupation = Request.Form["occupation"];

                    db.Reviews.Add(reviewInstance);
                    db.SaveChanges();
                    Response.Redirect("Default.aspx");
                    */
                }
            }

        }

        /*
        protected void Page_Load(object sender, EventArgs e)
        {
            var movieId = int.Parse(Request.QueryString["id"]);
            if (Request.Form.AllKeys.Contains("name"))
            {
                using (var db = new MovieReviewContext())
                {
                    var addReview = new Review
                    {
                        Name = Request.Form["name"],
                        MovieId = int.Parse(Request.Form["movieId"]),
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
        */
    }
}