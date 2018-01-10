package pimiya.db;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class Connector
{
	protected static Connection conn = null; //Database objects 
	
	protected PreparedStatement pst = null; // 用於設置SQL語法中參數化的資料

	/**
	 * 建立資料庫連接
	 * 只有close DB Connection , DB PreparedStatement 並不會在此關閉
	 * @return 
	 */
	public static Connection connection()
	{
        try
        {
            //連接MySQL
            Class.forName("com.mysql.jdbc.Driver"); //註冊driver 
            //建立讀取資料庫 (test 為資料庫名稱; user 為MySQL使用者名稱; passwrod 為MySQL使用者密碼)
            String datasource = "jdbc:mysql://localhost/pimiya?characterEncoding=utf-8&user=root&password=mark41610";
            
            conn = DriverManager.getConnection(datasource);  //取得connection
            System.out.println("連接成功MySQL");
            return conn ;
        }catch(ClassNotFoundException e) 
        { 
			System.out.println("DriverClassNotFound :"+e.toString()); 
		}//有可能會產生sqlexception 
		catch(SQLException x) { 
			System.out.println("Exception :"+x.toString()); 
		}
        return null ;
	}

	
	/**
	 * 關閉資料庫連接
	 * 只有close DB Connection , DB PreparedStatement 並不會在此關閉
	 */
	public void  close()
	{
    	try
		{
    		if( pst != null ){
    			pst.close();
    		}
    		if( conn != null ){
    			conn.close();
    		}
		} catch (SQLException e)
		{
			// TODO Auto-generated catch block
			e.printStackTrace();
		}	
	}
}
