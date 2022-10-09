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

public partial class Social_Bazaar_Products : System.Web.UI.Page
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
        cn.Close();
    }   
    protected void  ListBox1_SelectedIndexChanged(object sender, EventArgs e)
{
    string cs = ConfigurationManager.ConnectionStrings["sb"].ConnectionString;
    cn = new SqlConnection(cs);
    cn.Open();
    string k = "select * from approve_products where category='" + ListBox1.Text + "', group by category";
    cm = new SqlCommand(k, cn);
    dr = cm.ExecuteReader();
    GridView1.DataSource = dr;
    GridView1.DataBind();
    cn.Close();

}
}
   

