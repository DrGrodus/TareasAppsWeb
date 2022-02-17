<%-- 
    Document   : boleto
    Created on : 16 feb 2022, 21:30:56
    Author     : eber
--%>

<%@page import="java.io.PrintWriter"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>

        <%
            String nombre = request.getParameter("nombre");
            String apellidos = request.getParameter("apellidos");
            String email = request.getParameter("email");
            String tel = request.getParameter("tel");
            String ciudad = request.getParameter("ciudad");
            String pais = request.getParameter("pais");
        %>
        <h1>Felicidades usted se ha registrado con éxito!</h1>
        <p>Folio: 14</p>
        <p>Bienvenido <% out.println(nombre + apellidos); %></p>
        <p>Aqui esta tu boleto</p>
        
    </body>
</html>
