<%-- 
    Document   : DetallesLibro
    Created on : 22 feb 2022, 21:40:00
    Author     : eber
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Detalles</title>
    </head>
    <body>
        <form method="POST" action="index.html">
            <input type="submit" value="Volver a inicio">
        </form>
        
        <p>Titulo Libro</p>
        <img src="img/Libro1.png" alt="portadaLibro">
        <form method="POST" action="CarritoDetalles">
            <input type="submit" value="comprar">
        </form>
        <h3>Descripción</h3>
        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. <br>
            Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. <br>
        </p>
        <h4>Sinopsis</h4>
        <p> Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. <br>
            Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.
            Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. <br>
            Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. 
        </p>
    </body>
</html>
