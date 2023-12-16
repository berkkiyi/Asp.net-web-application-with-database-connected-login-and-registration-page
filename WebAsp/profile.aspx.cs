using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;
using System.IO;
using System.Web.Services;
using WebAsp;

namespace WebAsp
{
    public partial class profile : System.Web.UI.Page
    {
        public String userName;
        protected void Page_Load(object sender, EventArgs e)
        {
            userName = Request.QueryString["userName"];

            LabelUsername.Text = userName;          
        }



        SqlConnection con = new SqlConnection("Data Source=DESKTOP-1L6L6RD\\SQLEXPRESS;Initial Catalog=Website;Integrated Security=True");

        protected void CreateButton_Click(object sender, EventArgs e)
        {
            string connectionString = ConfigurationManager.ConnectionStrings["DBBaglan"].ConnectionString;

            try
            {
                using (SqlConnection con = new SqlConnection(connectionString))
                {
                    using (SqlCommand cmd = new SqlCommand("InsertIntoBlog", con))
                    {
                        cmd.CommandType = CommandType.StoredProcedure;

                        if (Session["Person_Id"] !=  null)
                        {
                            cmd.Parameters.Add(new SqlParameter("@Person_id", Convert.ToInt32(Session["Person_Id"])));
                        }
                        else
                        {
                            Console.WriteLine("Person_Id değeri bulunamadı.");
                            return;
                        }

                        cmd.Parameters.Add(new SqlParameter("@Title", Title.Text));
                        cmd.Parameters.Add(new SqlParameter("@Content", Content.Text));
                        cmd.Parameters.Add(new SqlParameter("@Published_date", DateTime.Now));
                        cmd.Parameters.Add(new SqlParameter("@Last_updated_date", DateTime.Now));
                        cmd.Parameters.Add(new SqlParameter("@Last_updated_by", HttpContext.Current.User.Identity.Name));
                        cmd.Parameters.Add(new SqlParameter("@Creation_date", DateTime.Now));
                        cmd.Parameters.Add(new SqlParameter("@Created_by", HttpContext.Current.User.Identity.Name));

                        con.Open();
                        cmd.ExecuteNonQuery();
                    }
                }
            }
            catch (Exception ex)
            {
                Console.WriteLine("An error occured", ex.Message);
            }


            Response.Redirect("Anasayfa.Master");
            
        }

        protected void RedirectButton_Click(object sender, EventArgs e)
        {
            Response.Redirect("Anasayfa.aspx");
        }
        protected void ChangePassword_Click(object sender, EventArgs e)
        {
            Bilgiler mybilgiler = new Bilgiler();
            string username = Session["Username"].ToString();
            string currentPassword = TextBox1.Text;

            string newPassword = TextBox2.Text;
            string reEnterNewPassword = TextBox3.Text;


            if (newPassword != reEnterNewPassword)
            {
                Console.WriteLine("Yeni şifreler eşleşmiyor.");
                return;
            }

            string connectionString = ConfigurationManager.ConnectionStrings["DBBaglan"].ConnectionString;

            using (SqlConnection con = new SqlConnection(connectionString))
            {
                using (SqlCommand cmd = new SqlCommand("ChangePassword", con))
                {
                    cmd.CommandType = CommandType.StoredProcedure;

                    cmd.Parameters.Add("@Username", SqlDbType.VarChar, 50).Value = username;
                    cmd.Parameters.Add("@CurrentPassword", SqlDbType.VarChar, 50).Value = currentPassword;
                    cmd.Parameters.Add("@NewPassword", SqlDbType.VarChar, 50).Value = newPassword;

                    con.Open();
                    try
                    {
                        int result = (int)cmd.ExecuteScalar();

                        if (result == 1)
                        {
                            Console.WriteLine("Şifre başarıyla değiştirildi.");
                        }
                        else
                        {
                            Console.WriteLine("Mevcut şifre yanlış.");
                        }
                    }
                    catch (SqlException ex)
                    {
                        Console.WriteLine("Bir hata oluştu: " + ex.Message);
                    }
                }
            }
        }

