package Model;

import java.sql.Connection;

public class PaymentModel {
	int PayementID;
	String CardName;
	String CardNO;
	String ExpDate;
	String cvv;
	String BillAddress;
	String Amount;
	

	//Getters and setters
	public int getPayementID() {
		return PayementID;
	}
	public String getCardName() {
		return CardName;
	}
	public String getCardNO() {
		return CardNO;
	}
	public String getExpDate() {
		return ExpDate;
	}
	public String getCvv() {
		return cvv;
	}
	public String getBillAddress() {
		return BillAddress;
	}
	public String getAmount() {
		return Amount;
	}
	public void setPayementID(int payementID) {
		PayementID = payementID;
	}
	public void setCardName(String cardName) {
		CardName = cardName;
	}
	public void setCardNO(String cardNO) {
		CardNO = cardNO;
	}
	public void setExpDate(String expDate) {
		ExpDate = expDate;
	}
	public void setCvv(String cvv) {
		this.cvv = cvv;
	}
	public void setBillAddress(String billAddress) {
		BillAddress = billAddress;
	}
	public void setAmount(String amount) {
		Amount = amount;
	}
	public Connection getConnection() {
		// TODO Auto-generated method stub
		return null;
	}
	
	

}
