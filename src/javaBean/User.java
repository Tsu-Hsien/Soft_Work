package javaBean;

public class User {
	private String userID;
	private String name;
	private String password;
	private String email;
	private String ADD_TIME;
	private String UPD_TIME;
	public User(String userID, String name, String password, String email) {
		super();
		this.userID = userID;
		this.name = name;
		this.password = password;
		this.email = email;
	}
	public String getADD_TIME() {
		return ADD_TIME;
	}
	public void setADD_TIME(String aDD_TIME) {
		ADD_TIME = aDD_TIME;
	}
	public String getUserID() {
		return userID;
	}
	public void setUserID(String userID) {
		this.userID = userID;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getUPD_TIME() {
		return UPD_TIME;
	}
	public void setUPD_TIME(String uPD_TIME) {
		UPD_TIME = uPD_TIME;
	}
	
}
