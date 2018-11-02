using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DashboardSystem
{
    public partial class UploadFile : System.Web.UI.Page
    {
        public class demoitem
        {
            public string fileName { get; set; }
            public string date { get; set; }
            public string uploadedBy { get; set; }

            public demoitem(string filename, string date, string uploadedBy)
            {
                this.fileName = filename;
                this.date = date;
                this.uploadedBy = uploadedBy;
            }

        }

        protected void Page_Load(object sender, EventArgs e)
        {
            demoitem one = new demoitem("file 1", "10/12/18", "Nick");
            demoitem two = new demoitem("file 2", "10/13/18", "Chris");
            demoitem three = new demoitem("file 3", "10/14/18", "Brendan");
            demoitem four = new demoitem("file 4", "10/15/18", "Tommy");

            List<demoitem> list = new List<demoitem>();
            list.Add(one);
            list.Add(two);
            list.Add(three);
            list.Add(four);

            gvPastUploads.DataSource = list;
            gvPastUploads.DataBind();


        }

        protected void btnUpload_Click(object sender, EventArgs e)
        {

        }
    }
}