using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Threading.Tasks;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Soucre_public_Signup : System.Web.UI.Page
{
    SqlConnection conn = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=""C:\Users\SHIVAM DUBEY\source\repos\Real Estate System\Real Estate System\App_Data\Database_new.mdf"";Integrated Security=True");



    protected void Page_Load(object sender, EventArgs e)
    {
        if (conn.State == System.Data.ConnectionState.Open)
        {
            conn.Close();
        }
        conn.Open();

    }

    protected void button1_click(object sender, EventArgs e)
    {
        try
        {
            // Create a new SQL command
            SqlCommand cmd = conn.CreateCommand();
            cmd.CommandType = System.Data.CommandType.Text;

            // Use parameterized query to prevent SQL injection
            cmd.CommandText = "INSERT INTO Users (name, password, emails) VALUES (@TextBox1, @Password,@Firstname)";
            cmd.Parameters.AddWithValue("@Firstname", firstname.Text);
            cmd.Parameters.AddWithValue("@TextBox1", TextBox1.Text);
            cmd.Parameters.AddWithValue("@Password", password.Text);

            // Execute the command
            cmd.ExecuteNonQuery();

            // Clear the text fields
            firstname.Text = "";
            password.Text = "";

            // Show success message
            lblMessage.Text = "Account created successfully!";

            Response.Redirect("Homepage.aspx");
        }
        catch (Exception ex)
        {
            // Handle any errors that occurred during the operation
            lblMessage.Text = "Error creating account: " + ex.Message;
        }



    }

}