        protected void SaveChanges_Click(object sender, EventArgs e)
        {

            string about_me = About.Text;
            string email = Email.Text;
            string phone = Phone.Text;
            string country = Country.Text;
            string address = Address.Text;
            string username = Session["Username"].ToString();

            string connectionString = ConfigurationManager.ConnectionStrings["DBBaglan"].ConnectionString;

            using (SqlConnection con = new SqlConnection(connectionString))
            {
                using (SqlCommand cmd = new SqlCommand("EditProfile", con))
                {
                    cmd.CommandType = CommandType.StoredProcedure;

                    cmd.Parameters.Add("@About_me", SqlDbType.VarChar, 50).Value = about_me;
                    cmd.Parameters.Add("@Email", SqlDbType.VarChar, 100).Value = email;
                    cmd.Parameters.Add("@Phone", SqlDbType.VarChar, 20).Value = phone;
                    cmd.Parameters.Add("@Country", SqlDbType.VarChar, 50).Value = country;
                    cmd.Parameters.Add("@Address", SqlDbType.VarChar, 100).Value = address;
                    cmd.Parameters.Add("@Username", SqlDbType.VarChar, 50).Value = username;

                    con.Open();
                    try
                    {
                        cmd.ExecuteNonQuery();
                        Response.Write("<script>alert('Veriler başarıyla güncellendi.');</script>");
                    }
                    catch (SqlException ex)
                    {
                        Response.Write("<script>alert('Bir hata oluştu: " + ex.Message + "');</script>");
                    }
                }
            }
        }

        protected void SaveButton_Click(object sender, EventArgs e)
        {
            if (ProfilePictureUpload.HasFile)
            {
                // Dosyanın sunucuya yüklenmesi
                string fileName = Path.GetFileName(ProfilePictureUpload.FileName);
                string folderPath = Server.MapPath("~/images/");
                string filePath = folderPath + fileName;
                ProfilePictureUpload.SaveAs(filePath);

                // Dosyanın URL'sinin oluşturulması
                string Url = "~/images/" + fileName;

                // URL'yi düzeltme
                Url = Url.Replace("~", "..");

                // Oturum açan kullanıcının username'ini alınması
                string username = Session["Username"].ToString();

                // WebServiceDemo nesnesi oluşturuluyor
                WebServiceDemo berk = new WebServiceDemo();

                
                Bilgiler bilgiler = new Bilgiler();
                bilgiler.Username = username;
                bilgiler.URLField = Url;

                
                DataTable result = berk.SelectImageWs(bilgiler);

                if (result.Rows.Count > 0)
                {
                    int loggedUserId = Convert.ToInt32(result.Rows[0]["ID"]);

                    string connectionString = ConfigurationManager.ConnectionStrings["DBBaglan"].ConnectionString;
                    // Veritabanına kaydedilmesi
                    using (SqlConnection con = new SqlConnection(connectionString))
                    {
                        using (SqlCommand cmd = new SqlCommand("Image", con))
                        {
                            cmd.CommandType = CommandType.StoredProcedure;

                            cmd.Parameters.Add("@URL", SqlDbType.VarChar).Value = Url;
                            cmd.Parameters.Add("@Person_Id", SqlDbType.Int).Value = loggedUserId;

                            con.Open();
                            cmd.ExecuteNonQuery();
                            con.Close();
                        }
                    }

                    // ProfileImage denetiminin ImageUrl özelliğini güncelleme
                    Session["ProfileImageUrl"] = Url;

                    // AnaSayfa.aspx sayfasına yönlendirme
                    Response.Redirect("AnaSayfa.aspx");
                }
                else
                {
                    // Kullanıcı adı bulunamadı, hata mesajı göster
                    Console.WriteLine("Kullanıcı adı bulunamadı.");
                }
            }
        }



        protected void KaydetButton_Click(object sender, EventArgs e)
        {
            string connectionString = ConfigurationManager.ConnectionStrings["DBBaglan"].ConnectionString;

            try
            {
                using (SqlConnection con = new SqlConnection(connectionString))
                {
                    using (SqlCommand cmd = new SqlCommand("InsertIntoCertificates", con))
                    {
                        cmd.CommandType = CommandType.StoredProcedure;

                        if (Session["Person_Id"] != null)
                        {
                            cmd.Parameters.Add(new SqlParameter("@Person_Id", Convert.ToInt32(Session["Person_Id"])));
                        }
                        else
                        {
                            
                            Console.WriteLine("Person_Id değeri bulunamadı.");
                            
                        }

                        cmd.Parameters.Add(new SqlParameter("@Name", Name.Text));
                        cmd.Parameters.Add(new SqlParameter("@Delivery_Date", DeliveryDate.Text));
                        cmd.Parameters.Add(new SqlParameter("@Institution", Institution.Text));
                        cmd.Parameters.Add(new SqlParameter("@Department", Department.Text));
                        cmd.Parameters.Add(new SqlParameter("@Last_updated_date", DateTime.Now));
                        cmd.Parameters.Add(new SqlParameter("@Last_updated_by", HttpContext.Current.User.Identity.Name));
                        cmd.Parameters.Add(new SqlParameter("@Creation_date", DateTime.Now));
                        cmd.Parameters.Add(new SqlParameter("@Created_by", HttpContext.Current.User.Identity.Name));

                        con.Open();
                        cmd.ExecuteNonQuery();
                    }
                }
            }
            catch (Exception ex)
            {
                Console.WriteLine("An error occured", ex.Message);
            }
        }

