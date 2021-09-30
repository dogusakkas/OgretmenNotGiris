using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OgretmenNotGiris.Pages
{
    public partial class DuyuruListesi : System.Web.UI.Page
    {
        DataSetTableAdapters.Tbl_DuyurularTableAdapter dt = new DataSetTableAdapters.Tbl_DuyurularTableAdapter();

        protected void Page_Load(object sender, EventArgs e)
        {
            Repeater_Duyurular.DataSource = dt.DuyuruListesi();
            Repeater_Duyurular.DataBind();
        }
    }
}