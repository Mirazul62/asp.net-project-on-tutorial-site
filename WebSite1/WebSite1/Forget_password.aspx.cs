using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Drawing;
using System.Net;
using System.Net.Mail;

public partial class Forget_password : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Butpwd_Click(object sender, EventArgs e)
    {
        string mainconn = ConfigurationManager.ConnectionStrings["DefaultConnection"].ConnectionString;
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["RegConnectionString"].ConnectionString);
        string sqlquery = "select Email, password from [dbo].[Table] where Email = @Email";
        SqlCommand sqlcomm = new SqlCommand(sqlquery, conn);
        sqlcomm.Parameters.AddWithValue("@Email", TextEmail.Text);
        conn.Open();
        SqlDataReader sdr = sqlcomm.ExecuteReader();
        if(sdr.Read())
        {
            string username = sdr["Email"].ToString();
            string password = sdr["password"].ToString();

            MailMessage mm = new MailMessage("mirazkuetcse62@gmail.com",TextEmail.Text);
            mm.Subject = "Your Password !";
            mm.Body = string.Format("Hello! <h1>{0}</h1> is your Email id <br/> your password is <h1>{1}</h1>",username,password);
            mm.IsBodyHtml = true;
            SmtpClient smtp = new SmtpClient();
            smtp.Host = "smtp.gmail.com";
            smtp.EnableSsl = true;
            NetworkCredential nc = new NetworkCredential();
            nc.UserName = "mirazkuetcse62@gmail.com";
            nc.Password = "6488@rsl.MfM.";
            smtp.UseDefaultCredentials = true;
            smtp.Credentials = nc;
            smtp.Port = 587;
            smtp.Send(mm);
            Labmsg.Text = "Your password has been sent to   " + TextEmail.Text;
            Labmsg.ForeColor = Color.Green;


        }
        else
        {
            Labmsg.Text = TextEmail.Text + " - This Email id is not Exists In our Database";
            Labmsg.ForeColor = Color.Red;

        }
        
    }
}