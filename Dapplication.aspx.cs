using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Data.SqlClient;
using System.Text;
using System.Web;
using System.Web.UI;
using MLM.BRFactory;
using MLM.Entities;
using System.Configuration;
using MLM.Common;

public partial class Dapplication : System.Web.UI.Page
{
    public string defaultLoginPassword = System.Configuration.ConfigurationManager.AppSettings["DefaultLoginPassword"].ToString();
    public string defaultTransactionPassword = System.Configuration.ConfigurationManager.AppSettings["DefaultTransactionPassword"].ToString();

    String mob = "";
    String memname = "";
    String memid = "";
    protected void Page_Load(object sender, EventArgs e)
    {
        //VerifyLogin(1);
        //txtDOB.Attributes.Add("readonly", "readonly");
        if (!IsPostBack)
        {
            Session["TreeMemberId"] = null;
            Session["TreeMemberId"] = null;
            Session["PreviousMemberIds"] = null;
            if (Request.QueryString["spid"] != null)
            {
                txtSponsor.Text = Request.QueryString["spid"].ToString();

                string constr = ConfigurationManager.ConnectionStrings["constr"].ConnectionString;
                try
                {
                    SqlConnection con = new SqlConnection(constr);
                    con.Open();
                    int k = 0;
                    SqlCommand cmd = new SqlCommand("select * from members where applicationid='" + txtSponsor.Text+"'", con);
                    SqlDataReader dr = cmd.ExecuteReader();
                    while (dr.Read())
                    {
                        Label1.Text = "<font color=green>" + dr["name"].ToString() + "</font>";
                        txtSponsor.Text = Request.QueryString["spid"].ToString();
                        txtSponsor.Enabled = false;

                        k = 9;
                    }
                    if (k == 0)
                    {
                        Label1.Text = "<font color=red>Introducer ID not found!</Font>";
                        txtSponsor.Text = "";
                        txtSponsor.Enabled = false;
                    }
                    cmd.Dispose();
                    dr.Dispose();
                    k = 0;
                    if (memid != "")
                    {
                        SqlCommand cmd1 = new SqlCommand("select * from tbl_spdetails where spid=" + memid, con);
                        SqlDataReader dr1 = cmd1.ExecuteReader();
                        while (dr1.Read())
                        {
                            String str = dr1["tree"].ToString();
                            str = str.Trim();
                            //if (CheckBoxList1.Items[0].Text.Trim().Equals(str))
                            //{
                            //    CheckBoxList1.Items[0].Selected = true;
                            //}
                            k = k + 1;

                        //    DropDownList1.Items.Remove(str);

                        }
                        if (k >= 3)
                        {
                            Label1.Text = "<font color=red>No position available!</Font>";
                        }
                    }
                    con.Dispose();
                }
                catch (Exception ex)
                {
                    Label1.Text = ex.Message;
                }

            }
            if (Request.QueryString["leg"] != null)
            {
                // ddlSponsorLeg.SelectedValue = Request.QueryString["leg"].ToString();
                // ddlSponsorLeg.Enabled = false;
            }

        }
    }
     protected void btnSubmit_Click(object sender, EventArgs e)
    {
        string constr = ConfigurationManager.ConnectionStrings["constr"].ConnectionString;
               string defaultLoginPassword = ConfigurationManager.AppSettings["DefaultLoginPassword"].ToString();
              try
              {
                  SqlConnection con = new SqlConnection(constr);
                  con.Open();
                  
                        SqlCommand cmd1 = new SqlCommand("INSERT INTO tbl_users (Name,Mobileno,Email,state,city,password,dt_created,status)   VALUES          ('"+ txtCustomer.Text +"','"+ txtMobileNo.Text +"','"+ txtSponsor.Text+"','"+ ddlState.SelectedItem.Text +"','"+txtPinnum.Text+"','"+defaultLoginPassword+"',getdate(),1)", con);
                        cmd1.ExecuteNonQuery();
                        
                        //Response.Redirect("Confirm2.aspx");
                    con.Dispose();
                }
                catch (Exception ex)
                {
                    Label1.Text = ex.Message;
                }
              try
              {
                  SqlConnection con = new SqlConnection(constr);
                  con.Open();

                  SqlCommand cmd1 = new SqlCommand("select * from  tbl_users  where Name='"+txtCustomer.Text+"' and Mobileno='"+txtMobileNo.Text+"' and status=1");//)   VALUES          ('" + txtCustomer.Text + "','" + txtMobileNo.Text + "','" + txtSponsor.Text + "','" + ddlState.SelectedItem.Text + "','" + defaultLoginPassword + "',getdate(),1)", con);
                  cmd1.Connection = con;
                  SqlDataReader dr1 = cmd1.ExecuteReader();
                  string id = "", pwd = "", mobile = "", email = "", Name="";
                  while (dr1.Read())
                  {
                      id = dr1["id"].ToString(); pwd = dr1["password"].ToString(); mobile = dr1["Mobileno"].ToString(); email = dr1["Email"].ToString();
                      Name = dr1["Name"].ToString();
                  }
                  Session["id"] = id; Session["pwd"] = pwd; Session["mobile"] = mobile; Session["email"] = email; Session["Name"] = Name;

                  Response.Redirect("Confirm2.aspx");
                  con.Dispose();
              }
              catch (Exception ex)
              {
                  Label1.Text = ex.Message;
              }
       
            

        



    }
}



