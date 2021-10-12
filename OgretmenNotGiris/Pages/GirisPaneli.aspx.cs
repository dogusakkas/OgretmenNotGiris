using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OgretmenNotGiris.Pages
{
    public partial class GirisPaneli : System.Web.UI.Page
    {
        SqlConnection baglanti = new SqlConnection(@"Data Source=DESKTOP-BIVS41I;Initial Catalog=OgrenciOgretmenNotGiris;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BtnGirisYap_Click(object sender, EventArgs e)
        {
            baglanti.Open();
            SqlCommand komut = new SqlCommand("Select * From Tbl_Ogrenci where OgrenciNumara=@p1 and OgrenciSifre=@p2", baglanti);
            komut.Parameters.AddWithValue("@p1", TxtNumara.Text);
            komut.Parameters.AddWithValue("@p2", TxtSifre.Text);
            SqlDataReader dr = komut.ExecuteReader();
            if (dr.Read())
            {
                Session.Add("OgrenciNumara", TxtNumara.Text);
                Response.Redirect("Ogrenci.aspx");
            }
            else
            {
                TxtSifre.Text = "Hatalı Şifre";
            }
            baglanti.Close();

            
        }
    }
}