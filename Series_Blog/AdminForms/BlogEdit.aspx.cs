using Series_Blog.Entitiy;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Series_Blog.AdminForms
{
    public partial class BlogEdit : System.Web.UI.Page
    {
        Db_SeriesEntities entities = new Db_SeriesEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            int id = Convert.ToInt32(Request.QueryString["BlogId"]);
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

                var value = entities.TblBlogs.Find(id);
                TextBox1.Text = value.BlogTitle;
                TextBox2.Text = value.BlogContex;
                TextBox3.Text = value.BlogDate.ToString();
                TextBox4.Text = value.BlogImage;
                DropDownList1.SelectedValue = value.BlogType.ToString();
                DropDownList2.SelectedValue = value.BlogCategory.ToString();
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            int id = Convert.ToInt32(Request.QueryString["BlogId"]);
            var value = entities.TblBlogs.Find(id);
            value.BlogTitle = TextBox1.Text;
            value.BlogContex = TextBox2.Text;
            value.BlogDate = DateTime.Parse(TextBox3.Text);
            value.BlogImage = TextBox4.Text;
            value.BlogType = int.Parse(DropDownList1.SelectedValue);
            value.BlogCategory = int.Parse(DropDownList2.SelectedValue);
            entities.SaveChanges();
            Response.Redirect("Blogs.aspx");
        }
    }
}