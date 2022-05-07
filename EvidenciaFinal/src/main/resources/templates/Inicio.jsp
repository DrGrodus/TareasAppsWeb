<%-- 
    Document   : Inicio
    Created on : 6 may 2022, 21:40:40
    Author     : eber
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Inicio</title>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
    </head>
    <body>
        <form method="POST" action="LogIn">
            <img src="img/LibroLogo.png" alt="Logo de Libreria Garcia">
            <h1>Libreria Garcia</h1>
            <label>Usuario: </label><br>
            <input type="text" name="campoUsuario" placeholder="Usuario"><br><br>
            <label>Contrasena: </label><br>
            <input type="password" name="campoContra" placeholder="Contrasena"><br><br>
            <input type="submit" value="Iniciar sesion"><br><br>
        </form>
        <p><a title="registro" href="registro">No tienes cuenta? Registraste aqui</a></p>

        <section>
            <h3>Libros mas populares</h3>
            <form method="POST" action="LogIn">
                <article>
                    <h3>Investigacion</h3>
                    <img src="img/Libro1.png" alt="Libro num1"><br>
                    <input type="submit" value="Comprar" name="P1" disabled="true">
                    <label><b>Inicia sesion para comprar</b></label><br>
                </article><br>

                <article>
                    <h3>Monstruos</h3>
                    <img src="img/Libro2.png" alt="Libro num2"><br>
                    <input type="submit" value="Comprar" name="P2" disabled="true">
                    <label><b>Inicia sesion para comprar</b></label><br>
                </article><br>

                <article>
                    <h3>Robots</h3>
                    <img src="img/Libro3.png" alt="Libro num3"><br>
                    <input type="submit" value="Comprar"  name="P3" disabled="true">
                    <label><b>Inicia sesion para comprar</b></label><br>
                </article><br>
            </form>
        </section>
    </body>
</html>
