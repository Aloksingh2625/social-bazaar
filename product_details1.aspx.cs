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

public partial class product_details : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Image1.ImageUrl = "~/produtcs/" + Request.QueryString["photo"];
        Label1.Text = Request.QueryString["pname"];
        Label2.Text = Request.QueryString["category"];
        Label3.Text = Request.QueryString["description"];
        Label4.Text = Request.QueryString["price"];
    }
}
