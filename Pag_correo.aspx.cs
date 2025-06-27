using System;
using System.Data.SqlClient;
using System.Configuration;

namespace asesoria
{
    public partial class Pag_correo : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            lblError.Text = "";
        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            string correo = txtCorreo.Text.Trim();
            string clave = txtClave.Text.Trim();

            if (string.IsNullOrEmpty(correo) || string.IsNullOrEmpty(clave))
            {
                lblError.Text = "Por favor, complete ambos campos.";
                return;
            }

            string connectionString = ConfigurationManager.ConnectionStrings["AsesorIAConnectionString"].ConnectionString;
            string query = "SELECT nombres FROM usuarios WHERE email = @correo AND contrasenia = @clave";

            using (SqlConnection connection = new SqlConnection(connectionString))
            using (SqlCommand command = new SqlCommand(query, connection))
            {
                command.Parameters.AddWithValue("@correo", correo);
                command.Parameters.AddWithValue("@clave", clave);

                try
                {
                    connection.Open();
                    object result = command.ExecuteScalar();

                    if (result != null)
                    {
                        Session["usuario"] = result.ToString();
                        Session["correo"] = correo;
                        Response.Redirect("Pag_principal.aspx");
                    }
                    else
                    {
                        lblError.Text = "Correo o contraseña incorrectos.";
                    }
                }
                catch (Exception ex)
                {
                    lblError.Text = "Error: " + ex.Message;
                }
            }
        }
    }
}
