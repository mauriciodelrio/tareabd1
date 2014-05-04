
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page session="true" %>
<%
HttpSession sesionOk = request.getSession();
sesionOk.invalidate();
%>
<jsp:forward page="index.jsp"/>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>cerrar sesion</title>
    </head>
    <body>

    </body>
</html>
