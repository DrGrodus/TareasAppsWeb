<%-- 
    Document   : DetallesCuentas
    Created on : 6 abr 2022, 21:15:35
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
        <h1>Detalles cliente</h1>
        <table border="1 | 0">
            <thead>
                <tr>
                    <th>Numero de cuenta</th>
                    <th>Numero de cliente</th>
                    <th>tipo de cuenta</th>
                    <th>Monto</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td> 001 </td>
                    <td> 001 </td>
                    <td> tipoCuenta </td>
                    <td> 001 </td>
                </tr>
            </tbody>
        </table>
        <form action="MenuAdmin.jsp" method="POST">
            <input type="submit" value="Volver al menu">
        </form>
    </body>
</html>
