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
    public class postTier : basicTier
    {

        public postTier() : base() { }


        public void insertPost(DataModels.CreatePost post, int id)
        {

            query = "INSERT INTO posts (Title, BookID, posts.Condition, Price, userID) " +
                "VALUES ('" + post.title + "','" + post.bookID + "','" + post.condition + "','" + post.price + "','" + id + "');";

            conn = new MySqlConnection(connectionString);
            cmd = new MySqlCommand(query, conn);

            try
            {
                conn.Open();
                cmd.ExecuteNonQuery();

            }
            catch (MySqlException ex)
            {
                throw new Exception(ex.Message);
            }
            finally
            {
                conn.Close();
            }

        }


        public DataSet getPostDataSet()
        {
            DataSet ds;
            MySqlConnection conn;
            String query;
            MySqlDataAdapter da;

            query = "SELECT * FROM posts;";
            conn = new MySqlConnection(connectionString);
            da = new MySqlDataAdapter(query, conn);

            ds = new DataSet();
            try
            {
                da.Fill(ds, "posts");
            }
            catch (MySqlException e)
            {
                throw new Exception("Error with getting Produc DataSet", e);
            }
            finally
            {
                conn.Close();
                da.Dispose();
            }

            return ds;
        }

    }

}