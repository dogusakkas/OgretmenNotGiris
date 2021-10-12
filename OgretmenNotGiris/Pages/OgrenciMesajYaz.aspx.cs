using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OgretmenNotGiris.Pages
{
    public partial class OgrenciMesajYaz : System.Web.UI.Page
    {
        DataSetTableAdapters.Tbl_MesajlarTableAdapter dt = new DataSetTableAdapters.Tbl_MesajlarTableAdapter();
        protected void Page_Load(object sender, EventArgs e)
        {
            Txt_Gonderen.Text = Session["OgrenciNumara"].ToString();
        }

        protected void Btn_Gonder_Click(object sender, EventArgs e)
        {
            dt.MesajGonder(Txt_Gonderen.Text, Txt_Alici.Text, Txt_Baslik.Text, Txt_Icerik.Value.ToString());
            Response.Redirect("OgrenciGidenMesajlar.aspx");
        }
    }
}