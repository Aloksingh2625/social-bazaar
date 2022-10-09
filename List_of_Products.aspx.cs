using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.HtmlControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class List_of_Products : System.Web.UI.Page
{
    SqlCommand cm;
    SqlConnection cn;
    SqlDataReader dr;
    protected void Page_Load(object sender, EventArgs e)
    {
        TextBox1.Text = (string)Session["Email_ID"];
         string cs = ConfigurationManager.ConnectionStrings["sb"].ConnectionString;
         if (!IsPostBack)
         {
             cn = new SqlConnection(cs);
             cn.Open();
             string k1 = "select * from approve_products where salername='" + TextBox1.Text + "'";
             cm = new SqlCommand(k1, cn);
             dr = cm.ExecuteReader();
             GridView1.DataSource = dr;
             GridView1.DataBind();
             cn.Close();

         }
   
    }
}