using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OgretmenNotGiris.Pages
{
    public partial class GelenMesajlar : System.Web.UI.Page
    {
        DataSetTableAdapters.Tbl_MesajlarTableAdapter dt_gelen = new DataSetTableAdapters.Tbl_MesajlarTableAdapter();
        protected void Page_Load(object sender, EventArgs e)
        {
            Repeater_Gelen_Mesajlar.DataSource = dt_gelen.OgretmenGelenMesajlar();
            Repeater_Gelen_Mesajlar.DataBind();

        }
    }
}