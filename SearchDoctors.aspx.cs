using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Configuration;
using System.Data;
using System.Data.SqlClient;

public partial class SearchDoctors : System.Web.UI.Page
{
    public void bindg1()
    {
        string constr = ConfigurationManager.ConnectionStrings["constr"].ConnectionString;
        try
        {
            SqlConnection con1 = new SqlConnection(constr);
            con1.Open();
            SqlDataAdapter dap = new SqlDataAdapter("select * from tbl_doctors  where status=1", con1);

            using (DataTable dt = new DataTable())
            {
                dap.Fill(dt);
                DropDownList1.DataTextField = "name";
                DropDownList1.DataValueField = "id";
                DropDownList1.DataSource = dt;
                DropDownList1.DataBind();
            }
            ListItem li = new ListItem("--Select--", "");
            DropDownList1.Items.Insert(0, li);
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
    protected void Button2_Click(object sender, EventArgs e)
    {
        string constr = ConfigurationManager.ConnectionStrings["constr"].ConnectionString;
        try
        {
            SqlConnection con1 = new SqlConnection(constr);
            con1.Open();
            SqlDataAdapter dap = new SqlDataAdapter("select * from tbl_doctors d,tbl_diseases t  where d.Diseaseid=t.id AND d.status=1 AND Name='"+ DropDownList1.SelectedItem.Text+"'", con1);

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
    protected void Button1_Click(object sender, EventArgs e)
    {
        string constr = ConfigurationManager.ConnectionStrings["constr"].ConnectionString;
        try
        {
            SqlConnection con1 = new SqlConnection(constr);
            con1.Open();
            SqlDataAdapter dap = new SqlDataAdapter("select * from tbl_doctors d,tbl_diseases t  where d.Diseaseid=t.id AND d.status=1 AND diseasename like '"+TextBox1.Text+"%'", con1);

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
}