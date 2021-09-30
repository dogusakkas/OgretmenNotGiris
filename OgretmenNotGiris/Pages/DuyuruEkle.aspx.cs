using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OgretmenNotGiris.Pages
{
    public partial class DuyuruEkle : System.Web.UI.Page
    {
        DataSetTableAdapters.Tbl_OgretmenTableAdapter dt = new DataSetTableAdapters.Tbl_OgretmenTableAdapter();
        DataSetTableAdapters.Tbl_DuyurularTableAdapter dt_duyuru = new DataSetTableAdapters.Tbl_DuyurularTableAdapter();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Page.IsPostBack == false)
            {
                DDL_Ogretmenler.DataSource = dt.OgretmenListesi();
                DDL_Ogretmenler.DataTextField = "OgretmenAdSoyad";
                DDL_Ogretmenler.DataValueField = "OgretmenID";
                DDL_Ogretmenler.DataBind();
            }
        }
        protected void Btn_Olustur_Click(object sender, EventArgs e)
        {
            dt_duyuru.DuyuruEkle(Txt_Duyuru_Baslik.Text, TxtAr_Duyuru_Icerik.Value.ToString(), Convert.ToInt32(DDL_Ogretmenler.SelectedValue));
            Response.Redirect("DuyuruListesi.aspx");
        }
    }
}