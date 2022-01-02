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
public partial class Confirm2 : System.Web.UI.Page
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
        


    }
    protected void Page_Load(object sender, EventArgs e)
    {
        


            lblCustName.Text = Session["Name"].ToString();
            lblpwd.Text = Session["pwd"].ToString();
            lblCustomerNo.Text = Session["id"].ToString();
              lblDOJ.Text = DateTime.Now.ToShortDateString();// member.JoiningDate.ToShortDateString(); 
            string constr = ConfigurationManager.ConnectionStrings["constr"].ConnectionString;
          
            SqlConnection con1 = new SqlConnection(constr);
         
    }
    public void sendsms(String MemId)
    {
        string constr = ConfigurationManager.ConnectionStrings["constr"].ConnectionString;
        try
        {
            SqlConnection con1 = new SqlConnection(constr);
            con1.Open();
            SqlCommand cmdxx1 = new SqlCommand("select * from members  where memberid=" + MemId, con1);
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