package Services;


import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;

import Controller.DBConnector;

import Model.PaymentModel;



public class PaymentServices {

	// Create 
	public void InsertData(PaymentModel PM) {
		
		try{
			
			DBConnector dc = new DBConnector(); // Initialize DBConnector
		
			String CardName = PM.getCardName();
			String CardNO = PM.getCardNO();
			String ExpDate = PM.getExpDate();
			String cvv = PM.getCvv();
			String BillAddress = PM.getBillAddress();
			String Amount = PM.getAmount();
			
		
			
			
			@SuppressWarnings("static-access")
			Statement stmt = dc.getConnection().createStatement();
			String sql = "INSERT INTO payment (Card_Name,Card_Number,Expiry_Date,CVV,Billing_Address,Amount) VALUES ('"+CardName+"', '"+CardNO+"', '"+ExpDate+"', '"+cvv+"', '"+BillAddress+"', '"+Amount+"')";
			System.out.println(sql);  // Debug: Print the query to check values

			stmt.executeUpdate(sql);
			

			stmt.close();
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
	}
	
	
	// Read
	public PaymentModel ReadData(int PaymentID) {
	    PaymentModel payment = new PaymentModel();
	    try {
	        DBConnector dc = new DBConnector(); // Initialize DBConnector
	        Statement stmt = dc.getConnection().createStatement();
	        String sql = "SELECT * FROM payment WHERE PaymentID = " + PaymentID;  // Use PaymentID in the WHERE clause
	        ResultSet rs = stmt.executeQuery(sql);
	        
	        

	        if (rs.next()) {
	            payment.setCardName(rs.getString("Card_Name"));
	            payment.setCardNO(rs.getString("Card_Number"));
	            payment.setExpDate(rs.getString("Expiry_Date"));
	            payment.setCvv(rs.getString("CVV"));
	            payment.setBillAddress(rs.getString("Billing_Address"));
	            payment.setAmount(rs.getString("Amount"));
	        }

	        rs.close();
	        stmt.close();
	    } catch (Exception e) {
	        e.printStackTrace();
	    }

	    return payment;
	}

	 // Update payment data
    public void UpdateData(int PaymentID ,PaymentModel PM) {
        
        try  {

       
            DBConnector dc = new DBConnector(); // Initialize DBConnector
            String sql = "UPDATE payment SET Card_Name=?, Card_Number=?, Expiry_Date=?, CVV=?, Billing_Address=?, Amount=? WHERE PaymentID=?";
         
            // Prepare the statement
	        PreparedStatement pstmt = dc.getConnection().prepareStatement(sql);
	        
	        pstmt.setString(1, PM.getCardName());
            pstmt.setString(2, PM.getCardNO());
            pstmt.setString(3, PM.getExpDate());
            pstmt.setString(4, PM.getCvv());
            pstmt.setString(5, PM.getBillAddress());
            pstmt.setString(6, PM.getAmount());
            pstmt.setInt(7, PM.getPayementID());
            

            pstmt.executeUpdate();
            // Execute the update and get the number of affected rows
	        int rowsAffected = pstmt.executeUpdate();
	        if (rowsAffected > 0) {
	            System.out.println("Update successful! Rows affected: " + rowsAffected);
	        } else {
	            System.out.println("No rows updated; check if TrackID exists: " + PaymentID);
	        }

	        pstmt.close();

	    } catch (Exception e) {
	        e.printStackTrace();
	        System.out.println("Error occurred during update: " + e.getMessage());
	    }
    }

		

		public void DeleteData(int PaymentID) {
		    try {
		    	  DBConnector dc = new DBConnector(); // Initialize DBConnector
		        String sql = "DELETE FROM payment WHERE PaymentID = ?";

		        // Create prepared statement
		        PreparedStatement pstmt = dc.getConnection().prepareStatement(sql);
		        pstmt.setInt(1, PaymentID); // Set TrackID for the first parameter
		        
		        int result = pstmt.executeUpdate(); // Execute update

		        if (result > 0) {
		            System.out.println("PaymentID: " + PaymentID + " deleted successfully");
		        } else {
		            System.out.println("PaymentID: " + PaymentID + " not found!");
		        }

		        pstmt.close(); // Close the prepared statement

		    } catch (Exception e) {
		        e.printStackTrace();
		        System.out.println("Error: " + e.getMessage());
		    }
		}

}
