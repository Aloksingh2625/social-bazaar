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

public partial class approve : System.Web.UI.Page
{
    SqlCommand cm;
    SqlConnection cn;
    SqlDataReader dr;
    protected void Page_Load(object sender, EventArgs e)
    {
       
       TextBox1.Text = Request.QueryString["Name"];
       TextBox2.Text = Request.QueryString["Address"];
       TextBox3.Text = Request.QueryString["State"];
       TextBox4.Text = Request.QueryString["City"];
       TextBox5.Text = Request.QueryString["Category"];
       TextBox6.Text = Request.QueryString["Remark"];
       TextBox7.Text = Request.QueryString["Offers"];
       TextBox8.Text = Request.QueryString["Email_ID"];
       TextBox9.Text = Request.QueryString["Password"];
       TextBox10.Text = DateTime.Now.ToShortDateString();

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string cs = ConfigurationManager.ConnectionStrings["sb"].ConnectionString;
        cn = new SqlConnection(cs);
        cn.Open();
        string k = "insert into approve_cus values('" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "','" + TextBox4.Text + "','" + TextBox5.Text + "','" + TextBox6.Text + "','" + TextBox7.Text + "','" + TextBox8.Text + "','" + TextBox9.Text + "','" + TextBox10.Text + "')";
        cm = new SqlCommand(k, cn);
        cm.ExecuteNonQuery(); 
        string k1 = "delete from cus_reg";
        cm = new SqlCommand(k1, cn);
        dr = cm.ExecuteReader();
        cn.Close();
        Label1.Text="Customer successful Approved";
    }
}
