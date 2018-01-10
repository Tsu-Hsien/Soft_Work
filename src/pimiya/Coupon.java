package pimiya;

public class Coupon
{
	public String couponId ;
	public String storeId ;
	public String name ;
	public String information ;
	public double  discount ;
	
	public Coupon(){  }
	
	/**
	 * @param couponId
	 * @param storeId
	 * @param name
	 * @param information
	 * @param discount
	 */
	public Coupon(String couponId, String storeId, String name, String information, double discount) {
		super();
		this.couponId = couponId;
		this.storeId = storeId;
		this.name = name;
		this.information = information;
		this.discount = discount;
	}

	/**
	 * @param storeId
	 * @param name
	 * @param information
	 * @param discount
	 */
	public Coupon(String storeId, String name, String information, double discount) {
		super();
		this.storeId = storeId;
		this.name = name;
		this.information = information;
		this.discount = discount;
	}
	
	@Override
	public String toString()
	{
		return "Coupon [couponId=" + couponId + ", storeId=" + storeId + ", name=" + name + ", information="
				+ information + ", discount=" + discount + "]";
	}
	
	//  getter , setter  //
	
	public String getCouponId()
	{
		return couponId;
	}

	public void setCouponId(String couponId)
	{
		this.couponId = couponId;
	}

	public String getStoreId()
	{
		return storeId;
	}

	public void setStoreId(String storeId)
	{
		this.storeId = storeId;
	}

	public String getName()
	{
		return name;
	}

	public void setName(String name)
	{
		this.name = name;
	}

	public String getInformation()
	{
		return information;
	}

	public void setInformation(String information)
	{
		this.information = information;
	}

	public double getDiscount()
	{
		return discount;
	}

	public void setDiscount(double discount)
	{
		this.discount = discount;
	}

}
