using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebAsp
{
    public partial class Anasayfa : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                GetContent();
                if (Session["ProfileImageUrl"] != null)
                {
                    profilResmi.ImageUrl = Session["ProfileImageUrl"].ToString();
                }
                LoadExperienceDetails();
                GetEducationDetails();
            }
        }


       

        protected void downloadButton_Click(object sender, EventArgs e)
        {
            string userName = Environment.UserName; // Kullanıcının adını alır
            string downloadFolderPath = Path.Combine("C:\\Users", userName, "Downloads"); // İndirilenler klasörünün yolunu oluşturur
            string filePath = Path.Combine(downloadFolderPath, "download.pdf"); // Dosyanın tam yolunu oluşturur

            if (File.Exists(filePath)) // Dosyanın var olduğunu kontrol eder
            {
                Response.ContentType = "Application/docx";
                Response.AppendHeader("Content-Disposition", "attachment; filename=download.pdf");
                Response.TransmitFile(filePath);
                Response.End();
            }
            else
            {
                
                Response.Write("Dosya bulunamadı.");
            }
        }

        private void GetContent()
        {
            string connectionString = ConfigurationManager.ConnectionStrings["DBBaglan"].ConnectionString;

            using (SqlConnection con = new SqlConnection(connectionString))
            {
                using (SqlCommand cmd = new SqlCommand("GetBlogContentByPersonId", con))
                {
                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.Parameters.Add(new SqlParameter("@Person_id", Convert.ToInt32(Session["Person_Id"])));

                    con.Open();
                    using (SqlDataReader reader = cmd.ExecuteReader())
                    {
                        if (reader.Read())
                        {
                            tanitim.Text = reader["Content"].ToString();
                        }
                    }
                }
            }
        }

        private void LoadExperienceDetails()
        {
            // Veritabanından Position ve Company_Name değerlerini al
            string connectionString = ConfigurationManager.ConnectionStrings["DBBaglan"].ConnectionString;
            using (SqlConnection con = new SqlConnection(connectionString))
            {
                using (SqlCommand cmd = new SqlCommand("GetExperienceDetails", con))
                {
                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.Parameters.Add(new SqlParameter("@Person_Id", Convert.ToInt32(Session["Person_Id"])));

                    con.Open();
                    using (SqlDataReader reader = cmd.ExecuteReader())
                    {
                        if (reader.Read())
                        {
                            PositionLabel.Text = reader["Position"].ToString();
                            CompanyLabel.Text = reader["Company_Name"].ToString();
                        }
                    }
                }
            }
        }


        private void GetEducationDetails()
        {
            string connectionString = ConfigurationManager.ConnectionStrings["DBBaglan"].ConnectionString;

            using (SqlConnection con = new SqlConnection(connectionString))
            {
                using (SqlCommand cmd = new SqlCommand("GetEducationDetails", con))
                {
                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.Parameters.Add(new SqlParameter("@Person_Id", Convert.ToInt32(Session["Person_Id"])));

                    con.Open();
                    using (SqlDataReader reader = cmd.ExecuteReader())
                    {
                        if (reader.Read())
                        {
                            DegreeLabel.Text = reader["Name_of_school"].ToString();
                            DescriptionLabel.Text = reader["Department"].ToString();
                        }
                    }
                }
            }
        }

    }
}