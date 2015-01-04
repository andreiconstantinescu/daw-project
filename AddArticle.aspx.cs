using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class AddArticle : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if ((string)Session["UserRole"] != "editor")
        {
            Response.Redirect("Login.aspx");
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {
            Guid articleGUID = Guid.NewGuid();
            SqlConnection usrData = new SqlConnection(ConfigurationManager.ConnectionStrings["RegistrationConnectionString"].ConnectionString);
            usrData.Open();
            string insertQuery = "insert into articles (Id, title, content, thumbnail) values (@id, @title, @content, @thumbnail)";
            SqlCommand command = new SqlCommand(insertQuery, usrData);

            command.Parameters.AddWithValue("@id", articleGUID.ToString());
            command.Parameters.AddWithValue("@title", txt_articleTitle.Text);
            command.Parameters.AddWithValue("@content", txt_articleContent.Text);
            command.Parameters.AddWithValue("@thumbnail", txt_thumbnailPath.Text);

            command.ExecuteNonQuery();

            Response.Write("Registration is successful!");

            usrData.Close();
        }
        catch (Exception ex)
        {
            Response.Write("Error: " + ex.Message);
        }
    }
}