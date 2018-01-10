package pimiya;

/**
 * 用戶資料class
 * @author USER
 */
public class User
{
	public String id ;
	public String name ;
	public String password ;
	public String email ;
	public String phone ;
	public String authorize ;
	
	public User()	{	}

	/**
	 * Constructor without ID
	 * @param id
	 * @param name
	 * @param password
	 * @param email
	 * @param phone
	 */
	public User(String name, String password, String email, String phone) {
		super();
		this.name = name;
		this.password = password;
		this.email = email;
		this.phone = phone;
	}

	/**
	 * Constructor with ID
	 * @param id
	 * @param name
	 * @param password
	 * @param email
	 * @param phone
	 */
	public User(String id, String name, String password, String email, String phone) {
		super();
		this.id = id;
		this.name = name;
		this.password = password;
		this.email = email;
		this.phone = phone;
	}
	
	@Override
	public String toString()
	{
		return "User [id=" + id + ", name=" + name + ", password=" + password + ", email=" + email + ", phone=" + phone
				+ "]";
	}
	
	// getter , setter
	public String getId()
	{
		return id;
	}
	public void setId(String id)
	{
		this.id = id;
	}
	public String getName()
	{
		return name;
	}
	public void setName(String name)
	{
		this.name = name;
	}
	public String getPassword()
	{
		return password;
	}
	public void setPassword(String password)
	{
		this.password = password;
	}
	public String getEmail()
	{
		return email;
	}
	public void setEmail(String email)
	{
		this.email = email;
	}
	public String getPhone()
	{
		return phone;
	}
	public void setPhone(String phone)
	{
		this.phone = phone;
	}

	public String getAuthorize()
	{
		return authorize;
	}

	public void setAuthorize(String authorize)
	{
		this.authorize = authorize;
	}

}
