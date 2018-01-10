package pimiya;

public class Feedback
{
	public String feedbackId ;
	public String productId ;
	public String userName ;
	public String userId ;
	public int mark ;
	public String addTime ;
	public String updTime ;
	
	public Feedback() { }

	/**
	 * @param feedbackId
	 * @param productId
	 * @param userName
	 * @param userId
	 * @param mark
	 * @param addTime
	 * @param updTime
	 */
	public Feedback(String feedbackId, String productId, String userName, String userId, int mark, String addTime,
			String updTime) {
		this.feedbackId = feedbackId;
		this.productId = productId;
		this.userName = userName;
		this.userId = userId;
		this.mark = mark;
		this.addTime = addTime;
		this.updTime = updTime;
	}

	@Override
	public String toString()
	{
		return "Feedback [feedbackId=" + feedbackId + ", productId=" + productId + ", userName=" + userName
				+ ", userId=" + userId + ", mark=" + mark + ", addTime=" + addTime + ", updTime=" + updTime + "]";
	}

	public String getProductId()
	{
		return productId;
	}

	public void setProductId(String productId)
	{
		this.productId = productId;
	}

	public String getFeedbackId()
	{
		return feedbackId;
	}

	public void setFeedbackId(String feedbackId)
	{
		this.feedbackId = feedbackId;
	}

	public String getUserName()
	{
		return userName;
	}

	public void setUserName(String userName)
	{
		this.userName = userName;
	}

	public String getUserId()
	{
		return userId;
	}

	public void setUserId(String userId)
	{
		this.userId = userId;
	}

	public int getMark()
	{
		return mark;
	}

	public void setMark(int mark)
	{
		this.mark = mark;
	}

	public String getAddTime()
	{
		return addTime;
	}

	public void setAddTime(String addTime)
	{
		this.addTime = addTime;
	}

	public String getUptTime()
	{
		return updTime;
	}

	public void setUptTime(String uptTime)
	{
		this.updTime = uptTime;
	}

	public String getUpdTime()
	{
		return updTime;
	}

	public void setUpdTime(String updTime)
	{
		this.updTime = updTime;
	}
}
