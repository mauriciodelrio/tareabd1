/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author Oracle-test
 */
package cccp;
import java.sql.*;

public class DbConn {

    public void DbConn() {

        System.out.println("-------- Oracle JDBC Connection Testing ------");

        try {

            Class.forName("oracle.jdbc.driver.OracleDriver");

        } catch (ClassNotFoundException e) {

            System.out.println("Where is your Oracle JDBC Driver?");
            e.printStackTrace();
            return;

        }

        System.out.println("Oracle JDBC Driver Registered!");

        Connection connection = null;

        try {

            connection = DriverManager.getConnection(
                "jdbc:oracle:thin:@localhost:1521:XE", "tarea1",
                "root");

        } catch (SQLException e) {

            System.out.println("Connection Failed! Check output console");
            e.printStackTrace();
            return;

        }

        if (connection != null) {
            System.out.println("You made it, take control your database now!");
        } else {
            System.out.println("Failed to make connection!");
        }
    }
    
    public ResultSet Consulta(String cons) throws ClassNotFoundException, SQLException{
        
        Connection connection = null;
        Class.forName("oracle.jdbc.driver.OracleDriver");   
        connection = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE", "tarea1",
        "root");
        Statement stmt=null;
        stmt= connection.createStatement();
        ResultSet rs=stmt.executeQuery(cons);
        return rs;
        
    }
    
    public void insertarVendedor(String rut, String contrasena, String nombre) throws ClassNotFoundException, SQLException{
        
        Connection connection = null;
        Class.forName("oracle.jdbc.driver.OracleDriver");   
        connection = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE", "tarea1",
        "root");
        PreparedStatement stmt=null;
        String ins= "INSERT INTO USUARIO(RUT,CONTRASEÑA,NOMBRE,TIPO,COMISION) VALUES(?,?,?,?,?)";
        stmt= connection.prepareStatement(ins);
        stmt.setString(1, rut);
        stmt.setString(2, contrasena);
        stmt.setString(3, nombre);
        stmt.setString(4, "vendedor");
        stmt.setString(5, "0");
        stmt.executeUpdate();
    }
    
    public void insertarCliente(String rut, String nombre) throws ClassNotFoundException, SQLException{
        
        Connection connection = null;
        Class.forName("oracle.jdbc.driver.OracleDriver");   
        connection = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE", "tarea1",
        "root");
        PreparedStatement stmt=null;
        String ins= "INSERT INTO CLIENTE(RUT,NOMBRE) VALUES(?,?)";
        stmt= connection.prepareStatement(ins);
        stmt.setString(1, rut);
        stmt.setString(2, nombre);
        stmt.executeUpdate();
    }
    
        public void insertarProd(String id, String categoria, String cantidad, String nombre, String precio) throws ClassNotFoundException, SQLException{
        
        Connection connection = null;
        Class.forName("oracle.jdbc.driver.OracleDriver");   
        connection = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE", "tarea1",
        "root");
        PreparedStatement stmt=null;
        String ins= "INSERT INTO PRODUCTO(ID_PRODUCTO,STOCK,DESCRIPCION,CATEGORIA,PRECIO) VALUES(?,?,?,?,?)";
        stmt= connection.prepareStatement(ins);
        stmt.setString(1, id);
        stmt.setString(2, cantidad);
        stmt.setString(3, nombre);
        stmt.setString(4, categoria);
        stmt.setString(5, precio);
        stmt.executeUpdate();
    }
    
}