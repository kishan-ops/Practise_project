using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using System.Data;
using System.Data.SqlClient;
using System.Security.Cryptography;
using Practise_project.Class_File;

namespace Practise_project
{

    public partial class Registration_form : System.Web.UI.Page
    {
        Excel_dataset obj = new Excel_dataset();
        // Class_File = new Class_File();


        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {

            }
        }

        protected void Button_Click(object sender, EventArgs e)
        {
            obj.Firstname = TxtFname.Text;
            obj.Lastname = txtlstname.Text;
            obj.Email = Txtmail.Text;
            obj.Password = Txtpwd.Text;
            obj.Insertuserdetails();

        }


        //public static string Encrypt(string originalString)
        //{
        //    if (String.IsNullOrEmpty(originalString))
        //    {
        //        throw new ArgumentNullException("The string which needs to be encrypted can not be null.");
        //    }
        //    // byte[] data = System.Convert.FromBase64String(toDecrypt);
        //    byte[] rgbKey = System.Text.ASCIIEncoding.ASCII.GetBytes("56565656");
        //    byte[] rgbIV = System.Text.ASCIIEncoding.ASCII.GetBytes("78787878");
        //    MemoryStream memoryStream = new MemoryStream();

        //    DESCryptoServiceProvider cryptoProvider = new DESCryptoServiceProvider();

        //    CryptoStream cryptoStream = new CryptoStream(memoryStream, cryptoProvider.CreateEncryptor(rgbKey, rgbIV), CryptoStreamMode.Write);
        //    StreamWriter writer = new StreamWriter(cryptoStream);
        //    writer.Write(originalString);
        //    writer.Flush();
        //    cryptoStream.FlushFinalBlock();
        //    writer.Flush();
        //    return Convert.ToBase64String(memoryStream.GetBuffer(), 0, (int)memoryStream.Length);
        //}

    }
}

