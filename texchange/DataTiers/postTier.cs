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


        public void insertPost(DataModels.CreatePost post)
        {

            query = "INSERT INTO posts (title, author, course, department, price) " +
                "VALUES ('" + post.title + "','" + post.author + "','" + post.course + "','" + post.department + "','" + post.price + "');";

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

        }

    }

