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
                
%>
            <form action="caso2.jsp" method="post">
                <input type="submit" value="ingresar vendedor">
            </form>
            <form action="caso3.jsp" method="post">
                <input type="submit" value="ingresar cliente">
            </form>
            <form action="caso4.jsp" method="post">
                <input type="submit" value="administrar productos">
            </form>
            <form action="caso5.jsp" method="post">
                <input type="submit" value="ingresar compra">
            </form>
            <form action="caso6.jsp" method="post">
                <input type="submit" value="ingresar venta">
            </form>
            <form action="caso7.jsp" method="post">
                <input type="submit" value="ver ventas a cliente">
            </form>

        <%
            }
            else if(nombre.equals(usuario) && passrecibida.equals(contrasena) && tipop.equals("vendedor"))
            {
                //out.print("incorrecto");
%>
            <form action="caso3.jsp" method="post">
                <input type="submit" value="ingresar cliente">
            </form>
            <form action="caso6.jsp" method="post">
                <input type="submit" value="ingresa venta">
            </form>
            <form action="caso7.jsp" method="post">
                <input type="submit" value="ver ventas a cliente">
            </form>
            <form action="caso9.jsp" method="post">
                <input type="submit" value="ver ventas">
            </form>
            

<%
            }
            
            else{
                
%>

<h1> error! </h1>
<form action="index.jsp" method="post">
    <input type="submit" value="volver a menu">
</form>        
        <%
            }
%>
       
    </body>
</html>
