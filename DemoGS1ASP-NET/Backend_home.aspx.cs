using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DemoGS1ASP_NET.DEMO;

namespace DemoGS1ASP_NET
{
    public partial class backend_home : System.Web.UI.Page
    {
        DatabaseStuff dbs = new DatabaseStuff();

        protected void Page_Load(object sender, EventArgs e)
        {
            
            if (string.IsNullOrEmpty(Session["auth"] as String))
            {
                Response.Redirect("/");
            }
            string userId = Session["id"].ToString();
            User user = dbs.getSelf(userId);
            Company company = user.Company;
            List<User> users = company.Users.ToList<User>();
            r_users.DataSource = users;
            r_users.DataBind();
            l_company_name.Text = company.name;
        }

        protected void r_users_ItemCommand(object source, RepeaterCommandEventArgs e)
        {
            if (e.Item.ItemType == ListItemType.Item || e.Item.ItemType == ListItemType.AlternatingItem)
            {
                CheckBox chkBoxSelect = e.Item.FindControl("CheckBoxSelect") as CheckBox;
                //chkBoxSelect.Attributes.Add("internalid", ((OfficeRep)e.Item.DataItem).OfficeID);
            }
        }
    }
}