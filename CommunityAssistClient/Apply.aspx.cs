using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Apply : System.Web.UI.Page
{
    AssistServiceReference.AssistServiceServiceClient sc = new AssistServiceReference.AssistServiceServiceClient();
    int selectedgranttype;

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack) { 
        if (Session["userKey"] == null)
            Response.Redirect("Default.aspx");
        FillGrantTypesList();
        }
        else
        {
            selectedgranttype = GrantTypesDropDownList.SelectedIndex;
        }
    }

    protected void FillGrantTypesList()
    {
        string[] granttypes = sc.GetGrantTypes();

        GrantTypesDropDownList.DataSource = granttypes;
        GrantTypesDropDownList.DataBind();
        ListItem item = new ListItem("Select Grant Type");
        GrantTypesDropDownList.Items.Insert(0, item);
    }


    protected void ApplyButton_Click(object sender, EventArgs e)
    {
        int type = selectedgranttype;
        string explanation = RequestExplanationTextBox.Text;
        decimal amount = decimal.Parse(RequestAmountTextBox.Text);
        int key = int.Parse(Session["userKey"].ToString());
        int result = sc.RequestGrant(type, explanation, amount, key);

        if(result != 0)
        {
            ApplicationResultLabel.Text = "Application successfully submitted";
        }
        else
        {
            ApplicationResultLabel.Text = "Something went wrong";
        }

    }

    protected void GrantTypesDropDownList_SelectedIndexChanged(object sender, EventArgs e)
    {
        selectedgranttype = GrantTypesDropDownList.SelectedIndex;

    }
}