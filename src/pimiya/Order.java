package pimiya;

import java.util.ArrayList;

public class Order
{
	public String orderId ;
	public String userId ;
	public String orderTime ;
	public String payment ;
	public String shipping_method ;
	public int price ;  // 訂單總價格(不含運費
	public int shippingFee ; //運費
	public String destination ;  // 目的地
	public String recipient ; // 收件人
	public String shippingState ;	// 運送狀態
	public String shipDate ; //出貨時間
	public String toStroeDate ; // 到店時間
	public String receiveDate ; // 取貨時間
	public ArrayList<OrderProduct> productList ; // 所訂購的商品清單
	
	public Order() {
		productList = new ArrayList<OrderProduct>();
	}
	
	/**
	 * @param orderId
	 * @param userId
	 * @param orderTime
	 * @param payment
	 * @param shipping_method
	 * @param price
	 * @param shippingFee
	 * @param destination
	 * @param recipient
	 * @param productList
	 */
	public Order(String orderId, String userId, String orderTime, String payment, String shipping_method, int price,
			int shippingFee, String destination, String recipient, ArrayList<OrderProduct> productList) {
		super();
		this.orderId = orderId;
		this.userId = userId;
		this.orderTime = orderTime;
		this.payment = payment;
		this.shipping_method = shipping_method;
		this.price = price;
		this.shippingFee = shippingFee;
		this.destination = destination;
		this.recipient = recipient;
		this.productList = productList;
	}

	
	/**
	 * @param userId
	 * @param orderTime
	 * @param payment
	 * @param shipping_method
	 * @param price
	 * @param shippingFee
	 * @param destination
	 * @param recipient
	 * @param productList
	 */
	public Order(String userId, String orderTime, String payment, String shipping_method, int price, int shippingFee,
			String destination, String recipient, ArrayList<OrderProduct> productList) {
		super();
		this.userId = userId;
		this.orderTime = orderTime;
		this.payment = payment;
		this.shipping_method = shipping_method;
		this.price = price;
		this.shippingFee = shippingFee;
		this.destination = destination;
		this.recipient = recipient;
		this.productList = productList;
	}

	@Override
	public String toString()
	{
		return "Order [orderId=" + orderId + ", userId=" + userId + ", orderTime=" + orderTime + ", payment=" + payment
				+ ", shipping_method=" + shipping_method + ", price=" + price + ", shippingFee=" + shippingFee
				+ ", destination=" + destination + ", recipient=" + recipient + ", shippingState=" + shippingState
				+ ", shipDate=" + shipDate + ", toStroeDate=" + toStroeDate + ", receiveDate=" + receiveDate
				+ ", productList=" + productList + "]";
	}

	//-------------- getter , setter ----------------//
	public String getOrderId()
	{
		return orderId;
	}


	public void setOrderId(String orderId)
	{
		this.orderId = orderId;
	}


	public String getUserId()
	{
		return userId;
	}


	public void setUserId(String userId)
	{
		this.userId = userId;
	}


	public String getOrderTime()
	{
		return orderTime;
	}


	public void setOrderTime(String orderTime)
	{
		this.orderTime = orderTime;
	}


	public String getPayment()
	{
		return payment;
	}


	public void setPayment(String payment)
	{
		this.payment = payment;
	}


	public String getShipping_method()
	{
		return shipping_method;
	}


	public void setShipping_method(String shipping_method)
	{
		this.shipping_method = shipping_method;
	}


	public int getPrice()
	{
		return price;
	}


	public void setPrice(int price)
	{
		this.price = price;
	}


	public int getShippingFee()
	{
		return shippingFee;
	}


	public void setShippingFee(int shippingFee)
	{
		this.shippingFee = shippingFee;
	}


	public String getDestination()
	{
		return destination;
	}


	public void setDestination(String destination)
	{
		this.destination = destination;
	}


	public String getRecipient()
	{
		return recipient;
	}


	public void setRecipient(String recipient)
	{
		this.recipient = recipient;
	}


	public String getShippingState()
	{
		return shippingState;
	}


	public void setShippingState(String shippingState)
	{
		this.shippingState = shippingState;
	}


	public String getShipDate()
	{
		return shipDate;
	}


	public void setShipDate(String shipDate)
	{
		this.shipDate = shipDate;
	}


	public String getToStroeDate()
	{
		return toStroeDate;
	}


	public void setToStroeDate(String toStroeDate)
	{
		this.toStroeDate = toStroeDate;
	}


	public String getReceiveDate()
	{
		return receiveDate;
	}


	public void setReceiveDate(String receiveDate)
	{
		this.receiveDate = receiveDate;
	}


	public ArrayList<OrderProduct> getProductList()
	{
		return productList;
	}


	public void setProductList(ArrayList<OrderProduct> productList)
	{
		this.productList = productList;
	}

}
