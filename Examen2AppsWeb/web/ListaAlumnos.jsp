<%-- 
    Document   : Alumnos
    Created on : 29 mar 2022, 23:00:53
    Author     : eber
--%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Alumnos Registrados</h1>
        <form method="get" action="Alumnos">
            Ingresa tu nombre
            <input type="text" name="nombre">
            Ingresa tu matricula
            <input type="text" name="matricula">
            <input type="submit">
        </form>

        <table border="1 | 0">
            <thead>
                <tr>
                    <th>Matricula</th>
                    <th>Nombre</th>
                </tr>
            </thead>

            <tbody>
                <c:forEach items="${alumnos}" var="alu">
                    <tr>
                        <td>${alu.matricula}</td>
                        <td>${alu.nombre}</td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>
    </body>
</html>
