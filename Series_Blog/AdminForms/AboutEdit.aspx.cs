using Series_Blog.Entitiy;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Series_Blog.AdminForms
{
    public partial class AboutEdit : System.Web.UI.Page
    {
        Db_SeriesEntities entities = new Db_SeriesEntities();

        protected void Page_Load(object sender, EventArgs e)
        {
            int id = Convert.ToInt32(Request.QueryString["AboutId"]);
            if (Page.IsPostBack == false)
            {
                var value = entities.TblAbouts.Find(id);

                TextBox1.Text = value.AboutContext;
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            TblAbout about = new TblAbout();
            about.AboutContext = TextBox1.Text;
            entities.SaveChanges();
            Response.Redirect("About.aspx");
        }
    }
}