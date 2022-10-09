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
public partial class confirm_products_approve : System.Web.UI.Page
{
    SqlCommand cm;
    SqlConnection cn;
    SqlDataReader dr;
    protected void Page_Load(object sender, EventArgs e)
    {
        TextBox1.Text = Request.QueryString["pname"];
        TextBox2.Text = Request.QueryString["category"];
        TextBox3.Text = Request.QueryString["description"];
        TextBox4.Text = Request.QueryString["photo"];
        TextBox5.Text = Request.QueryString["price"];
        TextBox6.Text = DateTime.Now.ToShortDateString();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string cs = ConfigurationManager.ConnectionStrings["sb"].ConnectionString;
        cn = new SqlConnection(cs);
        cn.Open();
        string k = "insert into approve_products values('" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "','" + TextBox4.Text + "','" + TextBox5.Text + "','" + TextBox6.Text + "')";
        cm = new SqlCommand(k, cn);
        cm.ExecuteNonQuery();
        string k1 = "delete from produts";
        cm = new SqlCommand(k1, cn);
        dr = cm.ExecuteReader();
        cn.Close();
        Label1.Text = "Customer successful Approved";
    }
}
