using Series_Blog.Entitiy;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Series_Blog.WebForms
{
    public partial class About : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Db_SeriesEntities entities = new Db_SeriesEntities();
            var value = entities.TblAbouts.ToList();
            Repeater1.DataSource = value;
            Repeater1.DataBind();
        }
    }
}