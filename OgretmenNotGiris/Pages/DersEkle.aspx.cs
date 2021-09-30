using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OgretmenNotGiris.Pages
{
    public partial class DersEkle : System.Web.UI.Page
    {
        DataSetTableAdapters.Tbl_DerslerTableAdapter dt_Dersler = new DataSetTableAdapters.Tbl_DerslerTableAdapter();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Btn_Olustur_Click(object sender, EventArgs e)
        {
            dt_Dersler.DersEkle(Txt_Ders.Text);
            Response.Redirect("DersListesi.aspx");
        }
    }
}