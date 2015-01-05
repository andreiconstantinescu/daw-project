using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class User : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

        if (Session["LoginUser"] != null)
        {
            lbl_welcome.Text += Session["LoginUser"].ToString() + "!";

            if (Session["UserRole"].ToString() == "admin")
            {
                btn_manage.Visible = true;
                btn_manageArticles.Visible = false;
                btn_addArticle.Visible = false;
            }
            else
            {
                if (Session["UserRole"].ToString() == "editor")
                {
                    btn_manage.Visible = false;
                    btn_manageArticles.Visible = true;
                    btn_addArticle.Visible = true;
                }
            }
        }
        else
        {
            Response.Redirect("Login.aspx");
        }

        
    }
    protected void btn_logout_Click(object sender, EventArgs e)
    {
        Session["LoginUser"] = null;
        Response.Redirect("Login.aspx");
    }
}