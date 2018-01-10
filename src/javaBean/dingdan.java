package javaBean;

public class dingdan {
	private String orderID;//訂單編號
	private String userID;//買家
	private String orderTime;//訂購日期時間
	private String payment;//付款方法 F(全家)/S(7-11)/A(ATM)/V(visa)/M(Master)
	private String shippingMethod;//運送方法 D(宅配)/C(超商)/P(郵局)
	private int price;//貨品總售價
	private int shippingFee;//運費
	private String destination;//目的地
	private String recipient;//收件人
	private String ADD_TIME;//建檔日(格式為 YYYY/MM/DD HH:MM:SS)
	private String UPD_TIME;//修改日(格式為 YYYY/MM/DD HH:MM:SS)
	
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

