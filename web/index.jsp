<%@page import="cccp.DbConn, java.util.* "%>
<%@page session="true" %>
<%@page contentType="text/html" pageEncoding="UTF-8" language="java" %>
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
            
            if(request.getParameter("error")!=null){
            
                out.print(request.getParameter("error"));
            }
            
        %>
        <form action="caso1.jsp" method="post">
            
            Usuario: <input type="text" name="usuario">
            <br/> 
            Contraseña: <input type="password" name="contrasena" >
            <p><input type="submit" value="Entrar"></p>
                   
        </form>
    </body>
</html>
