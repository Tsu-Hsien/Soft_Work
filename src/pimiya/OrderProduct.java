package pimiya;

public class OrderProduct extends Product
{
	public String orderId ; 
	public int buyQuantity ;   // 	購買數量
	
	public OrderProduct() {
	}
	
	/**
	 * 新增訂單時可使用，只需知道訂單ID及購買數量
	 * @param productId
	 * @param buyQuantity
	 */
	public OrderProduct( String productId , int buyQuantity ){
		this.productId = productId ;
		this.buyQuantity = buyQuantity ;
	}

	/**
	 * @param product_id
	 * @param seller_id
	 * @param name
	 * @param price
	 * @param product_type
	 * @param sales_typr
	 * @param information
	 * @param quantity
	 * @param salesState
	 * @param orderId
	 * @param buyQuantity
	 */
	public OrderProduct(String product_id, String seller_id, String name, int price, int shippingFee, String product_type,
			String sales_typr, String information, int quantity, String salesState, String orderId, int buyQuantity) {
		super(product_id, seller_id, name, price,shippingFee, product_type, sales_typr, information, quantity, salesState);
		this.orderId = orderId;
		this.buyQuantity = buyQuantity;
	}

	@Override
	public String toString()
	{
		return "OrderProduct [orderId=" + orderId + ", buyQuantity=" + buyQuantity + "]" + super.toString();
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
	
	public int getBQuantity()
	{
		return buyQuantity;
	}
	
	public void setQuantity(int quantity)
	{
		this.buyQuantity = quantity;
	}
	
}
