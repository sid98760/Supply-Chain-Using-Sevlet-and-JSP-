package supply_chain1.dao;

import java.sql.*;
import supply_chain1.model.*;



public class manufacturedao 
{
	public int registerManufacture(manufacture manufacture ) throws ClassNotFoundException 
	 {
	        String INSERT_USERS_SQL = "INSERT INTO manufacture_table" +
	            "  (product_id, product_name, factory_name, manufacture_amount, manufacture_date) VALUES " +
	            " ( ?, ?, ?, ?,?);";
	        
	        

	        int result = 0;
	        int result1 = 0;

	        Class.forName("com.mysql.cj.jdbc.Driver");

	        try 
	        {
	        	
	        	Connection connection = DriverManager
	    	            .getConnection("jdbc:mysql://localhost:3306/supplychain", "siddhesh", "bestsiddhesh");
	        	
	        	System.out.println("Connected!!");
	        	
	        	int packet_id_min = manufacture.getPacket_id_min() ;     
	        	String product_id = manufacture.getProduct_id();        
	        	String product_name = manufacture.getProduct_name() ;      
	        	String factory_name = manufacture.getFactory_name();      
	        	String manufacture_amount = manufacture.getManufacture_amount();
	        	String manufacture_date = manufacture.getManufacture_date();  
	        	int packet_id_max = manufacture.getPacket_id_max();   
	        	
	        	String seq = " ALTER TABLE manufacture_table AUTO_INCREMENT= ?";
	        	
	        	
	        	
	        	PreparedStatement preparedStatement1 = connection.prepareStatement(seq);
	        	
	        	preparedStatement1.setLong(1, packet_id_min);
	        	/**preparedStatement1.setLong(2, 1);
	        	preparedStatement1.setLong(3, packet_id_min);
	        	preparedStatement1.setLong(4, packet_id_max);**/
	   
	        	result1 = preparedStatement1.executeUpdate();
	        	System.out.println(result1);
	        	
	        	//PreparedStatement preparedStatement = connection.prepareStatement(INSERT_USERS_SQL);
	        	
	        	int n = packet_id_min;
	        	
	        	while(n <= packet_id_max) 
	        	{
	        		
	        		PreparedStatement preparedStatement = connection.prepareStatement(INSERT_USERS_SQL);
	        		//preparedStatement.setLong(1, packet_id_min);
		            preparedStatement.setString(1, product_id);
		            preparedStatement.setString(2, product_name);
		            preparedStatement.setString(3, factory_name);
		            preparedStatement.setString(4, manufacture_amount);
		            preparedStatement.setString(5, manufacture_date);
		            n = n + 1;
		            result = preparedStatement.executeUpdate();
	        		
	        	}
	       
	        	

	            //System.out.println(preparedStatement);
	            // Step 3: Execute the query or update query
	            //result = preparedStatement.executeUpdate();

	        } 
	        catch (SQLException e) 
	        {
	            
	            System.out.println("error1");
	        }
	        
	        return result;
	    }
}
