<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="asesoria.Properties.WebForm1" %>

<!DOCTYPE html>
<html lang="es">
<head runat="server">
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Iniciar sesión - asistencIA</title>
    <link href="css/asistencIA_CSS.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
        <header class="navbar">
            <img src="images/logo_asesoria.png" alt="Logo" class="logo" />
            <nav class="nav-links">
                <a href="#">Inicio</a>
                <a href="#">Nosotros</a>
                <a href="#">Contacto</a>
            </nav>
        </header>

        <main class="contenido">
            <section class="info">
                <h1>Invierte con confianza</h1>
                <p class="subtitulo">Soluciones de inversiones personalizadas para alcanzar tus metas financieras</p>
                <div class="botones-info">
                    <a href="#" class="btn verde">Comenzar</a>
                    <a href="#" class="btn azul">Más información</a>
                </div>
            </section>

            <section class="formulario">
                <h2>Registrarte</h2>

                <asp:Label runat="server" AssociatedControlID="txtCorreo" Text="Correo electrónico" />
                <asp:TextBox ID="txtCorreo" runat="server" CssClass="input" TextMode="Email" />

                <asp:Label runat="server" AssociatedControlID="txtClave" Text="Contraseña" />
                <asp:TextBox ID="txtClave" runat="server" CssClass="input" TextMode="Password" />

                <div class="acciones">
                    <asp:CheckBox ID="chkRecordar" runat="server" />
                    <label for="chkRecordar">Recuérdame</label>
                    <a href="#">¿Olvidó su contraseña?</a>
                </div>

                <asp:Button ID="btnIniciar" runat="server" Text="Iniciar" CssClass="btn verde" OnClick="btnIniciar_Click" />

                <br /><br />
                <asp:Label ID="lblMensaje" runat="server" ForeColor="Red" />
            </section>
        </main>

        <footer class="footer">
            &copy; 2025 asistencIA. Todos los derechos reservados.
        </footer>
    </form>
</body>
</html>
