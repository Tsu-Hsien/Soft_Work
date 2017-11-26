package Model;

import java.util.ArrayList;

public class OrderDetailData {
	String OrderID;
	String destination ;
	String orderTime ;
	String payment;
	String shippingMethod;
	int price ;
	int shippingFee ;
	String recipient;
	ArrayList<OrderProduct> OrderProducts;
	
	public OrderDetailData(String OrderID,String destination, String orderTime, String payment, String shippingMethod, int price,
			int shippingFee, String recipient, ArrayList<OrderProduct> OrderProducts,String state) {
		super();
		this.OrderID = OrderID;
		this.destination = destination;
		this.orderTime = orderTime;
		this.payment = payment;
		this.shippingMethod = shippingMethod;
		this.price = price;
		this.shippingFee = shippingFee;
		this.recipient = recipient;
		this.OrderProducts = OrderProducts;
		this.state = state;
	}
	public String getOrderID() {
		return OrderID;
	}
	public void setOrderID(String orderID) {
		OrderID = orderID;
	}
	String state;
	public String getState() {
		return state;
	}
	public void setState(String state) {
		this.state = state;
	}
	public String getDestination() {
		return destination;
	}
	public void setDestination(String destination) {
		this.destination = destination;
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
	public String getRecipient() {
		return recipient;
	}
	public ArrayList<OrderProduct> getOrderProducts() {
		return OrderProducts;
	}
	public void setOrderProducts(ArrayList<OrderProduct> orderProducts) {
		OrderProducts = orderProducts;
	}
	public void setRecipient(String recipient) {
		this.recipient = recipient;
	}
}
