using System;

namespace asesoria
{
    public partial class Pag_principal : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["usuario"] == null)
            {
                Response.Redirect("Pag_correo.aspx");
            }
            else
            {
                lblBienvenida.Text = "Bienvenido, " + Session["usuario"].ToString();
            }
        }
    }
}
