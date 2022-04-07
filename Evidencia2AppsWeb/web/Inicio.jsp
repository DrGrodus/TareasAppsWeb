<%-- 
    Document   : Inicio
    Created on : 4 abr 2022, 23:19:17
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
        <h1>Iniciar sesión</h1>
        <form action="Validador" method="POST">
            <label>Usuario</label><br>
            <input type="text" name="usuario"><br>
            <label>Contraseña</label><br>
            <input type="password" name="password"><br>
            <input type="submit"><br>
		</form>
		
            <p> Enlaces temporales </p>
            <a href="MenuAdmin.jsp">Menu de Admin</a><br><br>
            <a href="MenuCliente.jsp">Menu de Cliente</a><br>
        
    </body>
</html>
