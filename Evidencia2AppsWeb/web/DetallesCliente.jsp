<%--
    Document   : DetallesCliente
    Created on : 5 abr 2022, 23:07:35
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
                    <th>Nombre</th>
                    <th>Apellidos</th>
                    <th>Direccion</th>
                    <th>CP</th>
                    <th>Ciudad</th>
                    <th>Estado</th>
                    <th>Pais</th>
                    <th>Telefono</th>
                    <th>Fecha de nacimiento</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td> nombre1 </td>
                    <td> apellidos </td>
                    <td> direccion1 </td>
                    <td> 001</td>
                    <td> ciudad1</td>
                    <td> estado1 </td>
                    <td> pais1 </td>
                    <td> tel1 </td>
                    <td> fecha1 </td>
                </tr>
            </tbody>
        </table>
        <form action="MenuAdmin.jsp" method="POST">
            <input type="submit" value="Volver al menu">
        </form>
    </body>
</html>
