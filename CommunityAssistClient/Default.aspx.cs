using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void LoginButton_Click(object sender, EventArgs e)
    {
        AssistServiceReference.AssistServiceServiceClient sc = new AssistServiceReference.AssistServiceServiceClient();

        int result = sc.Login(EmailTextBox.Text, PasswordTextBox.Text);

        if (result != 0)
        {
            Session["userKey"] = result;
            ResultLabel.Text = "Welcome";
        }
        else
        {
            ResultLabel.Text = "Invalid Login";
        }

    }
}