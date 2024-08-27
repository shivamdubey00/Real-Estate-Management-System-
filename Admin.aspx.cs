using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Soucre_public_Admin :  System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    
        protected void SubmitButton_Click(object sender, EventArgs e)
        {
        try
        {
            string title = Title.Text;
            string description = Description.Text;
            decimal price;
            decimal.TryParse(Price.Text, out price);
            string location = Location.Text;
            decimal size;
            decimal.TryParse(Size.Text, out size);
            string developerName = DeveloperName.Text;
            string imageUrl = ImageUrl.Text;

            // Save to database
             SqlConnection conn = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=""C:\Users\SHIVAM DUBEY\source\repos\Real Estate System\Real Estate System\App_Data\Database_new.mdf"";Integrated Security=True");
                conn.Open();
                string query = "INSERT INTO Properties (Title, Description, Price, Location, Size, DeveloperName, ImagePath) VALUES (@Title, @Description, @Price, @Location, @Size, @DeveloperName, @ImagePath)";
                using (SqlCommand cmd = new SqlCommand(query, conn))
                {
                    cmd.Parameters.AddWithValue("@Title", title);
                    cmd.Parameters.AddWithValue("@Description", description);
                    cmd.Parameters.AddWithValue("@Price", price);
                    cmd.Parameters.AddWithValue("@Location", location);
                    cmd.Parameters.AddWithValue("@Size", size);
                    cmd.Parameters.AddWithValue("@DeveloperName", developerName);
                    cmd.Parameters.AddWithValue("@ImagePath", imageUrl);
                    cmd.ExecuteNonQuery();
                }
            

            // Optionally show a success message
            ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Property submitted successfully!');", true);
        }
        catch (Exception ex)
        {
            // Log the error and show a user-friendly message
            // LogError(ex); // You can implement a method to log the error details
            ClientScript.RegisterStartupScript(this.GetType(), "alert", $"alert('An error occurred: {ex.Message}');", true);
        }
    }
}
    

