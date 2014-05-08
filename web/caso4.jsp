<%@page import="cccp.DbConn, java.sql.* "%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Administrar productos</title>
    </head>
    <body>
        <h1>Administrar productos</h1>
        
        <% 
            ResultSet consulta;
            DbConn db = new DbConn();
            
            consulta = db.Consulta("SELECT ID_PRODUCTO, DESCRIPCION, STOCK FROM PRODUCTO");
            out.println("<TABLE Border=5 CellPadding=5><TR>"); 
            out.println("<th>ID PRODUCTO</th><th>NOMBRE</th><th>STOCK</th>");
            while(consulta.next()){
                
                out.println("<TR>");
                out.println("<TD>"+consulta.getInt("ID_PRODUCTO")+"</TD>"); 
                out.println("<TD>"+consulta.getString("DESCRIPCION")+"</TD>");
                out.println("<TD>"+consulta.getInt("STOCK")+"</TD>"); 
                out.println("</TR>");
            }
        
        %>
        
        <form action="modifprod.jsp" method="post">
            
            Buscar Producto [por nombre]: <input type="text" name="usuario">
            <br/> 
            <p><input type="submit" value="Editar"></p>                   
        </form>
        <br>
        <form action="agregarprod.jsp" method="post">

            <p><input type="submit" value="Agregar Producto"></p>                
        </form>
    </body>
</html>
