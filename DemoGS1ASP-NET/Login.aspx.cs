using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DemoGS1ASP_NET.DEMO;

namespace DemoGS1ASP_NET
{
    public partial class Login : System.Web.UI.Page
    {
        private DemoValidations demoValidations = new DemoValidations();

        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void bt_submit_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                string code = demoValidations.checkLogin(tb_email_input.Text, tb_password_input.Text);
                if (code != "ERROR")
                {
                    Session["auth"] = tb_email_input.Text;
                    Session["id"] = code;
                    Response.Redirect("Backend_home.aspx");
                }
                l_error_message.Text = "Invalid Login";
            }
            else
            {
                //Error handle
                l_error_message.Text = "Invalid Request";
            }
        }


    }
}