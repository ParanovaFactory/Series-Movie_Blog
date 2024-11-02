using Series_Blog.Entitiy;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Series_Blog.AdminForms
{
    public partial class Blogs : System.Web.UI.Page
    {
        Db_SeriesEntities entities = new Db_SeriesEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["User"] == null)
            {
                Response.Redirect("../WebForms/Login.aspx");
            }
            var blogs = entities.TblBlogs.Select( x => new
            {
                x.BlogId,
                x.BlogTitle,
                x.BlogDate,
                x.TblType.TypeName,
                x.TblCategory.CategoryName
            }).ToList();
            Repeater1.DataSource = blogs;
            Repeater1.DataBind();
        }
    }
}