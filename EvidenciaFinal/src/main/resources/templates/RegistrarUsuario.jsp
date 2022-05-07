<%-- 
    Document   : RegistrarUsuario
    Created on : 6 may 2022, 21:40:51
    Author     : eber
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Registro de usuario</title>
    </head>
    <body>
        <h2>Registrate</h2>
        <form method="POST" action="RegistroUsuario">
            <label>Nombre: </label><br>
            <input type="text" name="campoNombre"><br><br>
            <label>Apellidos: </label><br>
            <input type="text" name="campoApellidos"><br><br>
            <label>Código postal: </label><br>
            <input type="text" name="campoCPostal"><br><br>
            <label>Ciudad: </label><br>
            <input type="text" name="campoCiudad"><br><br>
            <label>Estado: </label><br>
            <input type="text" name="campoEstado"><br><br>
            
            <input type="submit" value="Registrar">
        </form>
    </body>
</html>
