using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    SqlConnection conn = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=""C:\Users\SHIVAM DUBEY\source\repos\Real Estate System\Real Estate System\App_Data\databasedetails.mdf"";Integrated Security=True");

    protected void Page_Load(object sender, EventArgs e)
    {
        
    }
}