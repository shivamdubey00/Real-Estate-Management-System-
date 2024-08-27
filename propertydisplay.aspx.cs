using System;
using System.Collections;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Soucre_propertydisplay : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            BindProperties(null, null, null);  // Initially bind all properties
        }
    }

    // Modified BindProperties to accept filters
    private void BindProperties(string location, decimal? priceMin, decimal? priceMax)
    {
        // Base query
        string query = "SELECT Title, Description, Price, Location, Size, DeveloperName, ImagePath FROM Properties WHERE 1=1";

        // Build query dynamically based on filter values
        if (!string.IsNullOrEmpty(location))
        {
            query += " AND Location LIKE @Location";
        }

        if (priceMin.HasValue)
        {
            query += " AND Price >= @PriceMin";
        }

        if (priceMax.HasValue)
        {
            query += " AND Price <= @PriceMax";
        }

        // Establish database connection
        using (SqlConnection conn = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=""C:\Users\SHIVAM DUBEY\source\repos\Real Estate System\Real Estate System\App_Data\Database_new.mdf"";Integrated Security=True"))
        {
            using (SqlCommand cmd = new SqlCommand(query, conn))
            {
                // Add parameters to prevent SQL injection
                if (!string.IsNullOrEmpty(location))
                {
                    cmd.Parameters.AddWithValue("@Location", "%" + location + "%");
                }

                if (priceMin.HasValue)
                {
                    cmd.Parameters.AddWithValue("@PriceMin", priceMin.Value);
                }

                if (priceMax.HasValue)
                {
                    cmd.Parameters.AddWithValue("@PriceMax", priceMax.Value);
                }

                // Execute the query and bind the results
                conn.Open();
                using (SqlDataAdapter da = new SqlDataAdapter(cmd))
                {
                    DataTable dt = new DataTable();
                    da.Fill(dt);
                    PropertyRepeater.DataSource = dt;
                    PropertyRepeater.DataBind();
                }
            }
        }
    }

    // Event handler for Search button
    public void btnSearch_Click(object sender, EventArgs e)
    {
        // Retrieve filter values from UI inputs
        string location = txtLocation.Text.Trim();
        decimal? priceMin = string.IsNullOrEmpty(txtPriceMin.Text) ? (decimal?)null : Convert.ToDecimal(txtPriceMin.Text);
        decimal? priceMax = string.IsNullOrEmpty(txtPriceMax.Text) ? (decimal?)null : Convert.ToDecimal(txtPriceMax.Text);

        // Call BindProperties with filter values
        BindProperties(location, priceMin, priceMax);
    }
}
