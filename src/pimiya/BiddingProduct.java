package pimiya;

public class BiddingProduct extends Product
{
	public String lastbid_user_id ; //最後出價用戶ID
	public String lastbid_userName ; //最後出價用戶
	public int original_price ;  //商品初始價格
	public int minbid_price ;  //商品最低出價
	public String  start_time ;  // 開始競標時間
	public String end_time ;  //結束競標時間
	
	/**
	 * @param seller_id
	 * @param name
	 * @param price
	 * @param shippingFee
	 * @param product_type
	 * @param sales_typr
	 * @param information
	 * @param quantity
	 * @param salesState
	 * @param original_price
	 * @param minbid_price
	 * @param start_time
	 * @param end_time
	 */
	public BiddingProduct(String seller_id, String name, int price, int shippingFee, String product_type, String sales_typr,
			String information, int quantity, String salesState, int original_price, int minbid_price,
			String start_time, String end_time) {
		super(seller_id, name, price,shippingFee, product_type, sales_typr, information, quantity, salesState);
		this.original_price = original_price;
		this.minbid_price = minbid_price;
		this.start_time = start_time;
		this.end_time = end_time;
	}
	
	/**
	 * @param product_id
	 * @param seller_id
	 * @param name
	 * @param price
	 * @param shippingFee
	 * @param product_type
	 * @param sales_typr
	 * @param information
	 * @param quantity
	 * @param sales
	 * @param original_price
	 * @param minbid_price
	 * @param start_time
	 * @param end_time
	 */
	public BiddingProduct(String product_id, String seller_id, String name, int price, int shippingFee, String product_type,
			String sales_typr, String information, int quantity, String sales, int original_price, int minbid_price,
			String start_time, String end_time) {
		super(product_id, seller_id, name, price,shippingFee, product_type, sales_typr, information, quantity, sales);
		this.original_price = original_price;
		this.minbid_price = minbid_price;
		this.start_time = start_time;
		this.end_time = end_time;
	}

	public BiddingProduct() {
		// TODO Auto-generated constructor stub
	}

	@Override
	public String toString()
	{
		return "BiddingProduct [original_price=" + original_price + ", minbid_price=" + minbid_price + ", start_time="
				+ start_time + ", end_time=" + end_time + "]";
	}

	//-------------- getter , setter ----------------//
	public String getLastbid_user_id()
	{
		return lastbid_user_id;
	}

	public void setLastbid_user_id(String lastbid_user_id)
	{
		this.lastbid_user_id = lastbid_user_id;
	}

	public int getOriginal_price()
	{
		return original_price;
	}

	public void setOriginal_price(int original_price)
	{
		this.original_price = original_price;
	}

	public int getMinbid_price()
	{
		return minbid_price;
	}

	public void setMinbid_price(int minbid_price)
	{
		this.minbid_price = minbid_price;
	}

	public String getStart_time()
	{
		return start_time;
	}

	public void setStart_time(String start_time)
	{
		this.start_time = start_time;
	}

	public String getEnd_time()
	{
		return end_time;
	}

	public void setEnd_time(String end_time)
	{
		this.end_time = end_time;
	}

	

}
