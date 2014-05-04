<%@page import="cccp.DbConn, java.sql.*"%>
<%@page session="true" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<%
String usuario = "";
HttpSession sesionOk = request.getSession();
if (sesionOk.getAttribute("usuario") == null) {
%>
<jsp:forward page="index.jsp">
<jsp:param name="error" value="Es
obligatorio identificarse"/>
</jsp:forward>
<%
} 
else {
usuario = (String)sesionOk.getAttribute("usuario");
}
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>bienvenido</title>
    </head>
    <body>
        <h1>Administrador</h1>
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
        <form action="cerrarsesion.jsp" method="post">
            <input type="submit" value="cerrar sesion">
        </form>
        <a href="caso1.jsp">volver al menu</a>
        
    </body>
</html>
