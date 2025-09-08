package Controller;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;


public class DBConnector {

	public static Connection getConnection() throws ClassNotFoundException, SQLException {
		String url = "jdbc:mysql://localhost:3306/laundrydb";
		String user ="root";
		String password ="";
		
		Class.forName("com.mysql.jdbc.Driver");

		Connection con = DriverManager.getConnection(url,user,password);
		con.setAutoCommit(true);
		
		
		return con;
	}
	
	
}


