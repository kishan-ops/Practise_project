using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.OleDb;
using System.Data.Common;
using Practise_project.Practise_project.Class_File;

namespace Practise_project
{
    public partial class Excel_data : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                 //BindGridview();
            }

        }

        //private void BindGridview()
        //{
        //    string CS = ConfigurationManager.ConnectionStrings["Practise_project"].ConnectionString;
        //    using (SqlConnection con = new SqlConnection(CS))
        //    {
        //        SqlCommand cmd = new SqlCommand("spGetAllEmployee", con);
        //        cmd.CommandType = CommandType.StoredProcedure;
        //        con.Open();
        //        gvExcelFile.DataSource = cmd.ExecuteReader();
        //        gvExcelFile.DataBind();
        //    }
        //}
        //protected void btnImportExcel(object sender, EventArgs e)
        //{
        //    string plant;
        //    DateTime date;
        //    string shift;
        //    int Samples;
        //    DateTime Capturetime;
        //    if (FileUpload1.PostedFile != null)
        //    {
        //        string path = string.Concat(Server.MapPath("~/MyFolder/" + FileUpload1.FileName));
        //        FileUpload1.SaveAs(path);
        //        // Connection String to Excel Workbook 
        //        string cstr = "";
        //        string excelCS = string.Format("Provider=Microsoft.ACE.OLEDB.12.0;Data Source={0};Extended Properties=Excel 8.0", path);

        //        using (OleDbConnection con = new OleDbConnection(cstr))
        //        {
        //            if (cstr.Trim() == ".xls")
        //            {


        //                //connection string for that file which extantion is .xls  
        //                cstr = "Provider=Microsoft.Jet.OLEDB.4.0;Data Source=" + path + ";Extended Properties=\"Excel 8.0;HDR=Yes;IMEX=2\"";
        //            }
        //            else if (cstr.Trim() == ".xlsx")
        //            {


        //                //connection string for that file which extantion is .xlsx  
        //                cstr = "Provider=Microsoft.ACE.OLEDB.12.0;Data Source=" + path + ";Extended Properties=\"Excel 12.0;HDR=Yes;IMEX=2\"";

        //            }
        //            OleDbCommand cmd = new OleDbCommand("select * from [Sheet1$]", con);
        //            con.Open();
        //            // Create DbDataReader to Data Worksheet  
        //            DbDataReader dr = cmd.ExecuteReader();

        //            // SQL Server Connection String
        //            while (dr.Read())
        //            {
        //                plant = dr[0].ToString();
        //                date = Convert.ToDateTime(dr[1]);
        //                shift = dr[2].ToString();
        //                Samples = Convert.ToInt32(dr[3].ToString());
        //                Capturetime = Convert.ToDateTime(dr[4]);
        //                //  Excel_dataset obj1 = new Excel_dataset();
        //                Excel_dataset obj = new Excel_dataset();
        //                // obj.insertexceldata();


        //                if (obj.insertexceldata())
        //                {

        //                    Label1.Text = "";
        //                }
        //                else
        //                {

        //                }
        //            }
        //        }

        //    }
        //}


        protected void grd_data_RowCommand(object sender, GridViewCommandEventArgs e)
        {

        }
        //protected void grd_student_RowDataBound(object sender, GridViewRowEventArgs e)
        //{

        //}


        ////Coneection String by default empty  
        //string ConStr = "";
        ////Extantion of the file upload control saving into ext because   
        ////there are two types of extation .xls and .xlsx of Excel   
        //string ext = Path.GetExtension(FileUpload1.FileName).ToLower();
        ////getting the path of the file   
        //string path = Server.MapPath("~/MyFolder/" + FileUpload1.FileName);
        ////saving the file inside the MyFolder of the server  
        //FileUpload1.SaveAs(path);
        //Label1.Text = FileUpload1.FileName + "\'s Data showing into the GridView";
        ////checking that extantion is .xls or .xlsx  
        //if (ext.Trim() == ".xls")
        //{
        //    //connection string for that file which extantion is .xls  
        //    ConStr = "Provider=Microsoft.Jet.OLEDB.4.0;Data Source=" + path + ";Extended Properties=\"Excel 8.0;HDR=Yes;IMEX=2\"";
        //}
        //else if (ext.Trim() == ".xlsx")
        //{
        //    //connection string for that file which extantion is .xlsx  
        //    ConStr = "Provider=Microsoft.ACE.OLEDB.12.0;Data Source=" + path + ";Extended Properties=\"Excel 12.0;HDR=Yes;IMEX=2\"";
        //}
        ////making query  
        //string query = "SELECT * FROM [Sheet1$]";
        ////Providing connection  
        //OleDbConnection conn = new OleDbConnection(ConStr);
        ////checking that connection state is closed or not if closed the   
        ////open the connection  
        //if (conn.State == ConnectionState.Closed)
        //{
        //    conn.Open();
        //}
        ////create command object  
        //OleDbCommand cmd = new OleDbCommand(query, conn);
        //// create a data adapter and get the data into dataadapter  
        //OleDbDataAdapter da = new OleDbDataAdapter(cmd);
        //DataSet ds = new DataSet();
        ////fill the Excel data to data set  
        //da.Fill(ds);
        ////set data source of the grid view  
        //gvExcelFile.DataSource = ds.Tables[0];
        ////binding the gridview  
        //gvExcelFile.DataBind();
        ////close the connection  
        //conn.Close();

    }
}