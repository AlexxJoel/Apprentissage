package mx.edu.utez.practica1javaweb.utility;
import com.sun.org.slf4j.internal.Logger;
import com.sun.org.slf4j.internal.LoggerFactory;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class conexionMysql {
    public static Connection getConnection() throws SQLException {
        DriverManager.registerDriver(new com.mysql.cj.jdbc.Driver());
        return DriverManager.getConnection("jdbc:mysql://localhost:3308/celular", "root", "root");
    }
    public static void main(String[] args) {
        Logger logger = LoggerFactory.getLogger(conexionMysql.class);
        try {
            logger.info("Abriendo conexion");
            Connection con = conexionMysql.getConnection();
            logger.info("Conexión establecida");
            con.close();
            logger.info("Conexion Finalizada");
        } catch (Exception e) {
            logger.info("Error en la Conexion");
            logger.error(e.getMessage());
        }
    }
}