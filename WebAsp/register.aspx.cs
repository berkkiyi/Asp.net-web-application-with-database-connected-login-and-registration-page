using System;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;

namespace WebAsp
{
    public partial class login : System.Web.UI.Page
    {
  
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        SqlConnection con = new SqlConnection("Data Source=DESKTOP-1L6L6RD\\SQLEXPRESS;Initial Catalog=Website;Integrated Security=True");



        protected void CreateAccountButton_Click(object sender, EventArgs e) { 
            Bilgiler myBilgiler = new Bilgiler();

            myBilgiler.Username = TextBox1.Text;
            myBilgiler.Password = TextBox2.Text;

            string connectionString = ConfigurationManager.ConnectionStrings["DBBaglan"].ConnectionString; 

            using (SqlConnection con = new SqlConnection(connectionString))
            {
                using (SqlCommand cmd = new SqlCommand("Register", con))
                {
                    cmd.CommandType = CommandType.StoredProcedure;

                    cmd.Parameters.Add("@Username", SqlDbType.VarChar, 50).Value = myBilgiler.Username;
                    cmd.Parameters.Add("@Password", SqlDbType.VarChar, 50).Value = myBilgiler.Password;

                    con.Open();
                    try
                    {
                        cmd.ExecuteNonQuery();
                        Console.WriteLine("Kullanıcı başarıyla kaydedildi.");
                    }
                     catch (SqlException ex)
                    {
                        Console.WriteLine("Bir hata oluştu: " + ex.Message);
                    }
                }
            }

        }
    }
}