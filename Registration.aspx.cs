using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class Registration : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (IsPostBack)
        {
            SqlConnection usrData = new SqlConnection(ConfigurationManager.ConnectionStrings["RegistrationConnectionString"].ConnectionString);
            usrData.Open();
            string query = "select count(*) from userData where username='" + txtb_username.Text + "'";
            SqlCommand command = new SqlCommand(query, usrData);
            int temp = Convert.ToInt32(command.ExecuteScalar().ToString());
            if (temp == 1)
            {
                Response.Write("Username already Exists.");
            }
            usrData.Close();
        }
    }
    protected void btn_register_Click(object sender, EventArgs e)
    {
        try
        {
            Guid userGUID = Guid.NewGuid();
            SqlConnection usrData = new SqlConnection(ConfigurationManager.ConnectionStrings["RegistrationConnectionString"].ConnectionString);
            usrData.Open();
            string insertQuery = "insert into userData (Id, username, email, password, role) values (@id, @username, @email, @password, @role)";
            SqlCommand command = new SqlCommand(insertQuery, usrData);

            command.Parameters.AddWithValue("@id", userGUID.ToString());
            command.Parameters.AddWithValue("@username", txtb_username.Text);
            command.Parameters.AddWithValue("@email", txtb_email.Text);
            command.Parameters.AddWithValue("@password", txtb_pass.Text);
            command.Parameters.AddWithValue("@role", dlst_role.SelectedItem.ToString());

            command.ExecuteNonQuery();

            Response.Redirect("Login.aspx");
            
            usrData.Close();
        }
        catch(Exception ex)
        {
            Response.Write("Error: " + ex.Message);
        }
    }
}
