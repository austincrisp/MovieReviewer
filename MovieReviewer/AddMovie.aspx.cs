using System;
using System.Collections.Generic;
using MovieReviewer.Models;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MovieReviewer
{
    public partial class AddMovie : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.Form.AllKeys.Contains("title"))
            {
                using (var db = new MovieReviewContext())
                {
                    var addMovie = new Movie
                    {
                        Title = Request.Form["title"],
                        Genre = Request.Form["genre"],
                        IMDBLink = Request.Form["imdb"],
                        ReleaseDate = Request.Form["release"]
                    };

                    db.Movies.Add(addMovie);
                    db.SaveChanges();
                    Response.Redirect("Default.aspx");
                }
            }
        }
    }
}