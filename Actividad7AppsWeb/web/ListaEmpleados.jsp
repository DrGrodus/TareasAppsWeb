<%-- 
    Document   : ListaEmpleados
    Created on : 16 mar 2022, 22:59:14
    Author     : eber
--%>

<%@taglib tagdir="/WEB-INF/tags/taglibs-standard-spec-1.2.5.jar" prefix="c1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c2" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
        <table>
            <thead>
                <tr>
                    <th>ID</th>
                    <th>Nombre</th>
                    <th>Poblacion</th>
                </tr>
            </thead>

            <tbody>
                
                <c2:forEach items="${empleados}" var="emp">
                    <tr>
                        <td>${emp.id}</td>
                        <td>${emp.name}</td>
                        <td>${emp.rol}</td>
                    </tr>
                </c2:forEach>
                
<!--                <c:forEach items="${empleados}" var="emp">
                    <tr>
                        <td>${emp.id}</td>
                        <td>${emp.name}</td>
                        <td>${emp.rol}</td>
                    </tr>
                </c:forEach>-->
            </tbody>
        </table>
    </body>
</html>
