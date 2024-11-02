using Series_Blog.Entitiy;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Series_Blog.WebForms
{
    public partial class Home : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Db_SeriesEntities entities = new Db_SeriesEntities();

            Repeater1.DataSource = entities.TblBlogs.ToList();
            Repeater1.DataBind();

            Repeater2.DataSource = entities.TblCategories.ToList();
            Repeater2.DataBind();

            Repeater3.DataSource = entities.TblBlogs.OrderByDescending(x=>x.BlogId).Take(5).ToList();
            Repeater3.DataBind();

            Repeater4.DataSource = entities.TblComments.OrderByDescending(x => x.CommentId).Take(5).ToList();
            Repeater4.DataBind();
        }
    }
}