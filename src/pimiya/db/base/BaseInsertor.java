package pimiya.db.base;

import java.util.HashMap;

interface BaseInsertor
{
	/**
	 * 新增一名新會員的資料
	 * @param name 會員帳號名稱
	 * @param password 會員帳號密碼
	 * @param email 會員電子郵件
	 * @param phone 會員電話號碼
	 * @param name 會員帳號名稱
	 */
	void insNewUser(HashMap<String, Object> insertData) ;
	
	/**
	 * 新增一張折扣券的資料
	 * @param name 折扣券名稱
	 * @param information 折扣券說明/描述
	 * @param discount 折扣價
	 * @param phone 會員電話號碼
	 * @param name 會員帳號名稱
	 */
	void insCoupon(HashMap<String, Object> insertData) ;
	
	void insProduct(HashMap<String, Object> insertData) ;
}
