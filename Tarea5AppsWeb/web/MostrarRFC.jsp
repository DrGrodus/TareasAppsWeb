<%-- 
    Document   : MostrarRFC
    Created on : 6 mar 2022, 18:48:58
    Author     : eber
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Generador de RFC</h1>

        <b>Tu RFC es: 
            <%
                String nombre       = request.getParameter("nombre"); nombre = nombre.toUpperCase();
                String apellido1    = request.getParameter("apellido1"); apellido1 = apellido1.toUpperCase();
                String apellido2    = request.getParameter("apellido2"); apellido2 = apellido2.toUpperCase();
                
                String anho         = request.getParameter("anho");
                String mes          = request.getParameter("mes");
                String dia          = request.getParameter("dia");
                
                String RFC = "";
                
                RFC = RFC.concat(apellido1.substring(0, 2));
                RFC = RFC.concat(apellido2.substring(0,1));
                RFC = RFC.concat(nombre.substring(0,1));
                RFC = RFC.concat(anho);
                RFC = RFC.concat(mes);
                RFC = RFC.concat(dia);
                
                out.println(RFC);
                
            %>
        </b>

        <form method="POST" action="index.html">
            <fieldset>
                <legend>Escribe tu nombre</legend>
                <label>Nombre: </label><br>
                <input type="text" name="nombre"><br>

                <label>Primer apellido: </label><br>
                <input type="text" name="apellido1"><br>

                <label>Segundo apellido: </label><br>
                <input type="text" name="apellido2"><br>
            </fieldset>

            <fieldset>
                <legend>Escribe tu fecha de nacimiento</legend>

                <label>Año: </label><br>
                <input type="text" name="anho" placeholder="89, 12, 02"><br>

                <label>Mes: </label><br>
                <input type="text" name="mes" placeholder="1, 3, 5"><br>

                <label>Dia: </label><br>
                <input type="text" name="dia" placeholder="13, 21, 30"><br>
            </fieldset>
            <input type="submit" value="Generar otro">
        </form>
    </body>
</html>
