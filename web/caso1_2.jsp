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
        <title>bienvenido vendedor</title>
    </head>
    <body>
        <h1>Vendedor</h1>
        
        <form action="caso3.jsp" method="post">
            <input type="submit" value="ingresar cliente">
        </form>
        <form action="caso7.jsp" method="post">
            <input type="submit" value="ingresa venta">
        </form>
        <form action="caso8.jsp" method="post">
            <input type="submit" value="ver ventas a cliente">
        </form>
        <form action="caso9.jsp" method="post">
            <input type="submit" value="ver ventas">
        </form>
        <form action="cerrarsesion.jsp" method="post">
            <input type="submit" value="cerrar sesion">
        </form>
        
        <a href="caso1.jsp">volver al menu</a>
    </body>
</html>
