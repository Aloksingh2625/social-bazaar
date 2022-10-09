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

public partial class add_city_state : System.Web.UI.Page
{
    SqlCommand cm;
    SqlConnection cn;    
    protected void Page_Load(object sender, EventArgs e)
    {
       
    }
    protected void Button1_Click(object sender, EventArgs e)
    {

        if (TextBox1.Text == "" || TextBox2.Text == "")
        {
            Label1.Text = "Please Insert State and City";
        }
        else
        {
            string cs = ConfigurationManager.ConnectionStrings["sb"].ConnectionString;
            cn = new SqlConnection(cs);
            cn.Open();
            string k = "insert into city_state values('" + TextBox1.Text + "' ,'" + TextBox2.Text + "')";
            cm = new SqlCommand(k, cn);
            cm.ExecuteNonQuery();
            TextBox1.Text = "";
            TextBox2.Text = "";
            Label1.Text = "State and City Successfully Inserted";
        }
    }
}
