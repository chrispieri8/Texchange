using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using MySql.Data.MySqlClient;
using System.Configuration;
using texchange.DataModels;



namespace texchange.DataTiers
{
	public class basicTier
	{
        protected string connectionString { get; set; }
        protected MySqlConnection conn { get; set; }
        protected MySqlCommand cmd { get; set; }
        protected MySqlDataReader reader { get; set; }
        protected string query { get; set; }
        
        

        public basicTier()
        {
            
            connectionString = ConfigurationManager.ConnectionStrings["MyData"].ToString();
          
            
        }



    }
}