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

public partial class _Default : System.Web.UI.Page
{
    SqlCommand cm;
    SqlConnection cn;
    SqlDataReader dr;
    protected void Page_Load(object sender, EventArgs e)
    {

        TextBox8.Text = DateTime.Now.ToShortDateString();    
        string cs = ConfigurationManager.ConnectionStrings["sb"].ConnectionString;
            if (!IsPostBack)
            { 
            cn = new SqlConnection(cs);
            cn.Open();
            string k = "select state from city_state group by state";
            cm = new SqlCommand(k, cn);
            dr = cm.ExecuteReader();
            ListBox1.DataSource = dr;
            ListBox1.DataTextField = "state";
            ListBox1.DataBind();
        }
    }
    protected void ListBox1_SelectedIndexChanged(object sender, EventArgs e)
    {
         string cs = ConfigurationManager.ConnectionStrings["sb"].ConnectionString;
         int i;
         for (i = 0; i < ListBox1.Items.Count; i++)
         { 
            cn = new SqlConnection(cs);
            cn.Open();
            if (ListBox1.SelectedIndex == i)
            {

                string k = "select city from city_state where state='" + ListBox1.Items[i].Text + "'group by city";
            cm = new SqlCommand(k, cn);
            dr = cm.ExecuteReader();
            ListBox2.DataSource = dr;
            ListBox2.DataTextField = "city";
            ListBox2.DataBind();
        }
        }
    }
    protected void ListBox2_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
      
        string cs = ConfigurationManager.ConnectionStrings["sb"].ConnectionString;

        cn = new SqlConnection(cs);
            cn.Open();
            string k = "insert into cus_reg values('" + TextBox1.Text + "','" + TextBox2.Text + "','" + ListBox1.Text + "','" + ListBox2.Text + "','" + TextBox3.Text + "','" + TextBox4.Text + "','" + TextBox5.Text + "','" + TextBox6.Text + "','" + TextBox7.Text + "','" + TextBox8.Text + "')";
            cm = new SqlCommand(k, cn);
            dr = cm.ExecuteReader();
            
    }
}
