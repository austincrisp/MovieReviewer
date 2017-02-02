﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace MovieReviewer.Models
{
    public class Review
    {
        public int Id { get; set; }
        public string Name { get; set; }
        public int Rating { get; set; }
        public int Age { get; set; }
        public string Gender { get; set; }
        public string Occupation { get; set; }
        public int MovieId { get; set; }

        public virtual Movie Movie { get; set; }
    }
}