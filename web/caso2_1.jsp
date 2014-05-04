<%@page import="cccp.DbConn, java.sql.*"%>
<%@page session="true" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>recepcion</title>
    </head>
    <body>
        <%
            String nombre="";
            String passrecibida="";
            String tipop="";
            ResultSet recepcion;
            String usuario= (String) request.getParameter("usuario");
            String contrasena= (String) request.getParameter("contrasena");
            out.print("tu user es: " + usuario);
            out.print("<br/>");
            out.print("tu pass es: " + contrasena);
            DbConn db = new DbConn();
            db.DbConn();
            
        %>
    </body>
</html>
