<%@page import="cccp.DbConn"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>JSP Page</title>
    </head>
    <body>
        <h1> iniciar Sesión</h1>
        <%
            DbConn db = new DbConn();
            db.DbConn();
            
        %>
        <form action="caso1.jsp" method="post">
            
            Usuario: <input type="text" name="usuario">
            <br/> 
            Contraseña: <input type="password" name="contrasena" >
            <p><input type="submit" value="Entrar"></p>
                   
        </form>
    </body>
</html>
