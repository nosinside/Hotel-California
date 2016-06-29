package model;

import java.sql.Statement;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.sql.DataSource;

public class BD {
    // JDBC variables

    private DataSource ds = null;
    private Connection connection = null;
    private PreparedStatement stmt = null;
    private ResultSet results = null;

    public void conectar() {
        try {
            // Retrieve the DataSource from JNDI
            System.out.println("GO");
            Context ctx = new InitialContext();
            if (ctx == null) {
                throw new RuntimeException("JNDI Context could not be found.");
            }
            ds = (DataSource) ctx.lookup("java:comp/env/jdbc/dataSourceHotelCalifornia");
            if (ds == null) {
                throw new RuntimeException("DataSource could not be found.");
            }

            this.connection = ds.getConnection();
            System.out.println("CONECCION EXITOSA! :)");

        } catch (SQLException se) {
            throw new RuntimeException("A database error occured. "
                    + se.getMessage());

            // Handle any JNDI errors
        } catch (NamingException ne) {
            throw new RuntimeException("A JNDI error occured. "
                    + ne.getMessage());
        }
    }

    public ResultSet consulta(String sql) {
        this.conectar();
        String error = "";
        ResultSet reg = null;
        try {
            Statement st = this.connection.createStatement();
            System.out.println("QUERY: " + sql);
            reg = st.executeQuery(sql);
        } catch (Exception ee) {
            error = ee.getMessage();
        } finally {
            if (results != null) {
                try {
                    results.close();
                    System.out.println("Result Close :)");
                } catch (SQLException se) {
                    se.printStackTrace(System.err);
                }
            }
            if (stmt != null) {
                try {
                    stmt.close();
                    System.out.println("stmt Close :)");
                } catch (SQLException se) {
                    se.printStackTrace(System.err);
                }
            }
            if (connection != null) {
                try {
                    connection.close();
                    System.out.println("Connection Close :)");
                } catch (Exception e) {
                    e.printStackTrace(System.err);
                }
            }
        }
        return (reg);
    }

    public  ResultSet ejecutar(String sql){
        this.conectar();
        String error = "";
        ResultSet reg = null;
        try {
            Statement st = this.connection.createStatement();
            System.out.println("QUERY: " + sql);
            st.execute(sql);
        } catch (Exception ee) {
            error = ee.getMessage();
        } finally {

            if (stmt != null) {
                try {
                    stmt.close();
                    System.out.println("stmt Close :)");
                } catch (SQLException se) {
                    se.printStackTrace(System.err);
                }
            }
            if (connection != null) {
                try {
                    connection.close();
                    System.out.println("Connection Close :)");
                } catch (Exception e) {
                    e.printStackTrace(System.err);
                }
            }
        }
        return (reg);
    }


 }
