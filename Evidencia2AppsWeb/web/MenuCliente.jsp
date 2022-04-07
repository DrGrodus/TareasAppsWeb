<%-- 
    Document   : MenuCliente
    Created on : 6 abr 2022, 20:33:28
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
        <h1>Menu principal</h1>
        <form action="OpcionesCliente" method="POST">
            <input type="submit" name="crearTransferencia" value="Crear transferncias"><br><br>
            <input type="submit" name="detallesCuenta" value="Ver detalles de cuenta"><br><br>
            <input type="submit" name="verTransferencias" value="Ver transferencias"><br><br>
        </form>
    </body>
</html>
