package Services;


import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;

import org.apache.jasper.tagplugins.jstl.core.Out;

import Controller.DBconnect1;
import Model.OrderTrackingModel;

public class TrackServices {
	
	
	// Create 
	public void InsertData(OrderTrackingModel OTM) {
		
		try{
			
			
			String TrackNO = OTM.getTrackNO();
			String CustEmail =OTM.getCustEmail(); 
			String Date =OTM.getDate();
			
			DBconnect1 dc= new DBconnect1();
			
			@SuppressWarnings("static-access")
			Statement stmt = dc.getConnection().createStatement();
			String sql = "INSERT INTO `order` (TrackNO, Email, Date) VALUES ('" + TrackNO + "', '" + CustEmail + "', '" + Date + "')";
			System.out.println(sql);  // Debug: Print the query to check values

			stmt.executeUpdate(sql);
			

			stmt.close();
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
	}
	
	
	// Read
	public OrderTrackingModel ReadData(int TrackID) {  // Change parameter type to int
	    OrderTrackingModel OTM = new OrderTrackingModel();
	    try {
	        DBconnect1 dc = new DBconnect1();
	        Statement stmt = dc.getConnection().createStatement();
	        String sql = "SELECT * FROM `order` WHERE TrackID = " + TrackID;  // Use TrackID in the WHERE clause
	        ResultSet rs = stmt.executeQuery(sql);

	        if (rs.next()) {
	            OTM.setTrackNO(rs.getString("TrackNO"));
	            OTM.setCustEmail(rs.getString("Email"));
	            OTM.setDate(rs.getString("Date"));
	        }

	        rs.close();
	        stmt.close();

	    } catch (Exception e) {
	        e.printStackTrace();
	    }

	    return OTM;
	}


	//Update data
	public void UpdateData(int TrackID, OrderTrackingModel OTM) {
	    try {
	        String TrackNO = OTM.getTrackNO();
	        String CustEmail = OTM.getCustEmail();
	        String Date = OTM.getDate();

	        DBconnect1 dc = new DBconnect1();
	        String sql = "UPDATE `order` SET TrackNO = ?, Email = ?, Date = ? WHERE TrackID = ?";

	        // Prepare the statement
	        PreparedStatement pstmt = dc.getConnection().prepareStatement(sql);
	        
	        // Set parameters in the correct order
	        pstmt.setString(1, TrackNO);     // TrackNO
	        pstmt.setString(2, CustEmail);   // Email
	        pstmt.setString(3, Date);        // Date
	        pstmt.setInt(4, TrackID);        // TrackID (used in WHERE clause)

	        // Execute the update and get the number of affected rows
	        int rowsAffected = pstmt.executeUpdate();
	        if (rowsAffected > 0) {
	            System.out.println("Update successful! Rows affected: " + rowsAffected);
	        } else {
	            System.out.println("No rows updated; check if TrackID exists: " + TrackID);
	        }

	        pstmt.close();

	    } catch (Exception e) {
	        e.printStackTrace();
	        System.out.println("Error occurred during update: " + e.getMessage());
	    }
	}


	public void DeleteData(int TrackID) {
	    try {
	        DBconnect1 dc = new DBconnect1();
	        String sql = "DELETE FROM `order` WHERE TrackID = ?";

	        // Create prepared statement
	        PreparedStatement pstmt = dc.getConnection().prepareStatement(sql);
	        pstmt.setInt(1, TrackID); // Set TrackID for the first parameter
	        
	        int result = pstmt.executeUpdate(); // Execute update

	        if (result > 0) {
	            System.out.println("TrackID: " + TrackID + " deleted successfully");
	        } else {
	            System.out.println("TrackID: " + TrackID + " not found!");
	        }

	        pstmt.close(); // Close the prepared statement

	    } catch (Exception e) {
	        e.printStackTrace();
	        System.out.println("Error: " + e.getMessage());
	    }
	}


	

}
