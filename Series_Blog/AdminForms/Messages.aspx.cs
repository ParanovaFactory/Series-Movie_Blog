using Series_Blog.Entitiy;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Series_Blog.AdminForms
{
    public partial class Messages : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["User"] == null)
            {
                Response.Redirect("../WebForms/Login.aspx");
            }
            Db_SeriesEntities entities = new Db_SeriesEntities();
            Repeater1.DataSource = entities.TblContacts.ToList();
            Repeater1.DataBind();
        }
    }
}