using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace hrManage
{
    public partial class login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            lblerrormsg.Visible = false;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            
                SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["mycon"].ToString());
   
            con.Open();
            string uid = TextBuser.Text.Trim();
            string pass = TextBoxpass.Text.Trim();
            string qry = "select count(*) from login where username='" + uid + "' and password='" + pass + "'";
            SqlCommand cmd = new SqlCommand(qry, con);
            string sdr = cmd.ExecuteScalar().ToString();
            if (sdr == "1")
            {
                Session["username"] = TextBuser.Text.Trim();
                Session["loggedIn"] = true;
                if (uid == "admin")
                {
                    Response.Redirect("Admin.aspx");
                }
                else
                {
                    Response.Redirect("user.aspx");
                }
                
            }
            else
            {
                lblerrormsg.Visible = true;
            }
            con.Close();
   
            
                //if(count==1)
                //{
                //    Session["username"]=TextBuser.Text.Trim();

                   
                //        Response.Redirect("user.aspx");

                //}
                //else {lblerrormsg.Visible=true;}

        }
    }
}