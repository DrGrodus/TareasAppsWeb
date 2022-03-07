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

        <b>El RFC es: 
            <%  %>
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
