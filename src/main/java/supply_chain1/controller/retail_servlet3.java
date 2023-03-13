package supply_chain1.controller;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import supply_chain1.dao.retaildao;
import supply_chain1.model.retail;

import java.io.IOException;

@WebServlet("/registerretail1")
public class retail_servlet3 extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private retaildao ret;

    public void init() 
    {
    	ret = new retaildao();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/Views/retail.jsp");
		dispatcher.forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		
		int  retail_id = Integer.parseInt(request.getParameter("retail_id"));
		String retail_name = request.getParameter("retail_name");
		String location = request.getParameter("location");
		String product_name = request.getParameter("product_name");
		int quantity = Integer.parseInt(request.getParameter("quantity"));	
		int retail_amount = Integer.parseInt(request.getParameter("retail_amount"));	
		String retail_date = request.getParameter("retail_date");
		String wholesaler_name = request.getParameter("wholesaler_name");
		
		retail r = new retail();
		
		r.setRetail_id(retail_id);
		r.setRetail_name(retail_name);
		r.setRetail_location(location);
		r.setProduct_name(product_name);
		r.setRetail_quantity(quantity);
		r.setRetail_amount(retail_amount);
		r.setRetail_date(retail_date);
		r.setWholesaler_name(wholesaler_name);
		

		
		try
		{
			ret.registerretail(r);
		}
		catch(Exception e)
		{
			System.out.println("error2");
		}
		
		RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/Views/showretail.jsp");
		dispatcher.forward(request, response);
		
	}

}
