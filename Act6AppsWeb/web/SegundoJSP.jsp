<%-- 
    Document   : SegundoJSP
    Created on : 7 mar 2022, 21:35:08
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
        <h1>Segundo JSP</h1>
        <p>
            <%
                int num = (int)(Math.random()*10)+ 1;
                int resultado = 1;
                for(int i = 1;i<num;i++){
                    resultado *= num;
                    num--;
                }
                out.println("El factorial de: " + num + " es: " + resultado);
            %>
        </p>
    </body>
</html>
