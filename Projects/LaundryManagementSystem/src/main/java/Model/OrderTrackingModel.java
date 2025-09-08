package Model;

public class OrderTrackingModel {
	private int TrackID;
	private String TrackNO;
	private String CustEmail;
	private String Date;
	
	//Getters and Setters 
	public int getTrackID() {
		return TrackID;
	}
	
	public String getTrackNO() {
		return TrackNO;
	}
	public String getCustEmail() {
		return CustEmail;
	}
	public String getDate() {
		return Date;
	}
	public void setTrackID(int trackID) {
		TrackID = trackID;
	}
	public void setTrackNO(String trackNO) {
		TrackNO = trackNO;
	}
	public void setCustEmail(String custEmail) {
		CustEmail = custEmail;
	}
	public void setDate(String date) {
		Date = date;
	}

	 
}
