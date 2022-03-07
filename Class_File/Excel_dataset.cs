using System;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Security.Cryptography;

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

        private String _Firstname;
        private String _Lastname;
        private String _Email;
        private String _Password;
        private String _ProductName;
        private String _Pdate;
        public string Firstname
        {
            get { return _Firstname; }
            set { _Firstname = value; }
        }

        public string Lastname
        {
            get { return _Lastname; }
            set { _Lastname = value; }
        }
        public string Email
        {
            get { return _Email; }
            set { _Email = value; }
        }

        public string Password
        {
            get { return _Password; }
            set { _Password = value; }
        }

        public string ProductName
        {
            get { return _ProductName; }
            set { _ProductName = value; }
        }
        public DateTime Pdate
        {
            get { return _Pdate; }
            set { _Pdate = value; }
        }


        public bool Insertuserdetails()
        {
            cmd = new SqlCommand();
            cmd.CommandText = "lnr_insertdetails";
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@Firstname", Firstname);
            cmd.Parameters.AddWithValue("@Lastname", Lastname);
            cmd.Parameters.AddWithValue("@Email", Email);
            cmd.Parameters.AddWithValue("@Password", Password);
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
