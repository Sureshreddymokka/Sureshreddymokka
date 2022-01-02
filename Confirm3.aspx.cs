using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.UI;
using MLM.BRFactory;
using MLM.Entities;
using MLM.Common;
using System.Net;
using System.IO;
using System.Data.SqlClient;
using System.Configuration;
using MLM.BRFactory;
using MLM.Entities;
using MLM.Common;
using System.Collections;
using System.Data;
using System.Data.SqlClient;
public partial class Confirm3 : System.Web.UI.Page
{
    // public string defaultLoginPassword = System.Configuration.ConfigurationManager.AppSettings["DefaultLoginPassword"].ToString();
    // public string defaultTransactionPassword = System.Configuration.ConfigurationManager.AppSettings["DefaultTransactionPassword"].ToString();
    String mob = "";
    String memname = "";
    protected string strSMSMessage;
    protected string strCustomerPhoneNo;
    public string defaultLoginPassword = ConfigurationManager.AppSettings["DefaultLoginPassword"].ToString();
    public string defaultTransactionPassword = ConfigurationManager.AppSettings["DefaultTransactionPassword"].ToString();
    public string serverDateTime = DateTime.Now.Day.ToString() + "/" + DateTime.Now.Month.ToString() + "/" + DateTime.Now.Year.ToString() + " " + DateTime.Now.ToLongTimeString();

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
        VerifyLogin(1);


        MemberEntity member = new MemberEntity();

        if (Convert.ToString(Session["NewMember"]) == null || Convert.ToString(Session["NewMember"]) == "")
        {
            member = (MemberEntity)Session["MemberEntity"];
            strSMSMessage = "Dear Customer," + Request.QueryString[2] + ",Your ID No=" + Request.QueryString[0].ToString() + " Activated for Binary Plus";

            strCustomerPhoneNo = Request.QueryString[1].ToString();

        }
        else
        {

            member = (MemberEntity)Session["NewMember"];

           // lblCustomerNo.Text = member.ApplicationId.ToString();
            lblCustName.Text = member.Name.ToString();
            //  lblPassword.Text = member.Password;
            // lblSponsorNo.Text = member.SponsorId.ToString();
            //  lblLeg.Text = member.Leg == 1 ? "Left" : "Right";
            lblDOJ.Text = DateTime.Now.ToShortDateString();// member.JoiningDate.ToShortDateString(); 
            string constr = ConfigurationManager.ConnectionStrings["constr"].ConnectionString;
            lblCustName.Text = member.Name;

            SqlConnection con1 = new SqlConnection(constr);
            SqlConnection con = new SqlConnection(constr);
            //Dear Customer,Welcome to Best Life Bheema Agents.Your login Customer No=" + member.ApplicationId.ToString() + ".and password=369 and Trn.Pwd=" + member.TransactionPassword.ToString() + ".Get Incentives of BLBA.";
            strCustomerPhoneNo = member.MobileNo;
            // string constr = ConfigurationManager.ConnectionStrings["constr"].ConnectionString;
            try
            {
                //   SqlConnection con1 = new SqlConnection(constr);
                con1.Open();
                String txtapplicationid = member.ApplicationId.ToString();

                con.Open();
                int k = 0;

                // SqlCommand cmdq = new SqlCommand("update transactions set MemberId="+Session["memid"].ToString()+" where [Description] like '%REFERAL-"+ txtapplicationid+"%'", con);
                //   SqlDataReader drq = cmdq.ExecuteReader();
                // cmdq.Dispose();
                // drq.Close();


                SqlCommand cmd = new SqlCommand("select * from members where TransactionPassword=" + member.TransactionPassword + " and mobileno='" + member.MobileNo + "' and name='" + member.Name + "'", con);
                SqlDataReader dr = cmd.ExecuteReader();
                int memberid = 0;
                String nm = "";
                while (dr.Read())
                {
                    //  Label1.Text = "<font color=green>" + dr["name"].ToString() + "</font>";
                    k = 9;
                    memname = dr["name"].ToString();
                    memberid = Int16.Parse(dr["memberid"].ToString());
                    mob = dr["MobileNo"].ToString();
                    nm = dr["NomineeName"].ToString();
                }
                dr.Dispose();
                cmd.Dispose(); lblCustomerNo.Text = nm;
                strSMSMessage = "Dear Member, Welcome to Online Cosultation.Thank you for purchasing product. LoginID=" + nm + ",Pwd=" + member.Password + ",Trn.Pwd=" + member.TransactionPassword.ToString() + " from Online Cosultation.co.in *T and C Apply";
           
                String result = GetPageContent("http://www.vnssms.in/quicksms/api.php?username=maxbulksms&password=123456789&to=" + strCustomerPhoneNo + "&from=BNPLOY&message=" + strSMSMessage);

                SqlCommand cmd1 = new SqlCommand("select count(*) from transactions where memberid in(Select MemberId from Members where ApplicationId=" + Session["spid"].ToString() + ") and  [Description] like '%Refferal-%' and amount=600", con);
                SqlDataReader dr1 = cmd1.ExecuteReader();

                while (dr1.Read())
                {
                    //  Label1.Text = "<font color=green>" + dr["name"].ToString() + "</font>";
                    k = Convert.ToInt32(dr1[0]);
                }
                dr1.Dispose();
                cmd1.Dispose();

               
            }
            catch (Exception ex)
            {
                //Label1.Text = ex.Message;
            }
            finally
            {

                con.Close();
                con1.Close();
            }

           
         

        }





        // strCustomerPhoneNo = member.PhoneRes != "" ? member.PhoneRes : "";

    }
    public void sendsms(String MemId)
    {
        string constr = ConfigurationManager.ConnectionStrings["constr"].ConnectionString;
        try
        {
            SqlConnection con1 = new SqlConnection(constr);
            con1.Open();
            SqlCommand cmdxx1 = new SqlCommand("select * from members  where applicationid=" + MemId, con1);
            SqlDataReader drxx1 = cmdxx1.ExecuteReader();
            String mobi = "";
            String memname1 = "";
            while (drxx1.Read())
            {
                mobi = drxx1["MobileNo"].ToString();
                memname1 = drxx1["name"].ToString();
            }
            cmdxx1.Dispose();
            drxx1.Dispose();
            //String result = GetPageContent("http://www.vnssms.in/quicksms/api.php?username=maxbulksms&password=123456789&to=" + mobi + "&from=BNPLOY&message=Dear " + memname + ", Congratulations, you have promoted to Box - 1. Thank you from Online Cosultation");
            con1.Close();

        }
        catch (Exception ex)
        {
            // Label1.Text = ex.Message;
        }

    }
    private static string GetPageContent(string FullUri)
    {
        HttpWebRequest Request;
        StreamReader ResponseReader;
        Request = ((HttpWebRequest)(WebRequest.Create(FullUri)));
        ResponseReader = new StreamReader(Request.GetResponse().GetResponseStream());
        return ResponseReader.ReadToEnd();
    }
}