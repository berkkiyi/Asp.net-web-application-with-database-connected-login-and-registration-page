    using System;
    using System.Collections.Generic;
    using System.Linq;
    using System.Web;
    using System.Web.UI;
    using System.Web.UI.WebControls;
    using System.Data.SqlClient;
    using System.Configuration;
    using System.Data;
using System.EnterpriseServices.Internal;

    namespace WebAsp
    {
        public partial class WebForm1 : System.Web.UI.Page
        {
        public DataTable dt = new DataTable();
        protected void Page_Load(object sender, EventArgs e)
            {

            }

            SqlConnection con = new SqlConnection("Data Source=DESKTOP-1L6L6RD\\SQLEXPRESS;Initial Catalog=Website;Integrated Security=True");

        protected void LoginButton_Click(object sender, EventArgs e)
        {
            Bilgiler bilgiler = new Bilgiler();
            bilgiler.Username = TextBox1.Text;
            bilgiler.Password = TextBox2.Text;

            string connectionString = ConfigurationManager.ConnectionStrings["DBBaglan"].ConnectionString;

            using (SqlConnection con = new SqlConnection(connectionString))
            {
                using (SqlCommand cmd = new SqlCommand("Login", con))
                {
                    cmd.CommandType = CommandType.StoredProcedure;

                    cmd.Parameters.Add("@Username", SqlDbType.VarChar, 50).Value = bilgiler.Username;
                    cmd.Parameters.Add("@Password", SqlDbType.VarChar, 50).Value = bilgiler.Password;

                    SqlParameter outputParam = new SqlParameter("@Result", SqlDbType.Int)
                    {
                        Direction = ParameterDirection.Output
                    };
                    cmd.Parameters.Add(outputParam);

                    con.Open();
                    try
                    {
                        cmd.ExecuteNonQuery();

                        int result = (int)cmd.Parameters["@Result"].Value;

                        if (result == 1)
                        {
                            Session["Username"] = bilgiler.Username;
                            Session["Password"] = bilgiler.Password;
                        }
                        else
                        {
                            Console.WriteLine("Kullanıcı adı veya şifre yanlış.");
                            return; // Kullanıcı adı veya şifre yanlışsa, yönlendirme yapmayı durdur
                        }
                    }
                    catch (SqlException ex)
                    {
                        Console.WriteLine("Bir hata oluştu: " + ex.Message);
                    }
                }
            }

            using (SqlConnection con = new SqlConnection(connectionString))
            {
                using (SqlCommand cmd = new SqlCommand("SELECT Id FROM Person WHERE Username = @Username", con))
                {
                    cmd.Parameters.Add("@Username", SqlDbType.VarChar, 50).Value = bilgiler.Username;

                    SqlDataAdapter da = new SqlDataAdapter(cmd);
                    DataTable dt = new DataTable(); // DataTable nesnesi oluşturuluyor

                    con.Open();
                    try
                    {
                        da.Fill(dt);

                        if (dt.Rows.Count > 0)
                        {
                            Session["Person_Id"] = dt.Rows[0]["Id"].ToString();
                        }
                        else
                        {
                            Console.WriteLine("Kullanıcı bulunamadı.");
                        }
                    }
                    catch (SqlException ex)
                    {
                        Console.WriteLine("Bir hata oluştu: " + ex.Message);
                    }
                   
                }
                Response.Redirect("profile.aspx");
            }            
        }
    }
}
   