<%@page import="java.sql.Connection"%>
<%@page import = "java.sql.*" %>
<%@page import = "oracle.jdbc.driver.*" %>
<%@page contentType="text/html" %>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Nueva Compra</title>
    </head>
    <body>
        <%                           
            String driver = "oracle.jdbc.OracleDriver";
            String url = "jdbc:oracle:thin:@localhost:1521:XE";
            String username = "tarea1";
            String password = "root";
            Class.forName(driver);
            Connection conn = DriverManager.getConnection(url,username,password);
            Statement stm = conn.createStatement();
            Statement stm2 = conn.createStatement();
            Statement stm3 = conn.createStatement();
            
            String sql = "select MAX(id_compra) from compra";
            ResultSet max_id_compra = stm.executeQuery(sql);
            max_id_compra.next();
            int id_compra = max_id_compra.getInt("max(id_compra)");
            int monto_total = 0;
            
            String sql9 = "select * from detalle_compra where id_compra="+id_compra;

            ResultSet ciclo = stm2.executeQuery(sql9);
            while (ciclo.next()){
                int precio = ciclo.getInt("precio");
                monto_total += precio;
            }
            
            
            String sql3 = "update compra set monto_total="+monto_total+" where id_compra = "+id_compra;
            
            stm3.executeQuery(sql3);
                  
            %><script language="JavaScript">
                    alert("Compra realizada exitosamente.");
                    location.href="caso1_1.jsp";
              </script>
            %>
    </body>
</html>