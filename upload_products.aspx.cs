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
public partial class upload_products : System.Web.UI.Page
{
    SqlCommand cm;
    SqlConnection cn;
    SqlDataReader dr;
    protected void Page_Load(object sender, EventArgs e)
    {
        
        TextBox6.Text = DateTime.Now.ToShortDateString();
        

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string p = MapPath("~/produtcs/" + FileUpload1.FileName);     
        TextBox4.Text = FileUpload1.FileName;
        Image1.ImageUrl = "~/produtcs/" + FileUpload1.FileName;
        FileUpload1.SaveAs(p);
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        string cs = ConfigurationManager.ConnectionStrings["sb"].ConnectionString;
        cn = new SqlConnection(cs);
        cn.Open();
        string k = "insert into produts values('" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "','" + TextBox4.Text + "','" + TextBox5.Text + "','" + TextBox6.Text + "')";
        cm = new SqlCommand(k, cn);
        cm.ExecuteNonQuery();
        TextBox1.Text = "";
        TextBox2.Text = "";
        TextBox3.Text = "";
        TextBox4.Text = "";
        TextBox5.Text = "";        
    }
}
