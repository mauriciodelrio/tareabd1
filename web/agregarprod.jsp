<%@page import="cccp.DbConn, java.sql.* "%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Agregar Producto</title>
    </head>
    <body>
        <h1>Agregar producto</h1>
        
            <form action="caso4_1.jsp" method="post">
            
                ID: <input type="text" name="id_prod">
                <br/> 
                Categoría: <input type="text" name="categoria">
                <br/>
                Cantidad: <input type="text" name="cantidad" >
                <br/>
                Nombre: <input type="text" name="nombre">
                <br/>
                Precio: <input type="text" name="precio">
                <br/>
                
                <p><input type="submit" value="Finalizar"></p>
            
            </form>
    </body>
</html>
