<%-- 
    Document   : newjsp
    Created on : 16 mar 2022, 22:16:35
    Author     : eber
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="tag" uri="/WEB-INF/tags.tld" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
        <tag:Suma num1="10" num2="15"/>
        <tag:Resta num1="10" num2="15"/>
    </body>
</html>
