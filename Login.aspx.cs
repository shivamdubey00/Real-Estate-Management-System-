using System;
using System.Collections;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Net.Mail;
using System.Net;
using System.Runtime.Remoting.Messaging;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Helpers;
using System.Threading.Tasks;

public partial class Soucre_public_Login : System.Web.UI.Page
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
        string name = firstname.Text;
        string pwd = password.Text;

        try
        {
            if (conn.State == ConnectionState.Closed)
            {
                conn.Open();
            }

            string query = "SELECT COUNT(1) FROM Users WHERE emails = @name AND password = @Password";

            using (SqlCommand command = new SqlCommand(query, conn))
            {
                command.Parameters.AddWithValue("@name", name);
                command.Parameters.AddWithValue("@Password", pwd);

                int count = Convert.ToInt32(command.ExecuteScalar());

                if (count == 1) 
                {
                    lblMessage1.Text = "Login Successful";

                    string name11 = firstname.Text;

                    string query1 = "SELECT name FROM Users WHERE emails = @name1";

                    SqlCommand command1 = new SqlCommand(query1, conn);
                    command1.Parameters.AddWithValue("@name1", name11);
                    string user_name = "";
                    try
                    {
                        SqlDataReader reader = command1.ExecuteReader();

                        if (reader.HasRows)
                        {
                            while (reader.Read())
                            {
                                user_name = reader["name"].ToString();

                            }
                            SendLoginNotification(firstname.Text, user_name);
                        }
                        else
                        {
                            lblMessage1.Text = " Your Mail id Is Not Registered With us  ";
                        }
                    }
                    catch (Exception ex)
                    {
                        Response.Write("An error occurred: " + ex.Message);
                    }






                    
                }


                else
                {
                    lblMessage1.Text = "Invalid username or password.";
                }
            }
        }
        catch (Exception ex)
        {
            lblMessage1.Text = "Error: " + ex.Message;
        }
        finally
        {
            if (conn.State == ConnectionState.Open)
            {
                conn.Close();
            }
        }

    }




    private void SendLoginNotification(string username, string uname)
    {
        try
        {
            SmtpClient smtpClient = new SmtpClient("smtp.gmail.com", 587);
            smtpClient.Credentials = new NetworkCredential("shivamtest5056@gmail.com", "oykv xfig sopl ehbv\r\n");
            smtpClient.EnableSsl = true;

            MailMessage mail = new MailMessage();
            mail.From = new MailAddress("shivamtest5056@gmail.com");
            mail.To.Add(username);
            mail.Subject = uname + " Someone has looged into your Account";
            mail.Body = "Might Someone had Logeed in to Your Account!!! \n\n" +
                "if You had not made log in then first Change your Password & try to Conatct with us \n\n if You had Loggedin then Try to Avoid this Message " +
                " \n Contact on Given Number : 1800 1000 1800\n\n\n" +
                "\n\nThanks & regard \n Sadhana Realty ";

            smtpClient.Send(mail);
            lblMessage1.Text = "Email sent successfully!";

            Response.Redirect("Homepage.aspx");


        }
        catch (SmtpException smtpEx)
        {
            lblMessage1.Text = "SMTP Error: " + smtpEx.Message;
        }
        catch (Exception ex)
        {
            lblMessage1.Text = "Error: " + ex.Message;





        }
    }

}