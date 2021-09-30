using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OgretmenNotGiris.Pages
{
    public partial class OgrenciGuncelle : System.Web.UI.Page
    {
        int ogrenciguncelle;
        DataSetTableAdapters.Tbl_OgrenciTableAdapter dt = new DataSetTableAdapters.Tbl_OgrenciTableAdapter();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Page.IsPostBack == false)
            {

                try
                {

                    ogrenciguncelle = Convert.ToInt32(Request.QueryString["OgrenciID"].ToString());

                    Txt_Ogrenci_ID.Text = ogrenciguncelle.ToString();
                    Txt_Ogrenci_Adi.Text = dt.OgrenciSec(ogrenciguncelle)[0].OgrenciAd;
                    Txt_Ogrenci_Soyadi.Text = dt.OgrenciSec(ogrenciguncelle)[0].OgrenciSoyad;
                    Txt_Ogrenci_Mail.Text = dt.OgrenciSec(ogrenciguncelle)[0].OgrenciMail;
                    Txt_Ogrenci_Telefon.Text = dt.OgrenciSec(ogrenciguncelle)[0].OgrenciTelefon;
                    Txt_Ogrenci_Fotografi.Text = dt.OgrenciSec(ogrenciguncelle)[0].OgrenciFotograf;
                }
                catch (Exception)
                {
                    Txt_Ogrenci_Fotografi.Text = "VERİ GİRİŞİ YAPIN!";
                }
            }
        }
        protected void Btn_Guncelle_Click(object sender, EventArgs e)
        {
            dt.OgrenciGuncelle(Txt_Ogrenci_Adi.Text, Txt_Ogrenci_Soyadi.Text, Txt_Ogrenci_Telefon.Text, Txt_Ogrenci_Mail.Text, Txt_Ogrenci_Fotografi.Text, Convert.ToInt32(Txt_Ogrenci_ID.Text));
            Response.Redirect("Ogretmen.aspx");
        }
    }
}