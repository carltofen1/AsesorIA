using System;
using System.Data.SqlClient;
using System.Configuration;

namespace asesoria
{
    public partial class Pag_cuentaR : System.Web.UI.Page
    {
        protected void btnRegistrar_Click(object sender, EventArgs e)
        {
            string nombres = txtNombres.Text.Trim();
            string apellidos = txtApellidos.Text.Trim();
            string email = txtEmail.Text.Trim();
            string contrasenia = txtContrasenia.Text.Trim();

            if (string.IsNullOrEmpty(nombres) || string.IsNullOrEmpty(apellidos) ||
                string.IsNullOrEmpty(email) || string.IsNullOrEmpty(contrasenia))
            {
                lblMensaje.Text = "Completa todos los campos.";
                return;
            }

            string connectionString = ConfigurationManager.ConnectionStrings["AsesorIAConnectionString"].ConnectionString;

            using (SqlConnection conn = new SqlConnection(connectionString))
            {
                string id = Guid.NewGuid().ToString();
                string query = "INSERT INTO usuarios (id, nombres, apellidos, email, contrasenia, rol) VALUES (@id, @nombres, @apellidos, @correo, @clave, 0x01)";

                SqlCommand cmd = new SqlCommand(query, conn);
                cmd.Parameters.AddWithValue("@id", id);
                cmd.Parameters.AddWithValue("@nombres", nombres);
                cmd.Parameters.AddWithValue("@apellidos", apellidos);
                cmd.Parameters.AddWithValue("@correo", email);
                cmd.Parameters.AddWithValue("@clave", contrasenia);

                try
                {
                    conn.Open();
                    cmd.ExecuteNonQuery();
                    lblMensaje.Text = "Registro exitoso. Ahora inicia sesión.";
                    Response.Redirect("Pag_correo.aspx");
                }
                catch (Exception ex)
                {
                    lblMensaje.Text = "Error: " + ex.Message;
                }
            }
        }
    }
}
