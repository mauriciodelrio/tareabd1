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
        
        String s="";
        Connection connection = null;
        Class.forName("oracle.jdbc.driver.OracleDriver");   
        connection = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE", "tarea1",
        "root");
        Statement stmt=null;
        stmt= connection.createStatement();
        ResultSet rs=stmt.executeQuery(cons);
        return rs;
        
    }

}