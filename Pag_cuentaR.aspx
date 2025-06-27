<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Pag_cuentaR.aspx.cs" Inherits="asesoria.Pag_cuentaR" %>
<!DOCTYPE html>
<html lang="es">
<head runat="server">
    <meta charset="utf-8" />
    <title>Registro</title>
    <link rel="stylesheet" href="css/css_cuentaR.css" />
</head>
<body>
    <form id="form1" runat="server">
        <div class="registro-container">
            <h2>Crear cuenta</h2>

            <asp:TextBox ID="txtNombres" runat="server" CssClass="input" placeholder="Nombres"></asp:TextBox>
            <asp:TextBox ID="txtApellidos" runat="server" CssClass="input" placeholder="Apellidos"></asp:TextBox>
            <asp:TextBox ID="txtEmail" runat="server" CssClass="input" placeholder="Correo electrónico"></asp:TextBox>
            <asp:TextBox ID="txtContrasenia" runat="server" CssClass="input" TextMode="Password" placeholder="Contraseña"></asp:TextBox>

            <asp:Label ID="lblMensaje" runat="server" CssClass="mensaje"></asp:Label>

            <asp:Button ID="btnRegistrar" runat="server" Text="Registrarse" CssClass="btn" OnClick="btnRegistrar_Click" />
        </div>
    </form>
</body>
</html>