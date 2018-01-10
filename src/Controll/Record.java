package Controll;

public class Record
{
	public String porductID;
	public String name;
	public String sellMode;
	/**
	 * @param porductID
	 * @param name
	 * @param sellMode
	 */
	public Record(String porductID, String name, String sellMode) {
		this.porductID = porductID;
		this.name = name;
		this.sellMode = sellMode;
	}
	public String getPorductID()
	{
		return porductID;
	}
	public void setPorductID(String porductID)
	{
		this.porductID = porductID;
	}
	public String getName()
	{
		return name;
	}
	public void setName(String name)
	{
		this.name = name;
	}
	public String getSellMode()
	{
		return sellMode;
	}
	public void setSellMode(String sellMode)
	{
		this.sellMode = sellMode;
	}
	
}
