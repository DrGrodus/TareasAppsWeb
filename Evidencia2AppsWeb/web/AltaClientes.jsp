<%-- 
    Document   : AltaClientes
    Created on : 4 abr 2022, 23:32:29
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
        <h1>Dar de alta clientes</h1>
        <form action="#" method="POST">
            <label>Nombre</label><br>
            <input type="text" name="nombre"><br>

            <label>Apellidos</label><br>
            <input type="text" name="apellidos"><br>

            <label>Direccion</label><br>
            <input type="text" name="direccion"><br>

            <label>CP</label><br>
            <input type="text" name="cp"><br>

            <label>Ciudad</label><br>
            <input type="text" name="ciudad"><br>

            <label>Estado</label><br>
            <input type="text" name="estado"><br>

            <label>Pais</label><br>
            <input type="text" name="pais"> <br>

            <label>Telefono</label><br>
            <input type="tel" name="telefono"><br>

            <label>Fecha de nacimiento</label><br>
            <input type="date" name="fechaNacimiento"><br><br>
            <input type="submit" value="Registrar cliente">
        </form>

        <form action="MenuAdmin.jsp" method="POST">
            <input type="submit" value="Volver al menu">
        </form>
    </body>
</html>
