using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OgretmenNotGiris.Pages
{
    public partial class DersSil : System.Web.UI.Page
    {
        DataSetTableAdapters.Tbl_DerslerTableAdapter dt_sil = new DataSetTableAdapters.Tbl_DerslerTableAdapter();
        protected void Page_Load(object sender, EventArgs e)
        {
            int id = Convert.ToInt32(Request.QueryString["DersID"].ToString());
            dt_sil.DersSil(id);
            Response.Redirect("DersListesi.aspx");
        }
    }
}