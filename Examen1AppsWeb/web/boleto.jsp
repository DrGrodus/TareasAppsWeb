<%-- 
    Document   : boleto
    Created on : 16 feb 2022, 21:30:56
    Author     : eber
--%>

<%@page import="java.time.LocalDate"%>
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
            int numero = (int) (Math.random() * 100) + 1;
        %>
        <h1>Felicidades usted se ha registrado con éxito!</h1>
        <p>Bienvenido <% out.println(nombre + " " + apellidos); %></p>
        <p>Aqui esta tu boleto</p>

        <h3>Imprime este boleto y tenlo a la mano al entrar</h3>
        <table border="1">
            <thead>
            <th>Folio: 14</th>
        </thead>

        <tbody>
            <tr>
                <td>Nombre y apellidos</td>
                <td> <% out.println(nombre + " " + apellidos); %> </td>
            </tr>
            <tr>
                <td>Evento</td>
                <td>Feria nacional</td>
            </tr>
            <tr>    
                <td>Lugar</td>
                <td>En la ciudad de <% out.println(ciudad); %>, <% out.println(pais); %> </td>
            </tr>
            <tr>
                <td>Tipo de boleto</td>
                <td>VIP</td>
            </tr>

            <tr>
                <td>Fecha</td>
                <td><% LocalDate date = LocalDate.now(); out.println(date); %></td>
            </tr>

            <tr>
                <td>Asiento</td>
                <td><% out.println(numero);%></td>
            </tr>
        </tbody>

    </table>

</body>
</html>
