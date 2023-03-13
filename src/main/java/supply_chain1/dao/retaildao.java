package supply_chain1.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import supply_chain1.model.retail;

public class retaildao
{

	
	public int showquantity(retail retail) throws ClassNotFoundException
	{
		int result = 0;
		Class.forName("com.mysql.cj.jdbc.Driver");
		try
		{
			
			Connection connection = DriverManager
    	            .getConnection("jdbc:mysql://localhost:3306/supplychain", "siddhesh", "bestsiddhesh");
			
			System.out.println("Connected!!");
			
			String query = "TRUNCATE TABLE supplychain.show_retail;";
			PreparedStatement p3 = connection.prepareStatement(query);
			p3.executeUpdate();
			
			String product_name = retail.getProduct_name();
			String wholesale_name = retail.getWholesaler_name();
			
			String q = " SELECT wholesaler_id,wholesale_name,product_name,quantity,wholesale_date,wholesale_amount from wholesale_table WHERE product_name = ? AND wholesale_name = ? AND quantity != 0;";
			PreparedStatement p1 = connection.prepareStatement(q);
			p1.setString(1, product_name);
			p1.setString(2, wholesale_name);
			
			ResultSet r1 = p1.executeQuery();
			
			String q2 = "INSERT INTO show_retail" +
		            "  (wholesaler_id,wholesale_name, product_name, quantity, wholesale_date, wholesale_amount) VALUES " +
		            " (? ,?, ?, ?, ? ,?);";
			
			while(r1.next())
			{
				int wholesale_id = (int) r1.getLong("wholesaler_id");
				String wholesale_name2 = r1.getString("wholesale_name");
				String product_name2 = r1.getString("product_name");  
	        	String quantity = r1.getString("quantity"); 
	        	String wholesale_amount = r1.getString("wholesale_amount");
	        	String wholesale_date = r1.getString("wholesale_date");	
	        	
	        	PreparedStatement p2 = connection.prepareStatement(q2);
	        	
	        	p2.setLong(1, wholesale_id);
	        	p2.setString(2, wholesale_name2);
	        	p2.setString(3, product_name2);
	        	p2.setString(4, quantity);
	        	p2.setString(5, wholesale_amount);
	        	p2.setString(6, wholesale_date);
	        	
	        	p2.executeUpdate();
	        	
	        }
			
			
		}
		catch(Exception e)
		{
			System.out.println(e);
			e.printStackTrace();
		}
			
		
		return result;
	}
			
			
			

			
			/**String query = "SELECT * FROM manufacture_table WHERE factory_name = ? AND product_name = ? AND wholesale_name IS NULL ; ";
			
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
			**/

			
	
	
	
	
	public int registerretail(retail retail) throws ClassNotFoundException
	{
		
		try
		{
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection connection = DriverManager
    	            .getConnection("jdbc:mysql://localhost:3306/supplychain", "siddhesh", "bestsiddhesh");
        	
        	System.out.println("Connected!!");
        	
        	String query1 = "INSERT INTO retail_table(retail_id,retail_name,retail_location,product_name,retail_quantity,retail_amount,retail_date,wholesaler_name,order_amount) VALUE(?,?,?,?,?,?,?,?,?); ";
			
                	
        	int retail_id = retail.getRetail_id();
        	String retail_name = retail.getRetail_name();
        	String  location = retail.getRetail_location();
        	String product_name = retail.getProduct_name();
        	int quantity = retail.getRetail_quantity();
        	int retail_amount = retail.getRetail_amount();
        	String retail_date = retail.getRetail_date();
        	String wholesaler_name = retail.getWholesaler_name();
        	
        	String query2 = "SELECT wholesale_amount from wholesale_table WHERE wholesale_name  = ? LIMIT 1 ;";
        	PreparedStatement p2 = connection.prepareStatement(query2);
        	p2.setString(1,wholesaler_name );
        	
        	ResultSet r = p2.executeQuery();
        	
        	String re_amount= "";
        	while(r.next())
        	{
        		 re_amount = re_amount + r.getString("wholesale_amount");
        	}
        	
        	
        	int retail_amount1 =Integer.parseInt(re_amount);  
        	int order_amount = quantity * retail_amount1;
        	System.out.println(order_amount);
        	
        	PreparedStatement p1 = connection.prepareStatement(query1);
        	p1.setLong(1, retail_id);
			p1.setString(2, retail_name);
			p1.setString(3, location );
			p1.setString(4, product_name );
			p1.setLong(5, quantity);
			p1.setLong(6, retail_amount);
			p1.setString(7, retail_date);
			p1.setString(8, wholesaler_name);
			p1.setLong(9, order_amount);
			
			
			p1.executeUpdate();
			
			String query3 = "UPDATE manufacture_table SET retail_name = ? WHERE retail_name IS NULL AND wholesale_name = ? LIMIT ?;";
			PreparedStatement p3 = connection.prepareStatement(query3);
			p3.setString(1, retail_name);
			p3.setString(2, wholesaler_name);
			p3.setLong(3, quantity);
			
			p3.executeUpdate();
			
			
			
			String query4 = "SELECT quantity from wholesale_table WHERE wholesale_name = ?;";
			
			PreparedStatement p4 = connection.prepareStatement(query4);
        	p4.setString(1,wholesaler_name );
        	
        	ResultSet r2 = p4.executeQuery();
        	
        	long re_quantity = 0;
        	while(r2.next())
        	{
        		re_quantity = re_quantity + r2.getLong("quantity");
        	}
        	
        	 
        	long retail_quantity2 = re_quantity - quantity;
        	System.out.println(retail_quantity2);
			
			
			String query5 = "UPDATE wholesale_table SET quantity = ? WHERE wholesale_name = ? ;";
			PreparedStatement p5 = connection.prepareStatement(query5);
			p5.setLong(1, retail_quantity2);
			p5.setString(2, wholesaler_name);
			
			ResultSet r4 = p5.executeQuery();
			
		}
		catch(Exception e)
		{
			System.out.println("1"+e);
			e.printStackTrace();
		}
		
		return 0;
		
	}
	

}
