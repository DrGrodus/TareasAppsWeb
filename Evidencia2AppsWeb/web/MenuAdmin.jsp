<%-- 
    Document   : MenuAdmin
    Created on : 4 abr 2022, 23:26:14
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
        <h1>Menu principal (Admin)</h1>
        <form action="OpcionesAdmin" method="POST">
            <input type="submit" name="altaCliente" value="Alta cliente"><br><br>
            <input type="submit" name="altaCuenta" value="Alta cuenta"><br><br>
            <input type="submit" name="listaClientes" value="Lista de clientes"><br><br>
        </form>
    </body>
</html>
