package pimiya;

public class Comment
{
	public String commentId ;
	public String productId ;
	public String userName ;
	public String userId ;
	public String opinion ;
	public String addTime ;
	public String updTime ;
	
	public Comment() {	}
	
	/**
	 * @param commentId
	 * @param productId
	 * @param userName
	 * @param userId
	 * @param opinion
	 * @param addTime
	 * @param updTime
	 */
	public Comment(String commentId, String productId, String userName, String userId, String opinion, String addTime,
			String updTime) {
		this.commentId = commentId;
		this.productId = productId;
		this.userName = userName;
		this.userId = userId;
		this.opinion = opinion;
		this.addTime = addTime;
		this.updTime = updTime;
	}

	@Override
	public String toString()
	{
		return "Comment [commentId=" + commentId + ", productId=" + productId + ", userName=" + userName + ", userId="
				+ userId + ", opinion=" + opinion + ", addTime=" + addTime + ", updTime=" + updTime + "]";
	}
	
	public String getProductId()
	{
		return productId;
	}

	public void setProductId(String productId)
	{
		this.productId = productId;
	}

	public String getCommentId()
	{
		return commentId;
	}

	public void setCommentId(String commentId)
	{
		this.commentId = commentId;
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

	public String getOpinion()
	{
		return opinion;
	}

	public void setOpinion(String opinion)
	{
		this.opinion = opinion;
	}

	public String getAddTime()
	{
		return addTime;
	}

	public void setAddTime(String addTime)
	{
		this.addTime = addTime;
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
