package project;
import java.sql.*;

public class ConnectionProvider {
	public static Connection getCon() {
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection connection=DriverManager.getConnection("jdbc:mysql://localhost:3306/eshop","root","dragonthunder2");
			return connection;
			
		} catch (Exception e) {
			return null;
		}
		
	}

}
