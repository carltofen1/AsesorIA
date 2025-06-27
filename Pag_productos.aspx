<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Pag_productos.aspx.cs" Inherits="asesoria.Pag_productos" %>

<!DOCTYPE html>
<html lang="es">
<head runat="server">
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
  <title>AsesorIA</title>
  <link rel="icon" sizes="64x64" href="images/logo_asesoria.png">
  <link rel="stylesheet" href="css/css_Productos.css" />
</head>
<body>

  <header class="navbar">
    <h1 class="logo-titulo"><span>Asesor</span><span class="azul">IA</span></h1>
    <nav class="nav-links">
      <a href="Pag_principal.aspx">Inicio</a>
      <a href="Pag_nosotros.aspx">Nosotros</a>
      <a href="Pag_productos.aspx">Productos</a>
      <a href="Pag_correo.aspx">Registrarte</a>
      <a href="Pag_cuenta.aspx">Iniciar</a>
    </nav>
  </header>

  <section class="productos">
    <h1 class="titulo">PRODUCTOS</h1>
    <p class="subtitulo">Explora nuestras opciones de inversión personalizadas</p>

    <div class="contenedor-cajas">
      <div class="caja">
        <img src="images/edificio.png" alt="Inversiones Inmobiliarias">
        <h2>INVERSIONES INMOBILIARIAS</h2>
        <p>Invierte en bienes raíces comerciales para diversificar tu cartera</p>
        <button class="btn-explorar">Explorar</button>
      </div>

      <div class="caja">
        <img src="images/equipo.png" alt="Financiamiento PYME">
        <h2>FINANCIAMIENTO PYME</h2>
        <p>Ofrece opciones de financiamiento a empresas en crecimiento</p>
        <button class="btn-invertir">Invertir ahora</button>
      </div>
    </div>

    <div class="explicacion-productos">

      <div class="explicacion-item fila-izquierda">
        <img src="images/crowd.png" alt="Crowd Inmobiliario">
        <div class="texto-explicacion">
          <h3>CROWD INMOBILIARIO</h3>
          <p>
            Participa en el financiamiento de proyectos de vivienda social en Perú.
            Accede desde montos bajos y contribuye al desarrollo del país con transparencia,
            respaldo de desarrolladoras e impacto social. Al estar alineado a MiVivienda,
            representa una excelente opción de inversión con propósito.
          </p>
        </div>
      </div>

      <div class="explicacion-item fila-derecha">
        <div class="texto-explicacion">
          <h3>CROWD PYMEs</h3>
          <p>
            Financia pequeñas y medianas empresas con garantía hipotecaria.
            Accede a una rentabilidad superior al 15 % anual, diversifica tu cartera
            y apoya al crecimiento económico del país. Seguridad, control y compromiso
            social desde una plataforma transparente.
          </p>
        </div>
        <img src="images/pymes.png" alt="Crowd PYMEs">
      </div>

    </div>
  </section>

  <footer class="footer">
    &copy; 2025 AsesorIA. Todos los derechos reservados.
  </footer>

</body>
</html>
