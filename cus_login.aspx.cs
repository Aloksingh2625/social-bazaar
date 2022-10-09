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

public partial class admin_login : System.Web.UI.Page
{
    SqlCommand cm;
    SqlConnection cn;
    SqlDataReader dr;
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Login1_Authenticate(object sender, AuthenticateEventArgs e)
    {
       
        string cs = ConfigurationManager.ConnectionStrings["sb"].ConnectionString;
        cn = new SqlConnection(cs);
        cn.Open();

        string k = "select * from approve_cus where Email_ID='"+ Login1.UserName +"'and Password='"+Login1.Password+"'";
        cm = new SqlCommand(k, cn);
        dr = cm.ExecuteReader();
        if (dr.Read())
            {

                Session["Email_ID"] = Login1.UserName.ToString();
                Response.Redirect("cus_home.aspx");
                                       
            }
            else
            {
                Response.Write("<script>alert('Please Check ID and Password')</script>");
            }

       }
        
}
