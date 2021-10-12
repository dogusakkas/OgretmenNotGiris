using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OgretmenNotGiris.Pages
{
    public partial class DersGuncelle : System.Web.UI.Page
    {
        DataSetTableAdapters.Tbl_DerslerTableAdapter dt = new DataSetTableAdapters.Tbl_DerslerTableAdapter();
        int id;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Page.IsPostBack == false)
            {
                id = Convert.ToInt32(Request.QueryString["DersID"].ToString());
                Txt_Ders_ID.Text = id.ToString();
                Txt_Ders_Ad.Text = dt.DersGetir(id)[0].DersAdi;
            }
        }

        protected void Btn_Olustur_Click(object sender, EventArgs e)
        {
            dt.DersGuncelle(Txt_Ders_Ad.Text, Convert.ToInt32(Txt_Ders_ID.Text));
            Response.Redirect("DersListesi.aspx");
                
        }
    }
}