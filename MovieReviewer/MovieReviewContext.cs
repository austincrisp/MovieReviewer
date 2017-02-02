using System;
using System.Collections.Generic;
using System.Data.Entity;
using MovieReviewer.Models;
using System.Linq;
using System.Web;

namespace MovieReviewer
{
    public class MovieReviewContext : DbContext
    {
        public DbSet<Movie> Movies { get; set; }
        public DbSet<Review> Reviews { get; set; }
    }
}