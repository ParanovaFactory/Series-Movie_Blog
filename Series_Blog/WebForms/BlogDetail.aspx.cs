using Series_Blog.Entitiy;
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Series_Blog.WebForms
{
    public partial class BlogDetail : System.Web.UI.Page
    {

        Db_SeriesEntities entities = new Db_SeriesEntities();

        protected void Page_Load(object sender, EventArgs e)
        {
            int id = Convert.ToInt32(Request.QueryString["BlogId"]);
            var blog = entities.TblBlogs.Where(b => b.BlogId == id).ToList();
            Repeater1.DataSource = blog;
            Repeater1.DataBind();

            var comment = entities.TblComments.Where(x=>x.CommnetBlog == id).ToList();
            Repeater2.DataSource = comment;
            Repeater2.DataBind();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            int id = Convert.ToInt32(Request.QueryString["BlogId"]);
            TblComment comment = new TblComment();
            comment.CommentNameSurname = TextBox1.Text;
            comment.CommentMail = TextBox2.Text;
            comment.CommnetContext = TextBox3.Text;
            comment.CommnetBlog = id;
            entities.TblComments.Add(comment);
            entities.SaveChanges();
            Response.Redirect("BlogDetail.aspx?BlogId="+id);
        }
    }
}