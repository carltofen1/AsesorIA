using System;
using System.Data.SqlClient;
using System.Configuration;

namespace asesoria
{
    public partial class Pag_cuenta_usuario : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Session["usuario"] == null)
                {
                    Response.Redirect("Pag_correo.aspx");
                }
                else
                {
                    lblUsuarioActual.Text = "Usuario: " + Session["usuario"].ToString();
                }
            }
        }

        protected void btnActualizar_Click(object sender, EventArgs e)
        {
            string nuevoNombre = txtNuevoNombre.Text.Trim();

            if (!string.IsNullOrEmpty(nuevoNombre) && Session["correo"] != null)
            {
                string email = Session["correo"].ToString();
                string connectionString = ConfigurationManager.ConnectionStrings["AsesorIAConnectionString"].ConnectionString;

                using (SqlConnection conn = new SqlConnection(connectionString))
                {
                    string query = "UPDATE usuarios SET nombres = @nuevoNombre WHERE email = @correo";
                    SqlCommand cmd = new SqlCommand(query, conn);
                    cmd.Parameters.AddWithValue("@nuevoNombre", nuevoNombre);
                    cmd.Parameters.AddWithValue("@correo", email);

                    try
                    {
                        conn.Open();
                        int filas = cmd.ExecuteNonQuery();

                        if (filas > 0)
                        {
                            Session["usuario"] = nuevoNombre;
                            lblUsuarioActual.Text = "Usuario: " + nuevoNombre;
                            lblMensaje.Text = "Nombre actualizado correctamente.";
                        }
                        else
                        {
                            lblMensaje.Text = "No se pudo actualizar el nombre.";
                        }
                    }
                    catch (Exception ex)
                    {
                        lblMensaje.Text = "Error: " + ex.Message;
                    }
                }
            }
            else
            {
                lblMensaje.Text = "Ingresa un nuevo nombre.";
            }
        }

        protected void btnCerrarSesion_Click(object sender, EventArgs e)
        {
            Session.Clear();
            Response.Redirect("Pag_correo.aspx");
        }
    }
}
