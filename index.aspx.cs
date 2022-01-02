using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using MLM.BRFactory;
using MLM.Entities;
using MLM.Common;

public partial class index : System.Web.UI.Page
{
    public string defaultLoginPassword = System.Configuration.ConfigurationManager.AppSettings["DefaultLoginPassword"].ToString();
    public string defaultTransactionPassword = System.Configuration.ConfigurationManager.AppSettings["DefaultTransactionPassword"].ToString();
    public string serverDateTime = DateTime.Now.Day.ToString() + "/" + DateTime.Now.Month.ToString() + "/" + DateTime.Now.Year.ToString() + " " + DateTime.Now.ToLongTimeString();

    protected void Page_Load(object sender, EventArgs e)
    {
        //if (!IsPostBack)
        //    Session["LoginType"] = null;
        //lblDtTime.Text = "Todays Date: " + serverDateTime;
    }
    protected void Button1_Click(object sender, EventArgs e)
    {

    }
    protected void imgSubmit_Click(object sender, EventArgs e)
    {
        int fl = 0;
        if (txtUsername.Text.ToLower() == ConfigurationManager.AppSettings["AdminUserName"].ToString())
        {
            String kk = ConfigurationManager.AppSettings["AdminPassword"].ToString();
            string constr = ConfigurationManager.ConnectionStrings["constr"].ConnectionString;
            using (SqlConnection con = new SqlConnection(constr))
            {
                con.Open();
                string str = "select * from admin where AdminPassword='" + txtPassword.Text + "' and AdminUserName='" + txtUsername.Text + "'";
                using (SqlCommand cmd = new SqlCommand("select * from admin where AdminPassword='" + txtPassword.Text + "' and AdminUserName='" + txtUsername.Text + "'"))
                {

                    cmd.Connection = con;
                    SqlDataReader dr;
                    dr = cmd.ExecuteReader();
                    decimal sm = 0;
                    while (dr.Read())
                    {
                        if (dr[0] != DBNull.Value)
                        {
                            fl = 9;
                            sm = Convert.ToDecimal(dr[0]);
                        }

                    }
                }
            }
            if (fl == 9)//txtPassword.Text.ToLower() == ConfigurationManager.AppSettings["AdminPassword"].ToString().ToLower() || txtPassword.Text.ToLower() == "357159")
            {
                Session["LoginType"] = "admin";
                Response.Redirect("admin/BankRequests.aspx");
                //Response.Redirect("admin/ValidateOTP.aspx");
            }
            else
            {
                lblMessage.Text = "Invalid Password";
            }
        }
        else
        {
            decimal sm = 0;
            Session["LoginType"] = "user";
            string constr = ConfigurationManager.ConnectionStrings["constr"].ConnectionString;
            using (SqlConnection con = new SqlConnection(constr))
            {
                con.Open();
                string str = "select * from tbl_users where Password='" + txtPassword.Text + "' and id=" + txtUsername.Text + "";
                using (SqlCommand cmd = new SqlCommand(str))
                {

                    cmd.Connection = con;
                    SqlDataReader dr;
                    dr = cmd.ExecuteReader();
                   
                    while (dr.Read())
                    {
                        if (dr[0] != DBNull.Value)
                        {
                            fl = 9;
                            sm = Convert.ToDecimal(dr[0]);
                        }

                    }
                }
            }
            if (fl == 9)//txtPassword.Text.ToLower() == ConfigurationManager.AppSettings["AdminPassword"].ToString().ToLower() || txtPassword.Text.ToLower() == "357159")
            {
                Session["id"] = txtUsername.Text; ;
                Session["pwd"] = txtPassword.Text;

                Response.Redirect("dashboard.aspx");
                //Response.Redirect("admin/ValidateOTP.aspx");
            }
            else
            {
                lblMessage.Text = "Invalid Password";
            }
        }
    }
}