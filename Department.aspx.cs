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
    public partial class Department : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                getParentDeptList();
                getDeptList();

            }
        }

        private void getParentDeptList()
        {
            string conString = ConfigurationManager.ConnectionStrings["DefaultConnection"].ConnectionString;
            SqlConnection conn = null;
            try
            {
                conn = new SqlConnection(conString);


                conn.Open();

                string Query = "SELECT  [dpt_id],[dpt_name],Parentdpt FROM [hrmg4].[dbo].[Department] where (Parentdpt='' or Parentdpt = null)";
                SqlCommand sqlcmd = new SqlCommand(Query, conn);
                SqlDataReader sqldr = sqlcmd.ExecuteReader();

                DataTable dt = new DataTable();

                dt.Load(sqldr);
                conn.Close();

                drpdwnParentDept.DataSource = dt;
                drpdwnParentDept.DataTextField = "dpt_name";
                drpdwnParentDept.DataValueField = "dpt_id";
                drpdwnParentDept.DataBind();
                drpdwnParentDept.Items.Insert(0, "Select Please");
                drpdwnParentDept.Items[0].Value = "";
            }
            catch (Exception ex)
            {

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

                string Query = "SELECT  [dpt_id],[dpt_name],Parentdpt FROM [hrmg4].[dbo].[Department]";
                SqlCommand sqlcmd = new SqlCommand(Query, conn);
                SqlDataReader sqldr = sqlcmd.ExecuteReader();

                DataTable dt = new DataTable();

                dt.Load(sqldr);
                conn.Close();

                GridViewdepartment.DataSource = dt;
                GridViewdepartment.DataBind();

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
                sqlcmd.CommandText = "INSERT INTO [dbo].[Department]([dpt_name],[Parentdpt])VALUES(@dptName, @Parentdpt)";
                //@Designation,@LastDegree,@BasicPay
                sqlcmd.Parameters.AddWithValue("@dptName", txtbxDN.Text);
                sqlcmd.Parameters.AddWithValue("@Parentdpt", drpdwnParentDept.SelectedValue);


                int flag = sqlcmd.ExecuteNonQuery();
                conn.Close();
                if (flag > 0)
                {
                    Response.Redirect("/Department.aspx");
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

        protected void GridViewdepartment_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}