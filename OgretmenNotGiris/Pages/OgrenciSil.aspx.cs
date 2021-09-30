using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OgretmenNotGiris.Page
{
    public partial class OgrenciSil : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            DataSetTableAdapters.Tbl_OgrenciTableAdapter dt = new DataSetTableAdapters.Tbl_OgrenciTableAdapter();

            int ogrenciID = Convert.ToInt32(Request.QueryString["OgrenciID"].ToString());

            dt.OgrenciSil(ogrenciID);
            Response.Redirect("Ogretmen.aspx");
        }
    }
}