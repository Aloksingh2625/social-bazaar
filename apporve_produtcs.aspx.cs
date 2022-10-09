using System;
using System.Data;
using System.Configuration;
using System.Collections;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Data.SqlClient;
public partial class apporve_cus : System.Web.UI.Page
{
    SqlCommand cm;
    SqlConnection cn;
    SqlDataReader dr;
    protected void Page_Load(object sender, EventArgs e)
    {
        string cs = ConfigurationManager.ConnectionStrings["sb"].ConnectionString;
        
            cn = new SqlConnection(cs);
            cn.Open();
            
            string k = "select * from approve_products";
            cm = new SqlCommand(k, cn);
            dr = cm.ExecuteReader();
            GridView1.DataSource = dr;
            GridView1.DataBind();
    }
}
