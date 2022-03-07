using System;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;


namespace Practise_project
{
    namespace Practise_project.Class_File
    {
        public class Excel_dataset
        {
            SqlConnection con;
            SqlCommand cmd;
            public Excel_dataset()
            {
                con = new SqlConnection();
                con.ConnectionString = ConfigurationManager.ConnectionStrings["Practise_project"].ConnectionString;
            }

            private string _Plant;

            private string _Shift;
            private DateTime _Capturetime;

            public int Samples { get; set; }
            public string Plant
            {
                get { return _Plant; }
                set { _Plant = value; }
            }
            public string Shift
            {
                get { return _Shift; }
                set { _Shift = value; }
            }

            public DateTime Capturetime
            {
                get { return _Capturetime; }
                set { _Capturetime = value; }
            }
            public DateTime Date { get; set; }
            public bool insertexceldata()
            {
                cmd = new SqlCommand();
                cmd.CommandText = "milksamples";
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@plant", Plant);
                cmd.Parameters.AddWithValue("@shift", Shift);
                cmd.Parameters.AddWithValue("@date", Date);
                cmd.Parameters.AddWithValue("@samples", Samples);
                cmd.Parameters.AddWithValue("@capturetime", Capturetime);
                cmd.Connection = con;
                try
                {
                    con.Open();
                    cmd.ExecuteNonQuery();
                    return true;
                }
                catch
                {
                    con.Close();
                    return false;
                }
                finally
                {
                    con.Close();
                }
            }
        }
    }
}












