package pimiya;

public class Product
{
	public String productId ;
	public String sellerId ;
	public String name ;
	public int price ;
	public int shippingFee ;
	public String productType ;
	public String salesType ;
	public String information ;
	public int quantity ;
	public String salesState ;
	public String imageUrl1 ;
	public String imageUrl2 ;
	public String imageUrl3 ;
	
	public Product(){ } 

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
	 */
	public Product(String seller_id, String name, int price, int shippingFee, String product_type, String sales_typr,
			String information, int quantity, String salesState) {
		super();
		this.sellerId = seller_id;
		this.name = name;
		this.price = price;
		this.shippingFee = shippingFee ;
		this.productType = product_type;
		this.salesType = sales_typr;
		this.information = information;
		this.quantity = quantity;
		this.salesState = salesState;
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
	 */
	public Product(String product_id, String seller_id, String name, int price, int shippingFee, String product_type,
			String sales_typr, String information, int quantity, String sales) {
		super();
		this.productId = product_id;
		this.sellerId = seller_id;
		this.name = name;
		this.price = price;
		this.shippingFee = shippingFee ;
		this.productType = product_type;
		this.salesType = sales_typr;
		this.information = information;
		this.quantity = quantity;
		this.salesState = sales;
	}
	

	@Override
	public String toString()
	{
		return "Product [productId=" + productId + ", sellerId=" + sellerId + ", name=" + name + ", price=" + price
				+ ", shippingFee=" + shippingFee + ", productType=" + productType + ", salesType=" + salesType
				+ ", information=" + information + ", quantity=" + quantity + ", salesState=" + salesState
				+ ", imageUrl1=" + imageUrl1 + ", imageUrl2=" + imageUrl2 + ", imageUrl3=" + imageUrl3 + "]";
	}
	
	// getter , setter ;

	public String getName()
	{
		return name;
	}
	
	public int getShippingFee()
	{
		return shippingFee;
	}

	public void setShippingFee(int shippingFee)
	{
		this.shippingFee = shippingFee;
	}

	public String getProductId()
	{
		return productId;
	}

	public void setProductId(String productId)
	{
		this.productId = productId;
	}

	public String getSellerId()
	{
		return sellerId;
	}

	public void setSellerId(String sellerId)
	{
		this.sellerId = sellerId;
	}

	public void setName(String name)
	{
		this.name = name;
	}
	
	public int getPrice()
	{
		return price;
	}
	
	public void setPrice(int price)
	{
		this.price = price;
	}
	
	public String getProductType()
	{
		return productType;
	}

	public void setProductType(String productType)
	{
		this.productType = productType;
	}

	public String getSalesType()
	{
		return salesType;
	}

	public void setSalesType(String salesType)
	{
		this.salesType = salesType;
	}

	public String getInformation()
	{
		return information;
	}
	
	public void setInformation(String information)
	{
		this.information = information;
	}
	
	public int getQuantity()
	{
		return quantity;
	}
	
	public void setQuantity(int quantity)
	{
		this.quantity = quantity;
	}
	
	public String getSalesState()
	{
		return salesState;
	}

	public void setSalesState(String salesState)
	{
		this.salesState = salesState;
	}

	public String getImageUrl1()
	{
		return imageUrl1;
	}
	
	public void setImageUrl1(String imageUrl1)
	{
		this.imageUrl1 = imageUrl1;
	}
	
	public String getImageUrl2()
	{
		return imageUrl2;
	}
	
	public void setImageUrl2(String imageUrl2)
	{
		this.imageUrl2 = imageUrl2;
	}
	
	public String getImageUrl3()
	{
		return imageUrl3;
	}
	
	public void setImageUrl3(String imageUrl3)
	{
		this.imageUrl3 = imageUrl3;
	}

}
