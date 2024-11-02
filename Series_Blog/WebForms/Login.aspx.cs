using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Series_Blog.Entitiy;

namespace Series_Blog.WebForms
{
    public partial class Login : System.Web.UI.Page
    {
        Db_SeriesEntities entities = new Db_SeriesEntities();

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            var query = from x in entities.TblAdmins where 
                        x.AdminUserName == TextBox1.Text 
                        && 
                        x.AdminPassword == TextBox2.Text 
                        select x;

            if (query.Any())
            {
                Session.Add("User", TextBox1.Text);
                Response.Redirect("../AdminForms/Blogs.aspx");
            }
            else
            {
                Response.Write("Error");
            }
        }
    }
}