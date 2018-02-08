using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace texchange.DataModels
{
    public class CreatePost
    {
        public string title { get; set; }
        public string author { get; set; }
        public string coarse { get; set; }
        public string department { get; set; }
        public float price { get; set; }
        public string image { get; set; }
    }
}