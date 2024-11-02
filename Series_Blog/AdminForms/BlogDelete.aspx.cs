using Series_Blog.Entitiy;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Series_Blog.AdminForms
{
    public partial class BlogDelete : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            int id = Convert.ToInt32(Request.QueryString["BlogId"]);
            Db_SeriesEntities entities = new Db_SeriesEntities();
            var value = entities.TblBlogs.Find(id);
            entities.TblBlogs.Remove(value);
            entities.SaveChanges();
            Response.Redirect("Blogs.aspx");
        }
    }
}