package supply_chain1.model;

public class manufacture 
{
	
	private int packet_id_min;     
	private String product_id;          
	private String product_name;        
	private String factory_name;         
	private String manufacture_amount;
	private String manufacture_date;       
	private int packet_id_max;       
	
	
	
	
	
	public int getPacket_id_max() 
	{
		return packet_id_max;
	}
	public void setPacket_id_max(int packet_id_max) 
	{
		this.packet_id_max = packet_id_max;
	}
	
	public int getPacket_id_min() 
	{
		return packet_id_min;
	}
	public void setPacket_id_min(int packet_id_min) 
	{
		this.packet_id_min = packet_id_min;
	}
	
	
	public String getProduct_id() 
	{
		return product_id;
	}
	public void setProduct_id(String product_id) 
	{
		this.product_id = product_id;
	}
	
	
	public String getProduct_name() 
	{
		return product_name;
	}
	public void setProduct_name(String product_name) 
	{
		this.product_name = product_name;
	}
	
	
	public String getFactory_name() 
	{
		return factory_name;
	}
	public void setFactory_name(String factory_name) 
	{
		this.factory_name = factory_name;
	}
	
	
	public String getManufacture_amount() 
	{
		return manufacture_amount;
	}
	public void setManufacture_amount(String manufacture_amount) 
	{
		this.manufacture_amount = manufacture_amount;
	}
	
	
	public String getManufacture_date() 
	{
		return manufacture_date;
	}
	public void setManufacture_date(String manufacture_date) 
	{
		this.manufacture_date = manufacture_date;
	}
	
}
