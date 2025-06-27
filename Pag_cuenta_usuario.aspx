<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Pag_cuenta_usuario.aspx.cs" Inherits="asesoria.Pag_cuenta_usuario" %>
<!DOCTYPE html>
<html lang="es">
<head runat="server">
    <meta charset="utf-8" />
    <title>Cuenta de Usuario</title>
    <link rel="stylesheet" href="css/css_cuenta_usuario.css" />
</head>
<body>
    <form id="form1" runat="server">
        <div class="contenedor">
            <h2>Cuenta de Usuario</h2>
            <asp:Label ID="lblUsuarioActual" runat="server" CssClass="usuario"></asp:Label>

            <div class="grupo">
                <asp:Label ID="lblMensaje" runat="server" CssClass="mensaje"></asp:Label>
            </div>

            <div class="grupo">
                <asp:TextBox ID="txtNuevoNombre" runat="server" CssClass="input" placeholder="Nuevo nombre de usuario"></asp:TextBox>
            </div>

            <div class="botones">
                <asp:Button ID="btnActualizar" runat="server" Text="Actualizar nombre" CssClass="btn actualizar" OnClick="btnActualizar_Click" />
                <asp:Button ID="btnCerrarSesion" runat="server" Text="Cerrar sesión" CssClass="btn cerrar" OnClick="btnCerrarSesion_Click" />
            </div>
        </div>
    </form>
</body>
</html>