        protected void DownloadButton_Click(object sender, EventArgs e)
        {

        }

        protected void CopyButton_Click(object sender, EventArgs e)
        {
            string connectionString = ConfigurationManager.ConnectionStrings["DBBaglan"].ConnectionString;

            try
            {
                using (SqlConnection con = new SqlConnection(connectionString))
                {
                    using (SqlCommand cmd = new SqlCommand("InsertIntoEducation", con))
                    {
                        cmd.CommandType = CommandType.StoredProcedure;

                        if (Session["Person_Id"] !=  null)
                        {
                            cmd.Parameters.Add(new SqlParameter("@Person_Id", Convert.ToInt32(Session["Person_Id"])));
                        }
                        else
                        {
                            Console.WriteLine("Person_Id değeri bulunamadı.");
                            return;
                        }

                        cmd.Parameters.Add(new SqlParameter("@Name_Of_School", NameOfSchool.Text));
                        cmd.Parameters.Add(new SqlParameter("@Department", TextBox4.Text));
                        cmd.Parameters.Add(new SqlParameter("@Gradution_date", GraduationDate.Text));
                        cmd.Parameters.Add(new SqlParameter("@Last_updated_date", DateTime.Now));
                        cmd.Parameters.Add(new SqlParameter("@Last_updated_by", HttpContext.Current.User.Identity.Name));
                        cmd.Parameters.Add(new SqlParameter("@Creation_date", DateTime.Now));
                        cmd.Parameters.Add(new SqlParameter("@Created_by", HttpContext.Current.User.Identity.Name));
                        
                        con.Open();
                        cmd.ExecuteNonQuery();
                    }
                }
            }
            catch (Exception ex)
            {
                Console.WriteLine("An error occured", ex.Message);
            }
        }

        protected void RedirectEduButton_Click(object sender, EventArgs e)
        {
            Response.Redirect("AnaSayfa.aspx");
        }
        protected void Save2Button_Click(object sender, EventArgs e)
        {
            string connectionString = ConfigurationManager.ConnectionStrings["DBBaglan"].ConnectionString;

            try
            {
                using (SqlConnection con = new SqlConnection(connectionString))
                {
                    using (SqlCommand cmd = new SqlCommand("InsertIntoExperiences", con))
                    {
                        cmd.CommandType = CommandType.StoredProcedure;
                        if (Session["Person_Id"] !=  null)
                        {
                            cmd.Parameters.Add(new SqlParameter("@Person_Id", Convert.ToInt32(Session["Person_Id"])));
                        }
                        else
                        {
                            Console.WriteLine("Person_Id değeri bulunamadı.");
                            return;
                        }

                        cmd.Parameters.Add(new SqlParameter("@Position", Position.Text));
                        cmd.Parameters.Add(new SqlParameter("@Department", TextBox9.Text));
                        cmd.Parameters.Add(new SqlParameter("@Company_Name", CompanyName.Text));
                        cmd.Parameters.Add(new SqlParameter("@Start_Date", StartDate.Text));
                        cmd.Parameters.Add(new SqlParameter("@End_Date", EndDate.Text));
                        cmd.Parameters.Add(new SqlParameter("@Last_updated_date", DateTime.Now));
                        cmd.Parameters.Add(new SqlParameter("@Last_updated_by", HttpContext.Current.User.Identity.Name));
                        cmd.Parameters.Add(new SqlParameter("@Creation_date", DateTime.Now));
                        cmd.Parameters.Add(new SqlParameter("@Created_by", HttpContext.Current.User.Identity.Name));

                        con.Open();
                        cmd.ExecuteNonQuery();
                    }
                }
            }
            catch (Exception ex)
            {
                Console.WriteLine("An error occured", ex.Message);
            }

        }


        protected void RedirectexpButton_Click(object sender, EventArgs e)
        {
            Response.Redirect("AnaSayfa.aspx");
        }
    }
}
