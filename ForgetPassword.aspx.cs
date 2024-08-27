using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Mail;
using System.Net;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class Soucre_public_ForgetPassword : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    public void btn_click(object sender, EventArgs e)
    {

        string email = emailid.Text;

        SqlConnection connection = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=""C:\Users\SHIVAM DUBEY\source\repos\Real Estate System\Real Estate System\App_Data\Database_new.mdf"";Integrated Security=True");
        
            string query = "SELECT Name, password FROM Users WHERE emails = @Email";
            SqlCommand command = new SqlCommand(query, connection);
            command.Parameters.AddWithValue("@Email", email);
        string name="", passwords="";
            try
            {
                connection.Open();
                SqlDataReader reader = command.ExecuteReader();

                if (reader.HasRows)
                {
                while (reader.Read())
                {
                    name = reader["Name"].ToString();
                     passwords = reader["password"].ToString();


                }

                SendLoginNotification(name, passwords,email);
            }
                else
                {
                lblMessage1.Text = " Your Mail id Is Not Registered With us  " ;
            }
            }
            catch (Exception ex)
            {
                Response.Write("An error occurred: " + ex.Message);
            }

    }
    






    
    

    public void SendLoginNotification(string username,string passwordss,string emailids)
    {
        try
        {
            string messageBody = $@"
        <!DOCTYPE html>
        <html>
        <head>
            <meta charset='UTF-8'>
            <title>Login Notification</title>
        </head>
        <body>
            <p>Hello,{username} </p>
            <p>We wanted to inform you that a login attempt was made to your account.</p>
            <p><strong>Username:</strong> {username}</p>
            <p><strong> Password :</strong>{passwordss}</p>
            <p><strong>Time:</strong> {DateTime.Now}</p>
            <p>If this was not you, please contact our support team immediately.</p>
            <br>
            <br>
            <center>
            <a href=""http://localhost:52286/Soucre/public/Login.aspx"">
                <img src=""https://www.freeiconspng.com/uploads/login-button-png-28.png"" height=""39px"" width=""120px"" />
            </a>
            </center>
            <p>Best regards,<br>
             by Shivam & Prem 
            <br>Sadhana Realty</p>
        </body>
        </html>
        ";



            SmtpClient smtpClient = new SmtpClient("smtp.gmail.com", 587);
            smtpClient.Credentials = new NetworkCredential("shivamtest5056@gmail.com", "oykv xfig sopl ehbv\r\n");
            smtpClient.EnableSsl = true;

            MailMessage mail = new MailMessage();
            mail.From = new MailAddress("shivamtest5056@gmail.com");
            mail.To.Add(emailids);
            mail.Subject = "Login Credentails of "+ username;
            mail.Body = messageBody;
            mail.IsBodyHtml = true;  // Indicates that the email body is in HTML format

            smtpClient.Send(mail);
            lblMessage1.Text = "Email sent successfully!";
        }
        catch (SmtpException smtpEx)
        {
            lblMessage1.Text = "SMTP Error: " + smtpEx.Message;  // Logs detailed SMTP exceptions
        }
        catch (Exception ex)
        {
            lblMessage1.Text = "Error: " + ex.Message;  // General exception
        }
    }
 }
