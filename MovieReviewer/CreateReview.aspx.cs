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
        public Movie movieInstance;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.Form.AllKeys.Contains("name"))
            {
                using (var db = new MovieReviewContext())
                {
                    var addReview = new Review
                    {
                        Name = Request.Form["name"],
                        MovieId = int.Parse(Request.Form["reviewId"]),
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

            var movieId = int.Parse(Request.QueryString["id"]);
            using (var db = new MovieReviewContext())
            {
                movieInstance = db.Movies.First(n => n.Id == movieId);
                if (IsPostBack)
                {
                    movieInstance.Title = Request.Form["title"];
                    movieInstance.Genre = Request.Form["genre"];
                    movieInstance.IMDBLink = Request.Form["imdb"];
                    movieInstance.ReleaseDate = Request.Form["release"];
                }
            }
        }

    }
}