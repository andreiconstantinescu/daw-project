using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        lbl_article_title.Text = Session["ArticleTitle"].ToString();
        txt_article_content.Text = Session["ArticleContent"].ToString();
        lbl_article_category.Text = Session["ArticleCategory"].ToString();

        Image1.ImageUrl = Session["ArticleImage"].ToString();

        if ((string)Session["UserRole"] != "user")
        {
            commentBox.Attributes.Add("class", "hidden");
        }
        else
        {
            commentBox.Attributes.Remove("hidden");
        }
    }
    protected void btn_submit_comment_Click(object sender, EventArgs e)
    {
        try
        {
            Guid userGUID = Guid.NewGuid();
            SqlConnection usrData = new SqlConnection(ConfigurationManager.ConnectionStrings["RegistrationConnectionString"].ConnectionString);
            usrData.Open();
            string insertQuery = "insert into comments (Id, username, article, comment) values (@id, @username, @article, @comment)";
            SqlCommand command = new SqlCommand(insertQuery, usrData);

            command.Parameters.AddWithValue("@id", userGUID.ToString());
            command.Parameters.AddWithValue("@username", Session["LoginUser"].ToString());
            command.Parameters.AddWithValue("@article", Session["ArticleTitle"].ToString());
            command.Parameters.AddWithValue("@comment", txt_comment.Text);

            command.ExecuteNonQuery();

            lbl_result.Text = "Comment was added to the DB.";
            txt_comment.Text = "";

            Repeater1.DataBind();

            usrData.Close();
        }
        catch (Exception ex)
        {
            lbl_result.Text = "Error: " + ex.Message;
        }
    }
}