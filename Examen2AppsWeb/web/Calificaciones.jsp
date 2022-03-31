<%-- 
    Document   : Calificaciones
    Created on : 29 mar 2022, 23:43:07
    Author     : eber
--%>
<%@taglib prefix="tag" uri="/WEB-INF/tlds/newtag_library.tld" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Calificaciones</h1>
        
        <%
            Object nombre = request.getAttribute("nombre");
            Integer matricula = request.getAttribute("matricula");

            %>
        
        <tag:AlumnoCalificaciones nombre="" matricula="" />
        
    </body>
</html>
