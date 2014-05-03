<%@page import="cccp.DbConn, java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>recepción</title>
    </head>
    <body>
        <%
            String nombre="";
            String passrecibida="";
            ResultSet recepcion;
            String usuario= (String) request.getParameter("usuario");
            String contrasena= (String) request.getParameter("contrasena");
            out.print("tu user es: " + usuario);
            out.print("<br/>");
            out.print("tu pass es: " + contrasena);
            DbConn db = new DbConn();
            db.DbConn();
            
            recepcion=db.Consulta("SELECT * FROM USUARIO WHERE NOMBRE="+"'"+usuario+"'");
            while(recepcion.next()){
            
                nombre=recepcion.getString("NOMBRE");
                passrecibida=recepcion.getString("CONTRASEÑA");
            }
            
            if (nombre.equals(usuario) && passrecibida.equals(contrasena)){
                
                out.print("\n correcto");
%>
        <form action="caso2.jsp" method="post">

            <imput type="submit" value="submit">
        </form>

        <%
            }
        %>
            else{
            
                out.print("incorrecto");
            }
            
            
            %>
        
    </body>
</html>
