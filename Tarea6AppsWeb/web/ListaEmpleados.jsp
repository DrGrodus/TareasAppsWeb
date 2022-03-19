<%-- 
    Document   : ListaEmpleados
    Created on : 18 mar 2022, 22:23:46
    Author     : eber
--%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
        <table border="1px solid black">
            <thead>
                <tr>
                    <th>ID</th>
                    <th>Nombre</th>
                    <th>Puesto</th>
                </tr>
            </thead>
            
            <tbody>
                <c:forTokens delims="()"  items="${empleados}" var="emp">
                    <tr>
                        <c:forTokens delims="," items="${emp}" var="contenido">
                            <td>${contenido}</td>
                        </c:forTokens>
                    </tr>
                </c:forTokens>
            </tbody>
        </table>
    </body>
</html>
