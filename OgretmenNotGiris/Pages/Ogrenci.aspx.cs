using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OgretmenNotGiris.Pages
{
    public partial class Ogrenci : System.Web.UI.Page
    {

        DataSetTableAdapters.Tbl_OgrenciTableAdapter dt = new DataSetTableAdapters.Tbl_OgrenciTableAdapter();

        protected void Page_Load(object sender, EventArgs e)
        {
            TxtNumara.Text = Session["OgrenciNumara"].ToString();

            TxtAdSoyad.Text = dt.OgrenciProfilGetir(TxtNumara.Text)[0].OgrenciAd + ' ' + dt.OgrenciProfilGetir(TxtNumara.Text)[0].OgrenciSoyad;
            TxtMail.Text = dt.OgrenciProfilGetir(TxtNumara.Text)[0].OgrenciMail;
            TxtSifre.Text = dt.OgrenciProfilGetir(TxtNumara.Text)[0].OgrenciSifre;
            TxtFotograf.Text = dt.OgrenciProfilGetir(TxtNumara.Text)[0].OgrenciFotograf;
            TxtTelefon.Text = dt.OgrenciProfilGetir(TxtNumara.Text)[0].OgrenciTelefon;



        }

        protected void Btn_Olustur_Click(object sender, EventArgs e)
        {
            dt.OgrenciSifreGuncelle(TxtSifre.Text, TxtNumara.Text);
            Response.Redirect("Ogrenci.aspx?OgrenciNumara=" + TxtNumara.Text);
        }
    }
}