<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Pag_nosotros.aspx.cs" Inherits="asesoria.Pag_nosotros" %>

<!DOCTYPE html>
<html lang="es">
<head runat="server">
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <title>Nosotros - AsesorIA</title>
  <link rel="icon" href="images/logo_asesoria.png" sizes="64x64" />
  <link rel="stylesheet" href="css/css_Nosotros.css" />
</head>
<body>
  <header class="navbar">
    <h1 class="logo-titulo"><span>Asesor</span><span class="azul">IA</span></h1>
    <nav class="nav-links">
      <a href="Pag_principal.aspx">Inicio</a>
      <a href="Pag_nosotros.aspx" class="activo">Nosotros</a>
      <a href="Pag_productos.aspx">Productos</a>
      <a href="Pag_correo.aspx">Registrarte</a>
      <a href="Pag_cuenta.aspx">Iniciar</a>
    </nav>
  </header>

  <section class="nosotros">
    <div class="contenido-nosotros">
      <h2>¿Quiénes somos?</h2>
      <p>
        En <strong>AsesorIA</strong>, fusionamos inteligencia artificial con asesoría financiera para brindarte las mejores herramientas de inversión. Nuestro objetivo es democratizar el acceso a la inversión inteligente, ofreciéndote soluciones fáciles, rápidas y efectivas.
      </p>
    </div>

    <div class="mision-vision">
      <div class="mision">
        <h3>Nuestra Misión</h3>
        <p>
          Empoderar a cada usuario con conocimiento y herramientas financieras basadas en IA para que puedan tomar decisiones seguras y rentables.
        </p>
      </div>
      <div class="vision">
        <h3>Nuestra Visión</h3>
        <p>
          Ser la plataforma líder en asesoramiento automatizado, revolucionando la forma en que las personas invierten y planifican su futuro.
        </p>
      </div>
    </div>

    <div class="equipo">
      <h3>Conoce al equipo</h3>
      <div class="miembros">
        <div class="miembro">
          <img src="images/mathew.png" alt="Miembro 1" />
          <p>Albarracin Mathew<br><span>Co fundador y CEO</span></p>
        </div>
        <div class="miembro">
          <img src="images/Isac.png" alt="Miembro 2" />
          <p>Castillo Eduardo<br><span>Gestor de carteras</span></p>
        </div>
        <div class="miembro">
          <img src="images/patrick.png" alt="Miembro 3" />
          <p>Pozgai Patrick<br><span>Fundador</span></p>
        </div>
        <div class="miembro">
          <img src="images/angel.png" alt="Miembro 4" />
          <p>Quincaño Miguel<br><span>Director de Tecnología</span></p>
        </div>
        <div class="miembro">
          <img src="images/jhon.png" alt="Miembro 5" />
          <p>Quiroz Jhon<br><span>Especialista en Finanzas</span></p>
        </div>
      </div>
    </div>
  </section>
</body>
</html>
