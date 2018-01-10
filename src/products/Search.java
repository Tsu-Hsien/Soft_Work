package products;

import java.util.List;

import pimiya.Product;
import pimiya.db.DBImplement;

public class Search
{
	private int startLimit = 0 , endLimit = 0 ;
	private String orderAttribute = "" , orderSequence = "" ;
	
	/**
	 * 依頁數及商品類型查詢商品資料並依時間排序
	 * @param pages
	 * @return 商品資料List
	 */
	public List<Product> searchProductByAddTime( int pages , String type )
	{
		// 計算頁數要顯示的資料範圍
		countPageProduct( pages ) ;
		// 取得資料
		List<Product> productList ;
		 if( type==null || type.equals("") ){
			productList = DBImplement.queryProductByOrder( "upd_time desc , add_time " , "desc" , startLimit , endLimit ) ;
		 } else {
			productList = DBImplement.queryProductByTypeAndOrder( type, "upd_time desc , add_time " , "desc" , startLimit , endLimit ) ;
		 }
		return productList ;
	}
	
	/**
	 * 依頁數及商品類型查詢商品資料並依價格低至高排序
	 * @param pages
	 * @return 商品資料List
	 */
	public List<Product> searchProductByPriceAsc( int pages , String type )
	{
		// 計算頁數要顯示的資料範圍
		countPageProduct( pages ) ;
		// 取得資料
		List<Product> productList ;
		 if( type==null || type.equals("") ){
			 productList = DBImplement.queryProductByOrder( "price" , "asc" , startLimit , endLimit ) ;
		 } else {
			productList = DBImplement.queryProductByTypeAndOrder(  type, "price " , "asc" ,startLimit , endLimit ) ;
		 }
		return productList ;
	}
	
	/**
	 * 依頁數及商品類型查詢商品資料並依價格高至低排序
	 * @param pages
	 * @return 商品資料List
	 */
	public List<Product> searchProductByPriceDesc( int pages , String type )
	{
		// 計算頁數要顯示的資料範圍
		countPageProduct( pages ) ;
		// 取得資料
		List<Product> productList ;
		 if( type==null || type.equals("") ){
			 productList = DBImplement.queryProductByOrder( "price" , "desc" , startLimit , endLimit ) ;
		 } else {
			productList = DBImplement.queryProductByTypeAndOrder(  type, "price " , "desc" ,startLimit , endLimit ) ;
		 }
		return productList ;
	}
	
	/**
	 * 依頁數及商品類型查詢商品資料並依人氣排序
	 * @param pages
	 * @return 商品資料List
	 */
	public List<Product> searchProductByPopularity( int pages , String type )
	{
		// 計算頁數要顯示的資料範圍
		countPageProduct( pages ) ;
		// 取得資料
		List<Product> productList ;
		 if( type==null || type.equals("") ){
			 productList = DBImplement.queryProductByOrder( "image1" , "desc" , startLimit , endLimit ) ;
		 } else {
			productList = DBImplement.queryProductByTypeAndOrder(  type, "image1 " , "desc" ,startLimit , endLimit ) ;
		 }
		return productList ;
	}
	
	/**
	 * 依頁數及商品類型查詢商品資料
	 * @param pages
	 * @param type
	 * @return 商品資料List
	 */
	public List<Product> searchProductByType( int pages , String type )
	{
		// 計算頁數要顯示的資料範圍
		countPageProduct( pages ) ;
		// 取得資料
		List<Product> productList = DBImplement.queryProductByType(type, startLimit, endLimit) ;
		return productList ;
	}
	
	/**
	 * 依關鍵字查詢商品資料
	 * @param pages
	 * @param type
	 * @return 商品資料List
	 */
	public List<Product> searchProductByKeyword( int pages , String Keyword )
	{
		// 計算頁數要顯示的資料範圍
		countPageProduct( pages ) ;
		// 取得資料
		List<Product> productList = DBImplement.queryProductByKeyword(Keyword ,  "image1" , "desc" , startLimit, endLimit) ;
		return productList ;
	}
	
	/**
	 *  查詢商品資料
	 * @param Keyword
	 * @param productType
	 * @param sales_type
	 * @param orderAttribute
	 * @param pages
	 * @return 商品資料List
	 */
	public List<Product> searchProduct( String Keyword , String productType , String sales_type ,String order , int pages )
	{
		// 計算頁數要顯示的資料範圍
		countPageProduct( pages ) ;
		// 排斥依據
		getOrderData( order ) ;
		// 取得資料
		List<Product> productList = DBImplement.queryProduct(Keyword , productType , sales_type  ,  orderAttribute , orderSequence , startLimit, endLimit) ;
		return productList ;
	}
	
	
	
	
	/**
	 * 計算頁數所代表要顯示的資料範圍
	 * @param pages 頁碼.
	 * @return startLimit及endLimit > 用於DB查詢
	 */
	public void countPageProduct( int pages ){
		// 計算頁數要顯示的資料範圍
		int eachPagesShow = 8 ;
		if( pages <= 0 ){
			pages = 1 ;
		}
		if( pages == 1 ){
			startLimit = 0 ;
			endLimit = eachPagesShow ;
		} else {
			startLimit = ((pages-1) *eachPagesShow)  ;  
			endLimit = eachPagesShow ;
		}
		return ;
	}
	
	public void getOrderData(String orderBy ){
		if( orderBy !=  null ){
			if( orderBy.equals("popular") ){
				orderAttribute = "image1" ;
				orderSequence = "desc" ;
			}else if( orderBy.equals("lately") ){ 
				orderAttribute = "upd_time desc , add_time " ;
				orderSequence = "desc" ;
			}else if( orderBy.equals("moneyDown") ){
				orderAttribute = "price" ;
				orderSequence = "asc" ;
			}else if( orderBy.equals("moneyUp") ){
				orderAttribute = "price" ;
				orderSequence = "desc" ;
			}
		}
	}
	
	public int getTotalPage( String Keyword , String productType , String sales_type ){
		// 取得資料
		List<Product> productList = DBImplement.queryProduct(Keyword , productType , sales_type , "" , "" , -1 , -1) ;
		return productList.size() - 1 ;
	}
	
}
