using Series_Blog.Entitiy;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Series_Blog.WebForms
{
    public partial class CategoryDetail : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Db_SeriesEntities entities = new Db_SeriesEntities();

            int id = Convert.ToInt32(Request.QueryString["CategoryId"]);
            var vales = entities.TblBlogs.Where(b => b.BlogCategory == id).ToList();

            Repeater1.DataSource = vales;
            Repeater1.DataBind();

            Repeater2.DataSource = entities.TblCategories.ToList();
            Repeater2.DataBind();

            Repeater3.DataSource = entities.TblBlogs.ToList();
            Repeater3.DataBind();

            Repeater4.DataSource = entities.TblComments.ToList();
            Repeater4.DataBind();
        }
    }
}