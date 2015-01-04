using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class Login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
       
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlConnection usrData = new SqlConnection(ConfigurationManager.ConnectionStrings["RegistrationConnectionString"].ConnectionString);
        usrData.Open();
        string query = "select count(*) from userData where username='" + txtb_login_username.Text + "'";
        SqlCommand command = new SqlCommand(query, usrData);
        int temp = Convert.ToInt32(command.ExecuteScalar().ToString());
        usrData.Close();
        if (temp == 1)
        {
            usrData.Open();
            string passQuery = "select password from userData where username='" + txtb_login_username.Text + "'";
            SqlCommand passCommand = new SqlCommand(passQuery, usrData);
            string password = passCommand.ExecuteScalar().ToString().Replace(" ", "");

            if (password == txtb_login_password.Text)
            {
                Session["New"] = txtb_login_username.Text;
                Response.Write("Password is correct.");
            }
            else
            {
                Response.Write("Password is not correct");
            
            }
        }
        else
        {
            Response.Write("Username does not exist");
        }
    }
}