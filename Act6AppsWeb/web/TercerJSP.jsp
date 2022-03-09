<%-- 
    Document   : TercerJSP
    Created on : 7 mar 2022, 21:35:14
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
        <h1>Tercer JSP</h1>
        <form action="index.html" method="post">
            <input type="submit" value="Inicio">
        </form>
        <h3>Calcular el factorial</h3>
        <form method="post" action="TercerJSP.jsp">
            <label>Numero: </label>
            <input type="text" name="num">
            <input type="submit" value="Calcular">
            <p>Resultado: 
                <%! int count = 0;%>
                <%
                    String numS = request.getParameter("num");
                    if (numS != null) {
                        int num = Integer.parseInt(numS);
                        int valorOriginal = num;
                        int resultado = 1;
                        while (num >= 1) {
                            resultado *= num;
                            num--;
                        }
                        out.println(valorOriginal + "!" + " = " + resultado);
                        count++;
                    }
                %>
            </p>
            <p>
                <%= "Ejecuciones de la aplicacion en esta sesión: " + count%>
            </p>
        </form>
    </body>
</html>
