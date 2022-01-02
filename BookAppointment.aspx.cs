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
    public void bindg11()
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
                int yy = 0, mm = 0, dd = 0, h1 = 0, h2 = 0, m1 = 0, m2 = 0, s1 = 0, s2 = 0;
                while (dr.Read())
                {
                    Label1.Text = dr["name"].ToString();
                    Label2.Text = "<b>From: </b>" + dr["fromtime"].ToString() + " : " + dr["fromtime2"].ToString() + "<b>&nbsp;&nbsp;&nbsp;&nbsp;To: </b>" + dr["totime"].ToString() + " : " + dr["totime2"].ToString();
                    yy = Int32.Parse(dr["Year"].ToString());
                    mm = Int32.Parse(dr["month"].ToString());
                    dd = Int32.Parse(dr["DayOfMonth"].ToString());
                    h1 = Int32.Parse(dr["fromtime"].ToString());
                    h2 = Int32.Parse(dr["totime"].ToString());
                    m1 = Int32.Parse(dr["fromtime2"].ToString());
                    m2 = Int32.Parse(dr["totime2"].ToString());

                }

                 
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

               // DateTime date1 = new DateTime(yy, mm, dd, h1,m1,s1);
               // DateTime date2 = new DateTime(yy, mm, dd, h2, m2, s2);
               //  TimeSpan ts1 = date2 - date1; 
               // double k = ts1.TotalMinutes;
               //  k = k / 15;
               //// Label3.Text =   k + "<br>";
               // string str = "<table border=1 width=100% cellspacing=15 cellpadding=5><tr>";
               // string str1 = "";
               // for (int p = 1; p <=k; p++)
               // {

               //     str1 = str1 + "<td bgcolor=#343a40><font color=#fff>Slot " + p + "</font></td>";

               // }
               // str1 = str1 + "</tr><tr>";
               // for (int p = 1; p <= k; p++)
               // {
                    
               //     str1 = str1 + "<td  ><a href=booknow.aspx?id=" + p + "&dt="+ Calendar1.SelectedDate.ToShortDateString()+">Book</a></td>";

               // }
               // Literal1.Text = str + str1 + "</tr></table>";
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
        {  
            
            bindg11();
  
        
        }
       
    }
    protected void Calendar1_SelectionChanged(object sender, EventArgs e)
    {
        String id = Request["ID"].ToString();
        Session["did"] = id;
       // Label3.Text = Calendar1.SelectedDate.ToShortDateString();
        Session["dt"] = Calendar1.SelectedDate.ToShortDateString();
        int slot = 15, km = 0; ;
            //sString mn = Request["mn"].ToString();

            String dt = Calendar1.SelectedDate.ToShortDateString();
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
                    int yy = 0, mm = 0, dd = 0, h1 = 0, h2 = 0, m1 = 0, m2 = 0, s1 = 0, s2 = 0;
                    while (dr.Read())
                    {
                        Label1.Text = dr["name"].ToString();
                        Label2.Text = "<b>From: </b>" + dr["fromtime"].ToString() + " : " + dr["fromtime2"].ToString() + "<b>&nbsp;&nbsp;&nbsp;&nbsp;To: </b>" + dr["totime"].ToString() + " : " + dr["totime2"].ToString();
                        yy = Int32.Parse(dr["Year"].ToString());
                        mm = Int32.Parse(dr["month"].ToString());
                        dd = Int32.Parse(dr["DayOfMonth"].ToString());
                        h1 = Int32.Parse(dr["fromtime"].ToString());
                        h2 = Int32.Parse(dr["totime"].ToString());
                        m1 = Int32.Parse(dr["fromtime2"].ToString());
                        m2 = Int32.Parse(dr["totime2"].ToString());
                        km = h1;
                    }

                    DateTime date1 = new DateTime(yy, mm, dd, h1, m1, s1);
                    DateTime date2 = new DateTime(yy, mm, dd, h2, m2, s2);
                    TimeSpan ts1 = date2 - date1;
                    double k = ts1.TotalMinutes;
                    k = k / slot; string pp = "";

                    
                    string str = "<table border=1 width=100% cellspacing=15 cellpadding=5><tr>";
                    string str1 = "";
                    for (int p = 1; p <= k; p++)
                    {
                        int g = p * slot;
                        if (slot == 15)
                        {
                            if (g == 60)
                            {
                                g = h1 + 1;

                            }
                            if (g > 60 && g <= 75)
                            {
                                g = p * slot;
                                g = g - 60;
                                h1 = h1 + 1;
                            }
                            if (g > 75 && g <= 90)
                            {
                                g = p * slot;
                                g = g - 30; g = g - 30;
                                //h1 = h1 + 1;
                            }
                            if (g > 90 && g <= 105)
                            {
                                g = p * slot;
                                g = 45;
                                //h1 = h1 + 1;
                            } if (g > 105 && g <= 120)
                            {
                                g = p * slot;
                                g = h1 + 1;
                                //h1 = h1 + 1;
                            }

                            str1 = str1 + "<td bgcolor=#343a40><font color=#fff>Slot " + p + "(" + h1 + "-" + g + ")</font></td>";
                        }
                        else if (slot == 30)
                        {
                              g = p * slot;
                            if (slot == 30)
                            {
                                if (g == 60)
                                {
                                    g = h1 + 1;

                                }
                                if (g > 60 && g <= 90)
                                {
                                    g = p * slot;
                                    g = g - 60;
                                    h1 = h1 + 1;
                                }
                                if (g > 90 && g <= 120)
                                {
                                    g = p * slot;  
                                    g = h1+1;
                                    //h1 = h1 + 1;
                                }
                                if (g > 90 && g <= 105)
                                {
                                    g = p * slot;
                                    g = 45;
                                    //h1 = h1 + 1;
                                } if (g > 105 && g <= 120)
                                {
                                    g = p * slot;
                                    g = 12;
                                    //h1 = h1 + 1;
                                }

                                str1 = str1 + "<td bgcolor=#343a40><font color=#fff>Slot " + p + "(" + h1 + "-" + g + ")</font></td>";

                            }
                        }
                    }
                    str1 = str1 + "</tr><tr>";
                    Response.Write(pp);
                    // String[] spearator = ",";
                    String[] strlist = pp.Split(',');

                    for (int p = 1; p <= k; p++)
                    {
                        int h = 0;

                        try
                        {
                            SqlConnection conx = new SqlConnection(constr);
                            conx.Open();
                            string sql = "SELECT distinct slot,dt_booked,doctor_id,patent_id,status  FROM  tbl_bookedslots where doctor_id=" + id + " and patent_id=" + Session["id"].ToString() + " and status=1 and dt_booked='" + dt + "' and slot="+p;
                            SqlCommand cmd1 = new SqlCommand(sql);
                            cmd1.Connection = conx;
                            SqlDataReader dr1;
                            dr1 = cmd1.ExecuteReader();
                            while (dr1.Read())
                            {
                                h = 9;
                            }
                            dr1.Close();
                            cmd1.Dispose();
                            conx.Close();
                        }
                        catch (Exception ex)
                        {
                            // Label1.Text = ex.Message;
                        }


                        if (h == 9)
                        {
                            str1 = str1 + "<td bgcolor=red ><a href=#><font color=#fff>Booked</font></a></td>";
                          
                        }
                        else
                        {h1=h1-1;
                            str1 = str1 + "<td  bgcolor=green><a href=booknow.aspx?hh="+km+"&slot="+slot+"&id=" + p + "&dt=" + Calendar1.SelectedDate.ToShortDateString() + "><font color=#fff>Book</font></a></td>";
                        }
                        h = 0;
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
}