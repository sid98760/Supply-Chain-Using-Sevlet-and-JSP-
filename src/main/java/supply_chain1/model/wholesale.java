package supply_chain1.model;

public class wholesale 
{
	
	private int wholesaler_id;
	private String wholesale_name;
	private String product_name;
	private int quantity;
	private String wholesale_date;
	private String wholesale_amount;
	private String factory_name;
	
	public int getWholesaler_id() 
	{
		return wholesaler_id;
	}
	public void setWholesaler_id(int wholesaler_id) 
	{
		this.wholesaler_id = wholesaler_id;
	}
	
	
	public String getWholesale_name() 
	{
		return wholesale_name;
	}
	public void setWholesale_name(String wholesale_name) 
	{
		this.wholesale_name = wholesale_name;
	}
	
	
	public String getProduct_name() 
	{
		return product_name;
	}
	public void setProduct_name(String product_name)
	{
		this.product_name = product_name;
	}
	
	
	public int getQuantity() 
	{
		return quantity;
	}
	public void setQuantity(int quantity) 
	{
		this.quantity = quantity;
	}
	
	
	public String getWholesale_date()
	{
		return wholesale_date;
	}
	public void setWholesale_date(String wholesale_date) 
	{
		this.wholesale_date = wholesale_date;
	}
	
	
	public String getWholesale_amount()
	{
		return wholesale_amount;
	}
	public void setWholesale_amount(String wholesale_amount) 
	{
		this.wholesale_amount = wholesale_amount;
	}
	
	
	public String getFactory_name() 
	{
		return factory_name;
	}
	public void setFactory_name(String factory_name)
	{
		this.factory_name = factory_name;
	}
	
}
