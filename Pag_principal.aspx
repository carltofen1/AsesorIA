<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Pag_principal.aspx.cs" Inherits="asesoria.Pag_principal" %>

<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8" />
    <title>Panel Principal - AsesorIA</title>
    <link rel="stylesheet" href="css/css_pag_principal.css" />
</head>
<body>
    <form id="form1" runat="server">
        <aside class="sidebar">
            <h2 class="logo">Asesor<span class="azul">IA</span></h2>
            <nav>
                <a href="Pag_nosotros.aspx">Nosotros</a>
                <a href="Pag_carteras.aspx">Carteras</a>
                <a href="Pag_cuenta_usuario.aspx">Cuenta</a>
            </nav>
        </aside>

        <main class="contenido-principal">
            <header class="top-bar">
                <div class="notificaciones">
                    <a href="#"><img src="images/campana.png" alt="Notificaciones" class="icono" /></a>
                </div>
                <div class="usuario">
                    <asp:Label ID="lblBienvenida" runat="server" Text="Bienvenido, Usuario"></asp:Label>
                </div>
            </header>

            <section class="panel-info">
                <h3>Bienvenido a tu Panel</h3>
                <p>Gestiona tus inversiones y configura tu cuenta desde este espacio.</p>
            </section>
        </main>
    </form>
</body>
</html>
