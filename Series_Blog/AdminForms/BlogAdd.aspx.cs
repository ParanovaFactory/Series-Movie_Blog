using Series_Blog.Entitiy;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Series_Blog.AdminForms
{
    public partial class BlogAdd : System.Web.UI.Page
    {
        Db_SeriesEntities entities = new Db_SeriesEntities();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["User"] == null)
            {
                Response.Redirect("../WebForms/Login.aspx");
            }
            if (Page.IsPostBack == false)
            {
                DropDownList1.DataSource = entities.TblTypes.ToList();
                DropDownList1.DataValueField = "TypeId";
                DropDownList1.DataTextField = "TypeName";
                DropDownList1.DataBind();

                DropDownList2.DataSource = entities.TblCategories.ToList();
                DropDownList2.DataValueField = "CategoryId";
                DropDownList2.DataTextField = "CategoryName";
                DropDownList2.DataBind();
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            TblBlog blog = new TblBlog();
            blog.BlogTitle = TextBox1.Text;
            blog.BlogContex = TextBox2.Text;
            blog.BlogDate = DateTime.Parse(TextBox3.Text);
            blog.BlogImage = TextBox4.Text;
            blog.BlogType = int.Parse(DropDownList1.SelectedValue);
            blog.BlogCategory = int.Parse(DropDownList2.SelectedValue);
            entities.TblBlogs.Add(blog);
            entities.SaveChanges();
            Response.Redirect("Blogs.aspx");
        }
    }
}