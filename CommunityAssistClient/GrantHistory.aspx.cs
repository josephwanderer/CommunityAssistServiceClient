using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class GrantHistory : System.Web.UI.Page
{
    AssistServiceReference.AssistServiceServiceClient sc = new AssistServiceReference.AssistServiceServiceClient();
    AssistServiceReference.GrantRequestInfo[] gri; 

    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["userKey"] == null)
            Response.Redirect("Default.aspx");

        AssistServiceReference.GrantRequestInfo[] gri;

        gri = sc.ViewGrants(int.Parse(Session["userKey"].ToString()));

        GridView1.DataSource = gri;
        GridView1.DataBind();

    }

}