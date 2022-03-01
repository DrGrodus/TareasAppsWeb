<%-- 
    Document   : Carrito
    Created on : 22 feb 2022, 21:50:37
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
        <h3>Descripción de compra</h3>
        <fieldset>
            <h4>Libro 1</h4>
            <img src="img/Libro1.png" alt="Libro num1"><br>
            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. <br>
                Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. <br>
            </p>
        </fieldset>
        
        <fieldset>
            <h4>Libro 2</h4>
            <img src="img/Libro3.png" alt="Libro num1"><br>
            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. <br>
                Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. <br>
            </p>
        </fieldset>
        
        <form method="post" action="">
            <input type="submit" value="pagar">
        </form>
        <form method="POST" action="index.html">
            <input type="submit" value="Volver a inicio">
        </form>
    </body>
</html>
