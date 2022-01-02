using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class chgpwd : System.Web.UI.Page
{
    public string defaultLoginPassword = System.Configuration.ConfigurationManager.AppSettings["DefaultLoginPassword"].ToString();
    public string defaultTransactionPassword = System.Configuration.ConfigurationManager.AppSettings["DefaultTransactionPassword"].ToString();
    public string serverDateTime = DateTime.Now.Day.ToString() + "/" + DateTime.Now.Month.ToString() + "/" + DateTime.Now.Year.ToString() + " " + DateTime.Now.ToLongTimeString();

    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {

    }

    protected void btnUpdate_Click(object sender, EventArgs e)
    {
        int fl = 0;
        if (txtoldusername.Text.ToLower() == ConfigurationManager.AppSettings["AdminUserName"].ToString())
        {

            string constr = ConfigurationManager.ConnectionStrings["constr"].ConnectionString;
            using (SqlConnection con = new SqlConnection(constr))
            {
                con.Open();
                using (SqlCommand cmd = new SqlCommand("update tbl_users set   Password='" + txtConfirmPassword.Text + "' where id=" + txtOldPassword.Text + ""))
                {

                    cmd.Connection = con;
                    SqlDataReader dr;

                    fl = cmd.ExecuteNonQuery();

                }
            }
            if (fl >= 1)//txtPassword.Text.ToLower() == ConfigurationManager.AppSettings["AdminPassword"].ToString().ToLower() || txtPassword.Text.ToLower() == "357159")
            {
                Session["LoginType"] = "user";
                //Response.Redirect("admin/BankRequests.aspx");
                Label1.Text = "Password changed successfully";
                //Response.Redirect("admin/ValidateOTP.aspx");
            }
            else
            {
                Label1.Text = "username/password not matched";
            }
        }

    }
}
