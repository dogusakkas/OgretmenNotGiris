using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace OgretmenNotGiris.Pages
{
    public partial class Grafik : System.Web.UI.Page
    {
        SqlConnection baglanti = new SqlConnection(@"Data Source=DESKTOP-BIVS41I;Initial Catalog=OgrenciOgretmenNotGiris;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {
            // Sorgu - 1
            baglanti.Open();
            SqlCommand komut = new SqlCommand("Execute Grafik", baglanti);
            SqlDataReader dr = komut.ExecuteReader();
            while (dr.Read())
            {
                Chart_Ders_Kisi.Series["Dersler"].Points.AddXY(Convert.ToString(dr[0]), int.Parse(dr[1].ToString()));
            }
            baglanti.Close(); 


            // Sorgu - 2
            baglanti.Open();
            SqlCommand komut2 = new SqlCommand("Execute Cinsiyet", baglanti);
            SqlDataReader dr2 = komut2.ExecuteReader();
            while (dr2.Read())
            {
                Chart_Cinsiyet.Series["Cinsiyet"].Points.AddXY(Convert.ToString(dr2[0]),Convert.ToString(dr2[1]));
            }
            baglanti.Close();



        }
    }
}