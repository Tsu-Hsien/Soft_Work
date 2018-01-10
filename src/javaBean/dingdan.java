package javaBean;

public class dingdan {
	private String orderID;//�q��s��
	private String userID;//�R�a
	private String orderTime;//�q�ʤ���ɶ�
	private String payment;//�I�ڤ�k F(���a)/S(7-11)/A(ATM)/V(visa)/M(Master)
	private String shippingMethod;//�B�e��k D(�v�t)/C(�W��)/P(�l��)
	private int price;//�f�~�`���
	private int shippingFee;//�B�O
	private String destination;//�ت��a
	private String recipient;//����H
	private String ADD_TIME;//���ɤ�(�榡�� YYYY/MM/DD HH:MM:SS)
	private String UPD_TIME;//�ק��(�榡�� YYYY/MM/DD HH:MM:SS)
	
	public dingdan(String orderID, String userID, String orderTime, String payment, String shippingMethod, int price,
	 int shippingFee, String destination, String recipient, String aDD_TIME, String uPD_TIME) {
		super();
		this.orderID = orderID;
		this.userID = userID;
		this.orderTime = orderTime;
		this.payment = payment;
		this.shippingMethod = shippingMethod;
		this.price = price;
		this.shippingFee = shippingFee;
		this.destination = destination;
		this.recipient = recipient;
		ADD_TIME = aDD_TIME;
		UPD_TIME = uPD_TIME;
	}
	public String getOrderID() {
		return orderID;
	}
	public void setOrderID(String orderID) {
		this.orderID = orderID;
	}
	public String getUserID() {
		return userID;
	}
	public void setUserID(String userID) {
		this.userID = userID;
	}
	public String getOrderTime() {
		return orderTime;
	}
	public void setOrderTime(String orderTime) {
		this.orderTime = orderTime;
	}
	public String getPayment() {
		return payment;
	}
	public void setPayment(String payment) {
		this.payment = payment;
	}
	public String getShippingMethod() {
		return shippingMethod;
	}
	public void setShippingMethod(String shippingMethod) {
		this.shippingMethod = shippingMethod;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	public int getShippingFee() {
		return shippingFee;
	}
	public void setShippingFee(int shippingFee) {
		this.shippingFee = shippingFee;
	}
	public String getDestination() {
		return destination;
	}
	public void setDestination(String destination) {
		this.destination = destination;
	}
	public String getRecipient() {
		return recipient;
	}
	public void setRecipient(String recipient) {
		this.recipient = recipient;
	}
	public String getADD_TIME() {
		return ADD_TIME;
	}
	public void setADD_TIME(String aDD_TIME) {
		ADD_TIME = aDD_TIME;
	}
	public String getUPD_TIME() {
		return UPD_TIME;
	}
	public void setUPD_TIME(String uPD_TIME) {
		UPD_TIME = uPD_TIME;
	}
	
}

