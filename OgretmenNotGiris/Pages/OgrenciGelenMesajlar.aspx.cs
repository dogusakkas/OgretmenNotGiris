using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OgretmenNotGiris.Pages
{
    public partial class OgrenciGelenMesajlar : System.Web.UI.Page
    {
        DataSetTableAdapters.Tbl_MesajlarTableAdapter dt = new DataSetTableAdapters.Tbl_MesajlarTableAdapter();
        protected void Page_Load(object sender, EventArgs e)
        {
            Repeater_Ogrenci_Gelen_Mesajlar.DataSource = dt.OgrenciGelenMesajlar(Session["OgrenciNumara"].ToString());
            Repeater_Ogrenci_Gelen_Mesajlar.DataBind();
        }
    }
}