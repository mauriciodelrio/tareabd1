<%@page import="cccp.DbConn, java.sql.*"%>
<%@page session="true" %>
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
            String tipop="";
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
                tipop=recepcion.getString("TIPO");
            }
            
            if (nombre.equals(usuario) && passrecibida.equals(contrasena) && tipop.equals("administrador")){
                HttpSession sesionOk= request.getSession();
                sesionOk.setAttribute("usuario", usuario);
%>

            <jsp:forward page="caso1_1.jsp"/>
        <%
            }
            else if(nombre.equals(usuario) && passrecibida.equals(contrasena) && tipop.equals("vendedor"))
            {
                HttpSession sesionOk= request.getSession();
                sesionOk.setAttribute("usuario", usuario);
%>

            <jsp:forward page="caso1_2.jsp"/>

<%
            }
            
            else{
                
%>

<jsp:forward page="index.jsp">
    <jsp:param name="error" value="Usuario y/o clave incorrectos.Vuelva a intentarlo"/>
</jsp:forward>       
        <%
            }
%>
       
    </body>
</html>
