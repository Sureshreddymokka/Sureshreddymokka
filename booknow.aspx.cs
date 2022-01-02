using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Globalization;
using System.Configuration;

public partial class booknow : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        String id = Request["ID"].ToString();
        int  km =Int32.Parse(Request["hh"].ToString());
        String slot = Request["slot"].ToString();
        Label1.Text = "id=" + id + "<br>date: " + Session["dt"].ToString();
        string slottime = "";
        string constr = ConfigurationManager.ConnectionStrings["constr"].ConnectionString;
        string defaultLoginPassword = ConfigurationManager.AppSettings["DefaultLoginPassword"].ToString();
        if (slot.Equals("15"))
        {
            if (id.Equals("1"))
            {
                slottime = km + ":15";

            } if (id.Equals("2"))
            {
                slottime = km + ":30";

            } if (id.Equals("3"))
            {
                slottime = km + ":45";

            } if (id.Equals("4"))
            {
                slottime = km + ":"+km+1;

            } 
            if (id.Equals("5"))
            {
                slottime = km + 1 + ":15";

            } if (id.Equals("6"))
            {
                slottime = km + 1 + ":15";

            } if (id.Equals("7"))
            {
                slottime = km + 1 + ":15";

            } if (id.Equals("8"))
            {
                slottime = km + 1 + ":"+km + 2 ;

            }

        } if (slot.Equals("30"))
        {
            if (id.Equals("1"))
            {
                slottime = km + ":30";

            } if (id.Equals("2"))
            {
                slottime = km + ":"+ km + 1;

            } if (id.Equals("3"))
            {
                slottime = km + 1 + ":30";

            } if (id.Equals("4"))
            {
                slottime = km + 1 + ":" + km + 2;

            } if (id.Equals("5"))
            {
                slottime = km + 2 + ":30";

            } if (id.Equals("6"))
            {
                slottime = km + 2 + ":" + km + 3;

            } if (id.Equals("7"))
            {
                slottime = km + 3 + ":30";

            } if (id.Equals("8"))
            {
                slottime = km + 3 + ":" + km + 4;

            }

        }
        try
        {
            SqlConnection con = new SqlConnection(constr);
            con.Open();
            string sql = "INSERT INTO tbl_bookedslots(slot,dt_booked,doctor_id,patent_id,status,slottime)   VALUES (" + id + ",'" + Session["dt"].ToString() + "'," + Session["did"].ToString() + "," + Session["id"].ToString() + ",1,'"+slottime+"')";
            SqlCommand cmd1 = new SqlCommand(sql, con);
            cmd1.ExecuteNonQuery();
            Label1.Text = "<font color=green><b>Record Updated</b></font>";
            //Response.Redirect("Confirm2.aspx");
            con.Dispose();
        }
        catch (Exception ex)
        {
            Label1.Text = ex.Message;
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        String id = Request["ID"].ToString();
        Response.Redirect("bookAppointment.aspx?pid=" + Session["id"].ToString() + "&id=" + Session["did"].ToString() + "&dt=" + Session["dt"].ToString());
    }
}