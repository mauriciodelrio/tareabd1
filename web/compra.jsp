<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<script type="text/javascript">
function validarForm(formulario) {
  if(formulario.cantidad.value.length===0) {
    formulario.cantidad.focus();
    alert('No haz escrito el nombre.');
    return false;
  }
   
  return true;
}
</script>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Nueva Compra</title>
    </head>
    <body>
        <form method="post" action="agregar.jsp" onsubmit="return validarForm(this);">
            <pre>
                Producto: <%
                    String driver = "oracle.jdbc.OracleDriver";
                    String url = "jdbc:oracle:thin:@localhost:1521:XE";
                    String username = "tarea1";
                    String password = "root";
                    Class.forName(driver);
                    Connection conn = DriverManager.getConnection(url,username,password);
                    
                    Statement stm = conn.createStatement();
                    String sql = "select * from producto";

                    ResultSet ciclo = stm.executeQuery(sql);
                    out.println("<select name='id_p'>");
                    while (ciclo.next()){
                        String nombre = ciclo.getString("nombre");
                        int id = ciclo.getInt("id_producto");
                        int precio = ciclo.getInt("precio");
                        out.println("<option value="+id+">"+nombre+" $"+precio+"</option>");  
                    }
                    out.println("</select>");
                    
                %>
                
                Cantidad: <input type="text" name="cantidad">                           
            </pre>
            <input type="submit" value="Agregar">
        </form>
                <a href="fincompra.jsp"><input type="submit" value="Terminar" ></a>
        
        
    </body>
</html>