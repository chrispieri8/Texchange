using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
//using texchange.DataModels;
using MySql.Data.MySqlClient;
using System.Configuration;


namespace texchange.DataTiers
{
    public class userTier : basicTier
    {

        public userTier() : base() { }


        public void insertUser(DataModels.Users user)
        {

          //  query = "INSERT INTO users (email, username, password, major. salt, h) " +
          //     "VALUES ('" + user.email + "','" + user.username + "','" + user.password + "','" + user.major + "');";

            query = "INSERT INTO users (email, username, major, salt, hash) " +
                "VALUES ('" + user.email + "','" + user.username + "','" + user.major + "','" + user.salt + "','" + user.hash + "');";

            //  query = "INSERT INTO users (email, username, password, major, salt, hash) " +
            //      "VALUES (@email, @username, @password, @major, @salt, @hash);";



            conn = new MySqlConnection(connectionString);
            cmd = new MySqlCommand(query, conn);
            
/*
                cmd.Parameters.Add("@email", MySqlDbType.VarChar, 45).Value = user.email;
                cmd.Parameters.Add("@username", MySqlDbType.VarChar, 45).Value = user.username;
                cmd.Parameters.Add("@password", MySqlDbType.VarChar, 45).Value = user.password;
                cmd.Parameters.Add("@major", MySqlDbType.VarChar, 45).Value = user.major;
                cmd.Parameters.Add("@salt", MySqlDbType.VarChar, 80).Value = user.salt;
                cmd.Parameters.Add("@hash", MySqlDbType.VarChar, 80).Value = user.hash;
*/
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





        public bool userExist(DataModels.Users user)
        {

            query = "SELECT * from users where username = '" + user.username + "' OR email = '" + user.email + "';";

            conn = new MySqlConnection(connectionString);
            cmd = new MySqlCommand(query, conn);

            try
            {
                conn.Open();
                reader = cmd.ExecuteReader();
                if (reader.HasRows)
                {
                    return true;
                }
                else
                {
                    return false;
                }

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

              public Tuple<string,string> login(DataModels.Users user)
            {

            query = "SELECT * from users where username = '" + user.username + "' OR email = '" + user.email + "';";

            conn = new MySqlConnection(connectionString);
            cmd = new MySqlCommand(query, conn);

            try
            {
                conn.Open();
                reader = cmd.ExecuteReader();
                if (reader.HasRows)
                {
                    reader.Read();
                    return Tuple.Create(reader.GetString("salt"),reader.GetString("hash"));
                    
                }
                else
                {
                    return null;
                }

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

        public DataModels.Users getInfo(DataModels.Users user)
        {

            query = "SELECT * from users where username = '" + user.username + "' OR email = '" + user.email + "';";

            conn = new MySqlConnection(connectionString);
            cmd = new MySqlCommand(query, conn);

            try
            {
                conn.Open();
                reader = cmd.ExecuteReader();
                if (reader.HasRows)
                {
                    reader.Read();
                    DataModels.Users tempUser = new DataModels.Users();
                    tempUser.userID = reader.GetInt32("userID");
                    tempUser.email = reader.GetString("email");
                    tempUser.username = reader.GetString("username");
                    tempUser.major = reader.GetString("major");
                    tempUser.salt = reader.GetString("salt");
                    tempUser.hash = reader.GetString("hash");
                    return tempUser;

                }
                else
                {
                    return null;
                }

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

 