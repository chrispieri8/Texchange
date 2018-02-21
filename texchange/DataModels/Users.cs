using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace texchange.DataModels
{
    public class Users
    {
        public string email { get; set; }
        public string username { get; set; }
        public string major { get; set; }
        public string salt { get; set; }
        public string hash { get; set; }
    }
}