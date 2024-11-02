using Series_Blog.Entitiy;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Series_Blog.AdminForms
{
    public partial class Statisitcs : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["User"] == null)
            {
                Response.Redirect("../WebForms/Login.aspx");
            }

            Db_SeriesEntities entities = new Db_SeriesEntities();

            Label1.Text = entities.TblBlogs.Count().ToString();

            Label2.Text = entities.TblComments.Count().ToString();

            Label3.Text = entities.TblBlogs.Where(x=>x.TblType.TypeName == "Movie").Count().ToString();

            Label4.Text = entities.TblBlogs.Where(x => x.TblType.TypeName == "Series").Count().ToString();

            Label5.Text = entities.TblBlogs.Where(x => x.TblCategory.CategoryName == "Adventure").Count().ToString();

            Label6.Text = entities.TblBlogs.Where(x => x.BlogId == (entities.TblComments.GroupBy(y => y.CommnetBlog).OrderByDescending(y => y.Count()).Select(y => y.Key).FirstOrDefault())).Select(k => k.BlogTitle).FirstOrDefault();
        }
    }
}