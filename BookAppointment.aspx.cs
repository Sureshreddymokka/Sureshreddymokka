using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Globalization;
public partial class BookAppointment : System.Web.UI.Page
{
    public void bindg1()
    {
        String id = Request["ID"].ToString();
        string constr = ConfigurationManager.ConnectionStrings["constr"].ConnectionString;
         try
        {
            SqlConnection con1 = new SqlConnection(constr);
            con1.Open();


            using (SqlCommand cmd = new SqlCommand("select YEAR(day) AS Year,MONTH(day) AS month,DAY(day) AS DayOfMonth,* from tbl_timetable t,tbl_doctors d where d.id=t.doctor_id and t.doctor_id=" + id))
            {

                cmd.Connection = con1;
                SqlDataReader dr;
                dr = cmd.ExecuteReader();
                String t1 = null, t2 = null;
                int yy=0, mm=0, dd=0,h1=0,h2=0,m1=0,m2=0,s1=0,s2=0;
                while (dr.Read())
                {
                  Label1.Text = dr["name"].ToString();
                  Label2.Text = "<b>From: </b>" + dr["fromtime"].ToString() + " : " + dr["fromtime2"].ToString() + "<b>&nbsp;&nbsp;&nbsp;&nbsp;To: </b>" + dr["totime"].ToString() + " : " + dr["totime2"].ToString();
                    yy=Int32.Parse( dr["Year"].ToString());
                    mm=Int32.Parse( dr["month"].ToString());
                    dd=Int32.Parse( dr["DayOfMonth"].ToString());
                    h1 = Int32.Parse(dr["fromtime"].ToString());
                    h2 = Int32.Parse(dr["totime"].ToString());
                    m1 = Int32.Parse(dr["fromtime2"].ToString());
                    m2 = Int32.Parse(dr["totime2"].ToString());
                    
                }

                DateTime date1 = new DateTime(yy, mm, dd, h1,m1,s1);
                DateTime date2 = new DateTime(yy, mm, dd, h2, m2, s2);
                 TimeSpan ts1 = date2 - date1; 
                double k = ts1.TotalMinutes;
                 k = k / 15;
               // Label3.Text =   k + "<br>";
                string str = "<table border=1 width=100% cellspacing=15 cellpadding=5><tr>";
                string str1 = "";
                for (int p = 1; p <=k; p++)
                {
                    
                    str1 = str1 + "<td bgcolor=green><font color=#fff>Slot " + p + "</font></td>";

                }
                Literal1.Text = str + str1 + "</tr></table>";
                 dr.Close();
                cmd.Dispose();
            }

            con1.Close();

        }
        catch (Exception ex)
        {
            // Label1.Text = ex.Message;
        }
    }
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {   bindg1();   }

    }
}