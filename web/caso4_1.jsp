<%@page import="cccp.DbConn, java.sql.* "%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
        <%
            String nombre= (String) request.getParameter("nombre");
            String id= (String) request.getParameter("id_prod");
            String categoria= (String) request.getParameter("categoria");
            String cantidad = (String) request.getParameter("cantidad");
            String precio = (String) request.getParameter("precio");

            DbConn db = new DbConn();
            db.DbConn();
            db.insertarProd(id, categoria, cantidad, nombre, precio);
            
        %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Verificacion insertar</title>
    </head>
    <body>

    </body>
</html>
