using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace hrManage
{
    public partial class Task_Entry : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                //getTaskAsg();
                getEmployeeList();
                getDeptList();

            }
        }



        private void getEmployeeList()
        {
            string conString = ConfigurationManager.ConnectionStrings["DefaultConnection"].ConnectionString;
            SqlConnection conn = null;
            try
            {
                conn = new SqlConnection(conString);


                conn.Open();

                string Query = "select FName + ' ' + [LName] as Name, * FROM [dbo].[registration]";
                SqlCommand sqlcmd = new SqlCommand(Query, conn);
                SqlDataReader sqldr = sqlcmd.ExecuteReader();

                DataTable dt = new DataTable();

                dt.Load(sqldr);
                conn.Close();


                drpdwnEmpId.DataSource = dt;
                drpdwnEmpId.DataTextField = "Name";
                drpdwnEmpId.DataValueField = "emp_id";
                drpdwnEmpId.DataBind();
                drpdwnEmpId.Items.Insert(0, "Select Please");
                drpdwnEmpId.Items[0].Value = "";

            }
            catch (Exception)
            {

                throw;
            }
        }



        private void getDeptList()
        {
            string conString = ConfigurationManager.ConnectionStrings["DefaultConnection"].ConnectionString;
            SqlConnection conn = null;
            try
            {
                conn = new SqlConnection(conString);


                conn.Open();

                string Query = "SELECT  [dpt_id],[dpt_name],Parentdpt FROM [dbo].[Department]";
                SqlCommand sqlcmd = new SqlCommand(Query, conn);
                SqlDataReader sqldr = sqlcmd.ExecuteReader();

                DataTable dt = new DataTable();

                dt.Load(sqldr);
                conn.Close();


                drpdwnDept.DataSource = dt;
                drpdwnDept.DataTextField = "dpt_name";
                drpdwnDept.DataValueField = "dpt_id";
                drpdwnDept.DataBind();
                drpdwnDept.Items.Insert(0, "Select Please");
                drpdwnDept.Items[0].Value = "";

            }
            catch (Exception)
            {

                throw;
            }
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            // divmsg.Visible = true;
            string conString = ConfigurationManager.ConnectionStrings["DefaultConnection"].ConnectionString;
            SqlConnection conn = null;
            try
            {
                conn = new SqlConnection(conString);
                SqlCommand sqlcmd = new SqlCommand();

                conn.Open();
                sqlcmd.Connection = conn;
                sqlcmd.CommandType = CommandType.Text;
                sqlcmd.CommandText = "INSERT INTO [dbo].[Task2]([emp_id],[task_name],[task_start_date],[task_update_date],[dpt_id],[task_details])VALUES(@empid, @taskname, @taskstartdate, @taskupdatedate,@dptid,@taskdetails)";
                //@Designation,@LastDegree,@BasicPay
                sqlcmd.Parameters.AddWithValue("@taskname", txtbxTN.Text);
                sqlcmd.Parameters.AddWithValue("@empid", drpdwnEmpId.SelectedValue);
                sqlcmd.Parameters.AddWithValue("@taskstartdate", TextBTSD.Text);
                sqlcmd.Parameters.AddWithValue("@taskupdatedate", TextBTU.Text);
                sqlcmd.Parameters.AddWithValue("@dptid", drpdwnDept.SelectedValue);
                sqlcmd.Parameters.AddWithValue("@taskdetails", txtTD.Text);

                int flag = sqlcmd.ExecuteNonQuery();
                conn.Close();
                if (flag > 0)
                {
                    //divmsg.Visible = true;
                    //lblMsg.Text = "Saved Successfully";

                }
                else
                {
                    //divmsg.Visible = true;
                    //lblMsg.Text = "Sorry somthing worng.";
                }

            }
            catch (Exception)
            {

                throw;
            }
        }

        //private void getTaskAsg()
        //{
        //    string conString = ConfigurationManager.ConnectionStrings["DefaultConnection"].ConnectionString;
        //    SqlConnection conn = null;
        //    try
        //    {
        //        conn = new SqlConnection(conString);


        //        conn.Open();

        //        string Query = "select FName + ' ' + [LName] as Name, * FROM [dbo].[registration]";
        //        SqlCommand sqlcmd = new SqlCommand(Query, conn);
        //        SqlDataReader sqldr = sqlcmd.ExecuteReader();

        //        DataTable dt = new DataTable();

        //        dt.Load(sqldr);
        //        conn.Close();


        //        DrpdwnAB.DataSource = dt;
        //        DrpdwnAB.DataTextField = "Name";
        //        DrpdwnAB.DataValueField = "SN";
        //        DrpdwnAB.DataBind();
        //        DrpdwnAB.Items.Insert(0, "Select Please");
        //        DrpdwnAB.Items[0].Value = "";

        //    }
        //    catch (Exception)
        //    {

        //        throw;
        //    }
        //}
        //protected void Page_Load(object sender, EventArgs e)
        //{
        //    divmsg.Visible = true;
        //    string conString = ConfigurationManager.ConnectionStrings["DefaultConnection"].ConnectionString;
        //    SqlConnection conn = null;
        //    try
        //    {
        //        conn = new SqlConnection(conString);
        //        SqlCommand sqlcmd = new SqlCommand();

        //        conn.Open();
        //        sqlcmd.Connection = conn;
        //        sqlcmd.CommandType = CommandType.Text;
        //        sqlcmd.CommandText = "INSERT INTO [dbo].[Task]([emp-id],[task_name],[task_start_date],[task_update_date],[task_dept])VALUES(@empid, @taskname, @taskstartdate, @taskupdatedate,@taskdept)";
        //        //@Designation,@LastDegree,@BasicPay
        //        sqlcmd.Parameters.AddWithValue("@empid", txtbxTN.Text);
        //        sqlcmd.Parameters.AddWithValue("@taskname", drpdwnEmpId.SelectedValue);
        //        sqlcmd.Parameters.AddWithValue("@taskstartdate", TextBTSD.Text);
        //        sqlcmd.Parameters.AddWithValue("@taskupdatedate", TextBTU.Text);
        //        sqlcmd.Parameters.AddWithValue("@taskdept", TextBTD.Text);


        //        int flag = sqlcmd.ExecuteNonQuery();
        //        conn.Close();
        //        if (flag > 0)
        //        {
        //            //divmsg.Visible = true;
        //            //lblMsg.Text = "Saved Successfully";

        //        }
        //        else
        //        {
        //            //divmsg.Visible = true;
        //            //lblMsg.Text = "Sorry somthing worng.";
        //        }

        //    }
        //    catch (Exception)
        //    {

        //        throw;
        //    }
        //}
    }
}