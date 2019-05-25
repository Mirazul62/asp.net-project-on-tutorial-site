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
        if(IsPostBack)
        {
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["RegConnectionString"].ConnectionString);
            conn.Open();
            string checkuser = "select count(*) from [Table] where UserName=' " + TextBoxUN.Text + " ' ";
            SqlCommand com = new SqlCommand(checkuser, conn);
            int temp = Convert.ToInt32(com.ExecuteScalar().ToString());
            conn.Close();
            if (temp == 1)
            {
                Response.Write("User Already Exists !!");
            }
            
        }

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {
            Guid newGuid = Guid.NewGuid();

            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["RegConnectionString"].ConnectionString);
           
            conn.Open();
            
            string insertQuery = "insert into [Table] (Id,UserName,Email,Gender,password) values (@id,@uname, @email, @gender, @password)";
            SqlCommand com = new SqlCommand(insertQuery, conn);
           
            com.Parameters.AddWithValue("@id", newGuid.ToString());
            
            com.Parameters.AddWithValue("@uname", TextBoxUN.Text);
            com.Parameters.AddWithValue("@email", TextBoxEmail.Text);
            com.Parameters.AddWithValue("@gender", DropDownListG.SelectedItem.ToString());
            com.Parameters.AddWithValue("@password", TextBoxP.Text);
            com.ExecuteNonQuery();
            Response.Redirect("Manager.aspx");
            Response.Write("Registration is successful !!");
            

            conn.Close();
        }
        catch(Exception ex)
        {
            Response.Write("Error:"+ex.ToString());
        }
    }
}