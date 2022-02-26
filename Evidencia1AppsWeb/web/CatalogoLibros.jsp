<%-- 
    Document   : CatalogoLibros
    Created on : 25 feb 2022, 21:58:30
    Author     : eber
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>

        <p>Cuenta: 
            <%
                
            %>
        </p>
        <a href="CarritoDetalles"><img src="img/Carrito.png"></a> <!-- <a href="URL DESTINO"><img src="URL DE LA IMAGEN"></a> -->

        <section>
            <h3>Libros más populares</h3>
            <form method="POST" action="DetallesLibro">
                <article>
                    <h3>Investigación</h3>
                    <img src="img/Libro1.png" alt="Libro num1"><br>
                    <input type="submit" value="Comprar" name="P1">
                </article><br>

                <article>
                    <h3>Monstruos</h3>
                    <img src="img/Libro2.png" alt="Libro num2"><br>
                    <input type="submit" value="Comprar" name="P2">
                </article><br>

                <article>
                    <h3>Robots</h3>
                    <img src="img/Libro3.png" alt="Libro num3"><br>
                    <input type="submit" value="Comprar"  name="P3">
                </article><br>
            </form>
        </section>
    </body>
</html>
