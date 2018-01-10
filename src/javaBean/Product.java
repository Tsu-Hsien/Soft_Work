package javaBean;

	public class Product {
		private String productID;		//商品ID
		private String userID;			//賣家
		private String name;			//商品名字
		private String type;			//販賣種類
		private String information;		//商品描述
		private String sales;			//販賣狀態
		private String ADD_TIME;		//建檔日
		private String UPD_TIME;		//修檔日
		private String img;				//商品照片
		private int quantity;			//商品數量
		private int price;				//商品價格
		public Product(String productID, String userID, String name, String type, String information, String sales,
				String aDD_TIME, String uPD_TIME, String img, int quantity, int price) {
			super();
			this.productID = productID;
			this.userID = userID;
			this.name = name;
			this.type = type;
			this.information = information;
			this.sales = sales;
			this.ADD_TIME = aDD_TIME;
			this.UPD_TIME = uPD_TIME;
			this.img = img;
			this.quantity = quantity;
			this.price = price;
		}
		public String getProductID() {
			return productID;
		}
		public void setProductID(String productID) {
			this.productID = productID;
		}
		public String getUserID() {
			return userID;
		}
		public void setUserID(String userID) {
			this.userID = userID;
		}
		public String getName() {
			return name;
		}
		public void setName(String name) {
			this.name = name;
		}
		public String getType() {
			return type;
		}
		public void setType(String type) {
			this.type = type;
		}
		public String getInformation() {
			return information;
		}
		public void setInformation(String information) {
			this.information = information;
		}
		public String getSales() {
			return sales;
		}
		public void setSales(String sales) {
			this.sales = sales;
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
		}
		public int getPrice() {
			return price;
		}
		public void setPrice(int price) {
			this.price = price;
		}
		
		
		
	}

