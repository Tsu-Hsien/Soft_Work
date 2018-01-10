package pimiya;

public class CartProduct extends Product
{
	public int buyQuantity ;   // 	購買數量
	
	public CartProduct(){ }

	@Override
	public String toString()
	{
		return "CartProduct [buyQuantity=" + buyQuantity + ", productId=" + productId + ", sellerId=" + sellerId
				+ ", name=" + name + ", price=" + price + ", productType=" + productType + ", salesType=" + salesType
				+ ", information=" + information + ", quantity=" + quantity + ", salesState=" + salesState
				+ ", imageUrl1=" + imageUrl1 + ", imageUrl2=" + imageUrl2 + ", imageUrl3=" + imageUrl3 + "]";
	}

	public int getBuyQuantity()
	{
		return buyQuantity;
	}

	public void setBuyQuantity(int buyQuantity)
	{
		this.buyQuantity = buyQuantity;
	}
	
	
	
}
