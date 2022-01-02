using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Collections;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
 

public partial class Viewprofile : System.Web.UI.Page
{
    string L = "", R = "";
    ArrayList bk;
    SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["str"]);
    SqlCommand cmd;
    SqlDataReader dr;
    int count = 0;
    double rf = 0;
    int l1 = 0, ll2 = 0, l3 = 0;
    String u1 = "", u2 = "", u3 = "", u4 = "", u5 = "", u6 = "", u7 = "", u8 = "";
    string jointype, reduserid, redside;

    public void VerifyLogin(short loginType)
    {
        if (loginType == 1)
        {
            if (Session["LoginType"] == null || Session["LoginType"].ToString() != "user")
                Response.Redirect("~/index.aspx");
        }

        else if (loginType == 0)
        {
            if (Session["LoginType"] == null || Session["LoginType"].ToString() != "admin")
                Response.Redirect("~/index.aspx");
        }


    }
    protected void Page_Load(object sender, EventArgs e)
    {
        string constr = ConfigurationManager.ConnectionStrings["constr"].ConnectionString;
        if (!IsPostBack)
        {
            VerifyLogin(1);
            Session["isTransactionMade"] = false;

            //lblErrorMessage.Text = "";
            //tblPinPurchase.Visible = false;





            VerifyLogin(1);



            try
            {
                SqlConnection con = new SqlConnection(constr);
                con.Open();
                string str = "select * from  tbl_users  where id=" + Session["id"].ToString() + " and status=1";
                SqlCommand cmd1 = new SqlCommand(str);//)   VALUES          ('" + txtCustomer.Text + "','" + txtMobileNo.Text + "','" + txtSponsor.Text + "','" + ddlState.SelectedItem.Text + "','" + defaultLoginPassword + "',getdate(),1)", con);
                cmd1.Connection = con;
                SqlDataReader dr1 = cmd1.ExecuteReader();
                string id = "", pwd = "", mobile = "", email = "", Name = "", dt = "", State = "", city = "";
                while (dr1.Read())
                {
                    id = dr1["id"].ToString(); pwd = dr1["password"].ToString(); mobile = dr1["Mobileno"].ToString(); email = dr1["Email"].ToString();
                    Name = dr1["Name"].ToString(); dt = dr1["dt_created"].ToString(); State = dr1["state"].ToString();
                    city = dr1["city"].ToString();
                }

                lblMemberID.Text = id;
                lblMemdberName.Text = Name; lblMemdberName0.Text = mobile;
                lblDateofJoining.Text = dt; lblSponsorID.Text = State;
                lblSponsorName.Text = city;
                con.Dispose();
            }
            catch (Exception ex)
            {
                lblMemberID.Text = ex.Message;
            }

            finally
            {

            }




        }





    }
    ////Circle
}



