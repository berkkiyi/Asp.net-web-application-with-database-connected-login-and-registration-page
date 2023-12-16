using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;
using System.Web.Services;

namespace WebAsp
{
    /// <summary>
    /// Summary description for WebServiceDemo
    /// </summary>
    [WebService(Namespace = "http://tempuri.org/")]
    [WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
    [System.ComponentModel.ToolboxItem(false)]
    // To allow this Web Service to be called from script, using ASP.NET AJAX, uncomment the following line. 
    // [System.Web.Script.Services.ScriptService]
    public class WebServiceDemo : System.Web.Services.WebService
    {
        [WebMethod]
        public DataTable SelectImageWs(Bilgiler pbilgiler)
        {
            DataTable selectdt = null;

            try
            {
                string v_select = "SELECT ID FROM PERSON WHERE Username = '"+pbilgiler.Username+"'";

                using (SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["DBBaglan"].ConnectionString))
                {
                    SqlCommand selectcom = new SqlCommand(v_select, conn);
                    selectcom.Parameters.AddWithValue("@PersonId", pbilgiler.PersonId);

                    SqlDataAdapter da = new SqlDataAdapter(selectcom);
                    selectdt = new DataTable();
                    da.Fill(selectdt);
                }
            }
            catch (SqlException e)
            {
                Console.WriteLine("Hata! " + e.Message);
                throw;
            }

            return selectdt;
        }
    }
}
