using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        GridViewRow row = GridView1.SelectedRow;

        Session["ArticleTitle"] = row.Cells[1].Text;
        Session["ArticleContent"] = row.Cells[2].Text;
        Response.Redirect("ArticlePage.aspx");
    }
}