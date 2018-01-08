package Model;

public class OrderProduct {
	private String productID;
	private String img;
	private int quantity;
	private String name;
	private int price;
	private int totalPrice;//price*quantity
	
	public OrderProduct(String productID, String img, int quantity, String name, int price) {
		super();
		this.productID = productID;
		this.img = img;
		this.quantity = quantity;
		this.name = name;
		this.price = price;
		this.totalPrice = quantity*price;
	}
	public String getProductID() {
		return productID;
	}
	public void setProductID(String productID) {
		this.productID = productID;
	}
	public String getImg() {
		return img;
	}
	public void setImg(String img) {
		this.img = img;
	}
	public int getQuantity() {
		
		return quantity;
	}
	public void setQuantity(int quantity) {
		
		this.quantity = quantity;
		totalPrice = quantity*price;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
		totalPrice = quantity*price;
	}
	public int getTotalPrice() {
		return totalPrice;
	}
	public void setTotalPrice(int totalPrice) {
		this.totalPrice = totalPrice;
	}
	
}
