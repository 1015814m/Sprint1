using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using PayPal.Api;

public partial class VendorHome : System.Web.UI.Page
{
    private int loginType;
    private RewardProvider user;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["employeeLoggedIn"] == null)
        {
            Response.Redirect("Login.aspx");
        }
        if (Session["employeeLoggedIn"].ToString() != "True")
        {
            Response.Redirect("Login.aspx");
        }
        loginType = (int)Session["login"];
        if (loginType == 2)
        {
            Response.Redirect("Admin.aspx");
        }
        else if (loginType == 1)
        {
            Response.Redirect("HomePage.aspx");
        }
        else if (loginType == -1)
        {
            Response.Redirect("Logout.aspx");
        }
        else
        {
            user = (RewardProvider)Session["user"];
        }

        test();
    }

    protected void test()
    {
        try
        {
            var config = ConfigManager.Instance.GetProperties();

            var accessToken = new OAuthTokenCredential(config).GetAccessToken();

            var apiContext = new APIContext(accessToken);

            var payout = new Payout
            {
                sender_batch_header = new PayoutSenderBatchHeader
                {
                    sender_batch_id = "10",
                    email_subject = "You have a payment"
                },

                items = new List<PayoutItem>
                {
                    new PayoutItem
                    {
                        recipient_type = PayoutRecipientType.EMAIL,
                        amount = new Currency
                        {
                            value = "0.99",
                            currency = "USD"
                        },
                        receiver = "morri4js@dukes.jmu.edu",
                        note = "Thank you.",
                        sender_item_id = "item_1"
                    },
                    new PayoutItem
                    {
                        recipient_type = PayoutRecipientType.EMAIL,
                        amount = new Currency
                        {
                            value = "0.90",
                            currency = "USD"
                        },
                        receiver = "morri4js@dukes.jmu.edu",
                        note = "Thank you.",
                        sender_item_id = "item_2"
                    },
                    new PayoutItem
                    {
                        recipient_type = PayoutRecipientType.EMAIL,
                        amount = new Currency
                        {
                            value = "2.00",
                            currency = "USD"
                        },
                        receiver = "morri4js@dukes.jmu.edu",
                        note = "Thank you.,",
                        sender_item_id = "morri4js@dukes.jmu.edu"
                    }

                }
            };

            var createdPayout = payout.Create(apiContext, true);
            string read = createdPayout.ConvertToJson();
            Label1.Text += read;

        }
        catch (Exception ex)
        {
            Label1.Text += ex;
        }


    }
}