<%-- 
    Document   : ListaClientes
    Created on : 5 abr 2022, 16:19:40
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
        <h1>Lista de clientes</h1>
        <table border="1 | 0">
            <thead>
                <tr>
                    <th>Numero cliente</th>
                    <th>Nombre</th>
                    <th>Ciudad</th>
                    <th>Detalles cliente</th>
                    <th>Detalles cuenta</th>
                </tr>
            </thead>
            <tbody>
                <tr> <!-- Utiliza el for each -->
                    <td>Num1</td>  <!-- Numero de cliente -->
                    <td>Nombre1</td>  <!-- Nombre -->
                    <td>Ciudad1</td>  <!-- Ciudad -->
                    <td>
                        <form action="Clientes" method="POST">
                            <input type="submit" value="Ver cliente">
                        </form>
                    </td>

                    <td>
                        <form action="Cuentas" method="POST">
                            <input type="submit" value="Ver cuenta">
                        </form>
                    </td>
                </tr>
            </tbody>
        </table>
        <form action="MenuAdmin.jsp" method="POST">
            <input type="submit" value="Volver al menu">
        </form>
    </body>
</html>
