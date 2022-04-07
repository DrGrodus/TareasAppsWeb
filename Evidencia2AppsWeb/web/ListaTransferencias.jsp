<%-- 
    Document   : ListaTransferencias
    Created on : 6 abr 2022, 21:01:34
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
        <h1>Lista de transferencias</h1>
		<table border="1 | 0">
            <thead>
                <tr>
                    <th>Cuenta de retiro</th>
                    <th>Cuenta de deposito</th>
                    <th>Monto</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td>miCuenta</td>
					<td>tuCuenta</td>
					<td>100</td>
                </tr>
				<tr>
                    <td>miCuenta</td>
					<td>otraCuenta</td>
					<td>101</td>
                </tr>
            </tbody>
        </table>
        <form action="MenuCliente.jsp" method="POST">
            <input type="submit" value="Volver al menu">
        </form>
    </body>
</html>
