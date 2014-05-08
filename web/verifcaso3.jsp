<%@page import="cccp.DbConn, java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%
    String nombre= (String) request.getParameter("nombre");
    String rut = (String) request.getParameter("rut");

    DbConn db = new DbConn();
    db.DbConn();
    db.insertarCliente(rut, nombre);

%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>verificación</title>
    </head>
    <body>
        <a href="caso1.jsp">volver al menu</a>

    </body>
</html>
