package supply_chain1.dao;

import java.sql.*;


import supply_chain1.model.wholesale;
import supply_chain1.model.manufacture;

public class wholesaledao 
{
	
	public String manufacture_amount;
	
	
manufacture man = new manufacture();	
	
	public int showquantity(wholesale wholesale) throws ClassNotFoundException
	{
		int result = 0;
		Class.forName("com.mysql.cj.jdbc.Driver");
		try
		{
			
			Connection connection = DriverManager
    	            .getConnection("jdbc:mysql://localhost:3306/supplychain", "siddhesh", "bestsiddhesh");
			
			System.out.println("Connected!!");
			
			String query2 = "TRUNCATE TABLE supplychain.showquantity;";
			PreparedStatement p3 = connection.prepareStatement(query2);
			p3.executeUpdate();
			
			String factory_name = wholesale.getFactory_name();
			String product_name = wholesale.getProduct_name();
			
			String query = "SELECT * FROM manufacture_table WHERE factory_name = ? AND product_name = ? AND wholesale_name IS NULL ; ";
			
			PreparedStatement p = connection.prepareStatement(query);
			p.setString(1, factory_name);
			p.setString(2, product_name);
			
			ResultSet r = p.executeQuery();
			
			String query1 = "INSERT INTO showquantity" +
		            "  (packet_id,product_id, product_name, factory_name, manufacture_amount, manufacture_date,wholesale_name) VALUES " +
		            " (? ,?, ?, ?, ? ,?, ?);";
			
			
			
			while(r.next())
			{
				int packet_id = (int) r.getLong("packet_id");
				String product_id = r.getString("product_id");
				String product_name2 = r.getString("product_name");  
	        	String factory_name2 = r.getString("factory_name"); 
	        	manufacture_amount = r.getString("manufacture_amount");
	   
	        	String manufacture_date = r.getString("manufacture_date");	
	        	String wholesale_name = r.getString("wholesale_name");
	        	
	        	PreparedStatement p2 = connection.prepareStatement(query1);
	        	
	        	p2.setLong(1, packet_id);
	        	p2.setString(2, product_id);
	        	p2.setString(3, product_name2);
	        	p2.setString(4, factory_name2);
	        	p2.setString(5, manufacture_amount);
	        	p2.setString(6, manufacture_date);
	        	p2.setString(7, wholesale_name);
	        	
	        	p2.executeUpdate();
	        	
	        }
			

			
		}
		catch(Exception e)
		{
			System.out.println("e");
		}
			
		
		return result;
	}
	
	public int registerwholesaler(wholesale wholesale) throws ClassNotFoundException
	{
		
		try
		{
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection connection = DriverManager
    	            .getConnection("jdbc:mysql://localhost:3306/supplychain", "siddhesh", "bestsiddhesh");
        	
        	System.out.println("Connected!!");
        	
        	//insert 
        	String query1 = "INSERT INTO wholesale_table(wholesaler_id,wholesale_name,product_name,quantity,wholesale_date,wholesale_amount,factory_name,order_amount) VALUE(?,?,?,?,?,?,?,?); ";
			
                	
        	int wholesaler_id = wholesale.getWholesaler_id();
        	String wholesale_name = wholesale.getWholesale_name();
        	String product_name = wholesale.getProduct_name();
        	int quantity = wholesale.getQuantity();
        	String wholesale_date = wholesale.getWholesale_date();
        	String wholesale_amount = wholesale.getWholesale_amount();
        	String factory_name = wholesale.getFactory_name();
        	
        	//order decider
        	String query2 = "SELECT manufacture_amount from manufacture_table WHERE factory_name  = ? LIMIT 1 ;";
        	PreparedStatement p2 = connection.prepareStatement(query2);
        	p2.setString(1,factory_name );
        	
        	ResultSet r = p2.executeQuery();
        	
        	String man_amount= "";
        	while(r.next())
        	{
        		 man_amount = man_amount + r.getString("manufacture_amount");
        	}
        	
        	
        	int manufacture_amount1 =Integer.parseInt(man_amount);  
        	int order_amount = quantity * manufacture_amount1;
        	System.out.println(order_amount);
        	
        	PreparedStatement p1 = connection.prepareStatement(query1);
        	p1.setLong(1, wholesaler_id);
			p1.setString(2, wholesale_name);
			p1.setString(3, product_name);
			p1.setLong(4, quantity);
			p1.setString(5, wholesale_date);
			p1.setString(6, wholesale_amount);
			p1.setString(7, factory_name);
			p1.setLong(8, order_amount);
			
			
			p1.executeUpdate();
			
			
			//sets wholesaler name
			String query3 = "UPDATE manufacture_table SET wholesale_name = ? WHERE wholesale_name IS NULL AND factory_name = ? AND product_name = ? LIMIT ?";
			PreparedStatement p3 = connection.prepareStatement(query3);
			p3.setString(1, wholesale_name);
			p3.setString(2, factory_name);
			p3.setString(3, product_name);
			p3.setLong(4, quantity);
			
			p3.executeUpdate();
			
			
			
		}
		catch(Exception e)
		{
			System.out.println("1"+e);
			e.printStackTrace();
		}
		
		return 0;
		
	}
	
}
