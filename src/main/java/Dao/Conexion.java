package Dao;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
public class Conexion {
	private static String url = "jdbc:mysql://localhost:3306/bdbancogrupo15";
    private static  String user = "root";
    private static  String pass = "root";

    public static Connection getConexion() throws SQLException, ClassNotFoundException {
        Class.forName("com.mysql.cj.jdbc.Driver");
        return DriverManager.getConnection(url, user, pass);
    }
}
