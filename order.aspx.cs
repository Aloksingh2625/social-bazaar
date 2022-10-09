using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.HtmlControls;
using System.Data.SqlClient;
using System.Configuration;
public partial class order : System.Web.UI.Page
{
    SqlCommand cm;
    SqlConnection cn;
    SqlDataReader dr;
    protected void Page_Load(object sender, EventArgs e)
    {
        
        TextBox9.Text = DateTime.Now.Date.ToShortDateString();
        Image1.ImageUrl =(string)Session["photo"];
        TextBox5.Text = (string)Session["pname"];
        TextBox6.Text = (string)Session["category"];
        TextBox7.Text = (string)Session["description"];
        TextBox8.Text = (string)Session["price"];
    }
    
    protected void Button1_Click1(object sender, EventArgs e)
    {
        string cs = ConfigurationManager.ConnectionStrings["sb"].ConnectionString;
        cn = new SqlConnection(cs);
        cn.Open();
        string k = "insert into product_order values('" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "','" + TextBox4.Text + "','"+Image1.ImageUrl+"','" + TextBox5.Text + "','" + TextBox6.Text + "','" + TextBox7.Text + "','" + TextBox8.Text + "','" + TextBox9.Text + "','" + TextBox10.Text + "')";
        cm = new SqlCommand(k, cn);
        cm.ExecuteNonQuery();        
        cn.Close();
        Label1.Text = "Thank You ! Your Order Submitted. We will Contact Soon....";
    }
}