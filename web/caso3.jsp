<%@page import="cccp.DbConn, java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

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
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Ingresar cliente</title>
    </head>
    <body>
        <h1>Ingresar cliente</h1>
        <form action="verifcaso3.jsp" method="post">
            
                Rut: <input type="text" name="rut" value="sin puntos ni guion">
                <br/> 

                Nombre: <input type="text" name="nombre">
                <br/>
                <p><input type="submit" value="Finalizar"></p>
            
        </form>
    </body>
</html>
