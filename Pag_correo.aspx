<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Pag_correo.aspx.cs" Inherits="asesoria.Pag_correo" %>

<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8" />
    <title>Iniciar Sesión</title>
    <link rel="stylesheet" href="css/css_login.css" />
</head>
<body>
    <form id="form1" runat="server">
        <div class="login-container">
            <h2>Iniciar Sesión</h2>
            <asp:TextBox ID="txtCorreo" runat="server" CssClass="input" placeholder="Correo electrónico"></asp:TextBox><br />
            <asp:TextBox ID="txtClave" runat="server" CssClass="input" TextMode="Password" placeholder="Contraseña"></asp:TextBox><br />
            <asp:Button ID="btnLogin" runat="server" CssClass="btn" Text="Iniciar sesión" OnClick="btnLogin_Click" /><br />
            <asp:Label ID="lblError" runat="server" CssClass="error" ForeColor="Red"></asp:Label><br />
            <a href="Pag_cuentaR.aspx">¿No tienes cuenta? Regístrate aquí</a>
        </div>
    </form>
</body>
</html>
