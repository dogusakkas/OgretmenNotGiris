using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OgretmenNotGiris.Pages
{
    public partial class NotGuncelle : System.Web.UI.Page
    {
        int id;
        double vize, final;
        double ortalama;

        DataSetTableAdapters.OgrenciNotlarTableAdapter dt_ogrenci = new DataSetTableAdapters.OgrenciNotlarTableAdapter();

        protected void Btn_Güncelle_Click(object sender, EventArgs e)
        {
            id = Convert.ToInt32(Request.QueryString["NotID"].ToString());

            dt_ogrenci.NotGuncelle(byte.Parse(Txt_Ogrenci_Vize.Text), byte.Parse(Txt_Ogrenci_Final.Text), decimal.Parse(Txt_Ogrenci_Ortalama.Text), id);

            Response.Redirect("NotListesi.aspx");
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Page.IsPostBack == false)
            {


                id = Convert.ToInt32(Request.QueryString["NotID"].ToString());
                Txt_Ogrenci_ID.Text = dt_ogrenci.NotGetir2(id)[0].OgrenciNotID.ToString();
                Txt_Ogrenci_Adi_Soyadi.Text = dt_ogrenci.NotGetir2(id)[0].AdıSoyadı.ToString();
                Txt_Ders_Adı.Text = dt_ogrenci.NotGetir2(id)[0].DersAdi.ToString();
                Txt_Ogrenci_Vize.Text = dt_ogrenci.NotGetir2(id)[0].Vize.ToString();
                Txt_Ogrenci_Final.Text = dt_ogrenci.NotGetir2(id)[0].Final.ToString();
                Txt_Ogrenci_Durum.Text = dt_ogrenci.NotGetir2(id)[0].Durum.ToString();



                vize = Convert.ToInt32(Txt_Ogrenci_Vize.Text);
                final = Convert.ToInt32(Txt_Ogrenci_Final.Text);
                ortalama = (vize + final) / 2;
                Txt_Ogrenci_Ortalama.Text = ortalama.ToString();
                if (ortalama >= 65)
                {
                    Txt_Ogrenci_Durum.Text = "Geçti";
                }
                else
                {
                    Txt_Ogrenci_Durum.Text = "Kaldı";
                }

            }

            
        }
    }
}