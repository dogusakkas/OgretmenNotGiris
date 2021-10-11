using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OgretmenNotGiris.Pages
{
    public partial class Istatistikler : System.Web.UI.Page
    {
        DataSetTableAdapters.DataTable1TableAdapter dt_istatistik = new DataSetTableAdapters.DataTable1TableAdapter();
        protected void Page_Load(object sender, EventArgs e)
        {
            Txt_Ogrenci_Sayisi.Text = dt_istatistik.OgrenciSayisi().ToString();
            Txt_Ogretmen_Sayisi.Text = Convert.ToString(dt_istatistik.OgretmenSayisi());
            Txt_Ders_Sayisi.Text = Convert.ToString(dt_istatistik.DersSayisi());

            Txt_Toplam_Atilan_Mesaj.Text = Convert.ToString(dt_istatistik.MesajSayisi());
            Txt_Sistemdeki_Duyuru_Sayisi.Text = Convert.ToString(dt_istatistik.DuyuruSayisi());
            Txt_Lisans_Dersindeki_En_Iyi_Ogrenci.Text = Convert.ToString(dt_istatistik.LisansEnIyiOgrenci());
            Txt_Lisans_Ortalama.Text = dt_istatistik.LisansOrtalamasi().ToString();
        }
    }
}