using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OgretmenNotGiris.Pages
{
    public partial class MesajYaz : System.Web.UI.Page
    {
        DataSetTableAdapters.Tbl_MesajlarTableAdapter dt_mesaj = new DataSetTableAdapters.Tbl_MesajlarTableAdapter();

        protected void Page_Load(object sender, EventArgs e)
        {
            Txt_Gonderen.Text = "170001001";
        }

        protected void Btn_Gonder_Click(object sender, EventArgs e)
        {
            dt_mesaj.MesajGonder(Txt_Gonderen.Text, Txt_Alici.Text, Txt_Baslik.Text, Txt_Icerik.Value);
            Response.Redirect("GidenMesajlar.aspx");
        }
    }
}