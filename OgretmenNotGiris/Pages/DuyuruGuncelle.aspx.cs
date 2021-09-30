using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OgretmenNotGiris.Pages
{
    public partial class DuyuruGuncelle : System.Web.UI.Page
    {
        DataSetTableAdapters.Tbl_DuyurularTableAdapter dt_duyurular = new DataSetTableAdapters.Tbl_DuyurularTableAdapter();
        int id;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Page.IsPostBack == false)
            {
                id = Convert.ToInt32(Request.QueryString["DuyuruID"].ToString());
                Txt_Duyuru_ID.Text = id.ToString();
                Txt_Duyuru_Baslik.Text = dt_duyurular.DuyuruSec(id)[0].DuyuruBaslik;
                TxtAr_Duyuru_Icerik.Value = dt_duyurular.DuyuruSec(id)[0].DuyuruIcerik;
            }
        }
        protected void Btn_Olustur_Click(object sender, EventArgs e)
        {
            dt_duyurular.DuyuruGuncelle(Txt_Duyuru_Baslik.Text, TxtAr_Duyuru_Icerik.Value, Convert.ToInt32(Txt_Duyuru_ID.Text));
            Response.Redirect("DuyuruListesi.aspx");
        }
    }
}