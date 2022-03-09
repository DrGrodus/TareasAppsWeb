<%-- 
    Document   : CuartoJSP
    Created on : 7 mar 2022, 21:35:21
    Author     : eber
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Cuatro JSP</h1>
        <form action="index.html" method="post">
            <input type="submit" value="Inicio">
        </form>
        <%! public String Factorial() {
                int num = (int) (Math.random() * 10) + 1;
                int valorOriginal = num;
                int resultado = 1;
                while (num >= 1) {
                    resultado *= num;
                    num--;
                }
                return "El factorial de: " + valorOriginal + " es: " + resultado;
            }
        %>
        
        <%= Factorial() %>
    </body>
</html>
