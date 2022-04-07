<%-- 
    Document   : AltaCuenta
    Created on : 4 abr 2022, 23:43:23
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
        <h1>Dar de alta cuentas</h1>
        <form action="#" method="POST">
            <label>Numero de cuenta</label><br>
            <input type="text" name="numCuenta"><br>

            <label>Numero de cliente</label><br>
            <input type="text" name="numCliente"><br>

            <label>Tipo de cuenta</label><br>
            <select name="tipoCuenta" id="tipoCuenta">
                <option value="">[Selecciona una opcion]</option>
                <option value="opcion1">Opcion 1</option>
                <option value="opcion2">Opcion 2</option>
                <option value="opcion3">Opcion 3</option>
            </select><br>

            <label>Monto</label><br>
            <input type="text" name="monto"><br>

            <input type="submit" value="Registrar cuenta">
        </form>

        <form action="MenuAdmin.jsp" method="POST">
            <input type="submit" value="Volver al menu">
        </form>
    </body>
</html>
