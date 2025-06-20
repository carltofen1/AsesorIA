using System;
using System.Data.SqlClient;

namespace asesoria.Properties
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void btnIniciar_Click(object sender, EventArgs e)
        {
            string correo = txtCorreo.Text.Trim();
            string clave = txtClave.Text.Trim();

            // Reemplaza con tu cadena de conexión real
            string connectionString = "Server=localhost;Database=AsesorIA;Trusted_Connection=True;";

            try
            {
                using (SqlConnection connection = new SqlConnection(connectionString))
                {3
                    string query = "INSERT INTO Usuarios (Correo, Clave) VALUES (@Correo, @Clave)";
                    SqlCommand command = new SqlCommand(query, connection);
                    command.Parameters.AddWithValue("@Correo", correo);
                    command.Parameters.AddWithValue("@Clave", clave); // ¡No guardar contraseñas planas en producción!

                    connection.Open();
                    command.ExecuteNonQuery();

                    lblMensaje.ForeColor = System.Drawing.Color.Green;
                    lblMensaje.Text = "Usuario registrado con éxito.";
                }
            }
            catch (Exception ex)
            {
                lblMensaje.Text = "Error: " + ex.Message;
            }
        }
    }
}
