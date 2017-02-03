using System;
using System.Collections.Generic;
using MovieReviewer.Models;
using System.Data.Entity;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MovieReviewer
{
    public partial class ModifyMovie : System.Web.UI.Page
    {
        public Movie movieInstance;

        protected void Page_Load(object sender, EventArgs e)
        {
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

                    db.Entry(movieInstance).State = EntityState.Modified;
                    db.SaveChanges();
                    Response.Redirect("Default.aspx");
                }
            }

        }
    }
}