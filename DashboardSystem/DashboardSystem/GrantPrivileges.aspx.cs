using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DashboardSystem
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        public class demoitem
        {
            public string User { get; set; }
            public string Role { get; set; }

            public demoitem(string user, string role)
            {
                User = user;
                Role = role;
            }
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            demoitem one = new demoitem("Jonathan Nyquist", "Admin");
            demoitem two = new demoitem("User 2", "Dean");
            demoitem three = new demoitem("User 3", "Chair");
            demoitem four = new demoitem("User 4", "Instructor");

            List<demoitem> list = new List<demoitem>();
            list.Add(one);
            list.Add(two);
            list.Add(three);
            list.Add(four);

            gvGrantPrivileges.DataSource = list;
            gvGrantPrivileges.DataBind();
        }

        protected void btnSubmitChanges_Click(object sender, EventArgs e)
        {
            Response.Redirect("AdminView.aspx");
        }
    }
}