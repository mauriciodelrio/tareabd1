<%@page import="cccp.DbConn, java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

        <%
            String nombre= (String) request.getParameter("nombre");
            String contrasena= (String) request.getParameter("contrasena");
            String repetir= (String) request.getParameter("repetir");
            String rut = (String) request.getParameter("rut");
            
            if(!contrasena.equals(repetir)){
                %>
                
                <jsp:forward page="caso2.jsp"/>
                <%
            }
            DbConn db = new DbConn();
            db.DbConn();
            db.insertarVendedor(rut, contrasena, nombre);
            
        %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>verificación</title>
    </head>
    <body>
    </body>
</html>
