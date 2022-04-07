<%-- 
    Document   : CrearTransferencia
    Created on : 6 abr 2022, 20:52:16
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
        <h1>Crear transferencias</h1>
		<form action="#" method="POST">
			<label>Tu numero de cuenta</label><br>
			<input type="text"><br>
			
			<label>El numero de cuenta a depositar</label><br>
			<input type="text"><br>
			
			<label>Monto a depositar</label><br>
			<input type="text"><br><br>
			<input type="submit" name="CrearTransferencia" value="Crear transferencia">
		</form>
		<form action="MenuCliente.jsp" method="POST">
            <input type="submit" value="Volver al menu">
        </form>
    </body>
</html>
