<%-- 
    Document   : PrimerJSP
    Created on : 7 mar 2022, 21:35:00
    Author     : eber
--%>

<%@page import="java.time.LocalTime"%>
<%@page import="java.time.LocalDate"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Primer JSP</h1>
        <form action="index.html" method="post">
            <input type="submit" value="Inicio">
        </form>
        <p>
            <%= "Estamos a: " + LocalDate.now() + " y son las: " + LocalTime.now() %>
        </p>
        <p>
            <% String susurro = "hola"; %>
            <%= "Ahora en mayúsculas: " + susurro.toUpperCase() %>
        </p>
        
        <p>
            <% 
               int num1 = 3;  int num2 = 6; int resultado = 0; 
               resultado = num1 * num2;
            %>
            <%= "Una operación aritmetica: " + resultado %>
        </p>
        
        <p>
            <% double num = (Math.random()*100)+ 1; %>
            <%= num %>
        </p>
        
    </body>
</html>
