package Services;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import Controller.DBconnect;
import Model.CusModel;

public class CusServices {

	public boolean insertData(CusModel cuModel) throws ClassNotFoundException {
	    boolean result = false; // Initialize result to false
	    try {
	        // Get data from model
	        String fullname = cuModel.getCusName();
	        String username = cuModel.getCuName();
	        String email = cuModel.getCusEmail();
	        String password = cuModel.getCusPassword();
	        String confirmPassword = cuModel.getConfPassword();

	        // Establish the connection
	        DBconnect db = new DBconnect();
	        Connection conn = db.getConnection(); // Use Connection directly
	        String sql = "INSERT INTO customer (Fname, Uname, email, pass, confPass) VALUES (?, ?, ?, ?, ?)";
	        
	        // Use PreparedStatement to avoid SQL injection
	        PreparedStatement pstmt = conn.prepareStatement(sql);
	        pstmt.setString(1, fullname);
	        pstmt.setString(2, username);
	        pstmt.setString(3, email);
	        pstmt.setString(4, password);
	        pstmt.setString(5, confirmPassword);

	        int rowsAffected = pstmt.executeUpdate();
	        pstmt.close();

	        if (rowsAffected > 0) {
	            System.out.println("Data inserted successfully!");
	            result = true; // Insertion was successful
	        } else {
	            System.out.println("No rows affected. Insertion may have failed.");
	        }

	    } catch (SQLException e) {
	        e.printStackTrace();
	    } finally {
	        // Ensure the connection is closed if needed (not shown here)
	    }
	    return result; // Return the result indicating success or failure
	}

    

    public void updateData(CusModel cuModel) {
        try {
            // Example update query using the 'id' as the primary key
            DBconnect db = new DBconnect();
            String sql = "UPDATE customer SET Fname=?, Uname=?, email=?, pass=?, confPass=? WHERE id=?";
            
            PreparedStatement pstmt = db.getConnection().prepareStatement(sql);
            pstmt.setString(1, cuModel.getCusName());
            pstmt.setString(2, cuModel.getCuName());
            pstmt.setString(3, cuModel.getCusEmail());
            pstmt.setString(4, cuModel.getCusPassword());
            pstmt.setString(5, cuModel.getConfPassword());
            pstmt.setInt(6, cuModel.getCusId());  // Assuming you have an id field in the model
            
            pstmt.executeUpdate();
            pstmt.close();
            System.out.println("Data updated successfully!");

        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public void deleteData(int id) {
        try {
            // Delete data by 'id'
            DBconnect db = new DBconnect();
            String sql = "DELETE FROM customer WHERE id=?";
            
            PreparedStatement pstmt = db.getConnection().prepareStatement(sql);
            pstmt.setInt(1, id);
            
            pstmt.executeUpdate();
            pstmt.close();
            System.out.println("Data deleted successfully!");

        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public List<CusModel> getAllUsers() throws ClassNotFoundException {
        List<CusModel> userList = new ArrayList<>();
        try (Connection conn = new DBconnect().getConnection()) {
            String sql = "SELECT * FROM customer";
            PreparedStatement pstmt = conn.prepareStatement(sql);
            ResultSet rs = pstmt.executeQuery();
            while (rs.next()) {
                CusModel userModel = new CusModel();
                userModel.setCusId(rs.getInt("id"));
                userModel.setCusName(rs.getString("Fname"));
                userModel.setCuName(rs.getString("Uname"));
                userModel.setCusEmail(rs.getString("email"));
                userModel.setCusPassword(rs.getString("pass"));
                userModel.setConfPassword(rs.getString("confPass"));
                userList.add(userModel);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return userList;
    }

    

 
    
    
    
    public boolean validateUser(String username, String password) throws ClassNotFoundException {
        boolean isValid = false;
        try {
            DBconnect db = new DBconnect();
            String sql = "SELECT * FROM customer WHERE Uname = ? AND pass = ?";
            
            PreparedStatement pstmt = db.getConnection().prepareStatement(sql);
            pstmt.setString(1, username);
            pstmt.setString(2, password);
            
            ResultSet rs = pstmt.executeQuery();
            if (rs.next()) {
                isValid = true; // User exists with the provided username and password
            }
            rs.close();
            pstmt.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return isValid;
    }

	}

    
    
    

