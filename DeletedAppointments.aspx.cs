using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Configuration;
using System.Data;
using System.Data.SqlClient;

public partial class DeletedAppointments : System.Web.UI.Page
{
    public void bindg()
    {
        string constr = ConfigurationManager.ConnectionStrings["constr"].ConnectionString;
        try
        {
            SqlConnection con1 = new SqlConnection(constr);
            con1.Open();
            SqlDataAdapter dap = new SqlDataAdapter("SELECT   t.id,CONVERT(VARCHAR(20),dt_booked,105) as dt_booked,Name,Mobile,Email ,slottime FROM  tbl_bookedslots t,tbl_doctors d where t.doctor_id=d.id and t.status=0 and patent_id=" + Session["id"].ToString(), con1);

            using (DataTable dt = new DataTable())
            {
                dap.Fill(dt);
                GridView1.DataSource = dt;
                GridView1.DataBind();
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
            bindg();
        }
    }
    protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        int customerId = Convert.ToInt32(GridView1.DataKeys[e.RowIndex].Values[0]);
        string constr = ConfigurationManager.ConnectionStrings["constr"].ConnectionString;
        // Label1.Text = "" + customerId;
        using (SqlConnection con = new SqlConnection(constr))
        {
            using (SqlCommand cmd = new SqlCommand("update tbl_bookedslots set status=0 WHERE Id = " + customerId))
            {

                cmd.Connection = con;
                con.Open();
                cmd.ExecuteNonQuery();
                con.Close();
            }
        }
        //this.BindGrid();
        bindg();
    }
}