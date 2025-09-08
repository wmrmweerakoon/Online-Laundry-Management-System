package Controller;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class DBconnect1 {
	
	public static Connection getConnection() throws ClassNotFoundException, SQLException {
		String url = "jdbc:mysql://localhost:3306/laundrydb";
		String user ="root";
		String password ="";
		
		Class.forName("com.mysql.jdbc.Driver");

		Connection con = DriverManager.getConnection(url,user,password);
		con.setAutoCommit(true);
		
		
		return con;
	}

	public PreparedStatement PreparedStatement(String sql) {
		// TODO Auto-generated method stub
		return null;
	}
	
}
