using System;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using MLM.BRFactory;
using MLM.Entities;
using MLM.Common;
using System.Collections;

public partial class MasterPage3 : System.Web.UI.MasterPage
{
     protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["LoginType"] == null)
            {
                Response.Redirect("~/index.aspx");
            }
                  
                 
        }
        
        
        protected void lnkLogout_Click(object sender, EventArgs e)
        {
          
            Session["LoginType"] = null;
            Session["MemberEntity"] = null;
            Session.Abandon();
            Session.Clear();
            
          
            Response.Redirect("~/index.aspx");
          
        }
        
    }
 
