using Series_Blog.Entitiy;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Series_Blog.WebForms
{
    public partial class Contact : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Db_SeriesEntities entities = new Db_SeriesEntities();
            TblContact contact = new TblContact();
            contact.ContactNameSurname = TextBox1.Text;
            contact.ContactMail = TextBox2.Text;
            contact.ContactPhone = TextBox3.Text;
            contact.ContactSubject = TextBox5.Text;
            contact.ContactContext = TextBox4.Text;
            entities.TblContacts.Add(contact);
            entities.SaveChanges();
            Response.Redirect("Home.aspx");
        }
    }
}