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
    public partial class registration : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            divmsg.Visible = true;
            string conString = ConfigurationManager.ConnectionStrings["DefaultConnection"].ConnectionString;
            SqlConnection conn = null;
            try
            {
                conn = new SqlConnection(conString);
                SqlCommand sqlcmd = new SqlCommand();

                conn.Open();
                sqlcmd.Connection = conn;
                sqlcmd.CommandType = CommandType.Text;
                sqlcmd.CommandText = "INSERT INTO [dbo].[registration]([Email],[FName],[LName],[FaName],[MaName],[Contact],[Paddress],[Peraddress],[Department],[Designation],[LastDegree],[BasicPay])VALUES(@Email, @FName,@LName,@FaName,@MaName,@Contact,@Paddress,@Peraddress,@Department,@Designation,@LastDegree,@BasicPay)";
                //@Designation,@LastDegree,@BasicPay
                sqlcmd.Parameters.AddWithValue("@Email", txtbxEmail.Text);
                sqlcmd.Parameters.AddWithValue("@FName", txtbxFName.Text);
                sqlcmd.Parameters.AddWithValue("@LName", txtbxLName.Text);
                sqlcmd.Parameters.AddWithValue("@FaName", txtbxFaName.Text);
                sqlcmd.Parameters.AddWithValue("@MaName", txtbxMaName.Text);
                sqlcmd.Parameters.AddWithValue("@Contact", txtBxContactNo.Text);
               // sqlcmd.Parameters.AddWithValue("@DateofB", txtbxDob.Text);
                sqlcmd.Parameters.AddWithValue("@Paddress", txtbxPresentAdd.Text);
                sqlcmd.Parameters.AddWithValue("@Peraddress", txtbxParmanentAdd.Text);
                //sqlcmd.Parameters.AddWithValue("@JoinDate", txtbxEmail.Text);
                sqlcmd.Parameters.AddWithValue("@Department", txtbxDep.Text);
                sqlcmd.Parameters.AddWithValue("@Designation", txtbxDesignation.Text);
                sqlcmd.Parameters.AddWithValue("@LastDegree", txtbxDegree.Text);
                sqlcmd.Parameters.AddWithValue("@BasicPay", txtbxSalary.Text);

                int flag= sqlcmd.ExecuteNonQuery();
                conn.Close();
                if(flag>0)
                {
                    divmsg.Visible = true;
                    lblMsg.Text = "Saved Successfully";
                    
                }
                else
                {
                    divmsg.Visible = true;
                    lblMsg.Text = "Sorry somthing worng.";
                }

            }
            catch (Exception)
            {
                
                throw;
            }
        }
    }
}