using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OgretmenNotGiris.Pages
{
    public partial class OgrenciEkle : System.Web.UI.Page
    {
        DataSetTableAdapters.Tbl_OgrenciTableAdapter dt = new DataSetTableAdapters.Tbl_OgrenciTableAdapter();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
           

            dt.OgrenciEkle(Txt_Ogrenci_Adi.Text, Txt_Ogrenci_Soyadi.Text, Txt_Ogrenci_Telefon.Text, Txt_Ogrenci_Mail.Text, Txt_Ogrenci_Fotografi.Text);
            Response.Redirect("Ogretmen.aspx");

        }
    }
}