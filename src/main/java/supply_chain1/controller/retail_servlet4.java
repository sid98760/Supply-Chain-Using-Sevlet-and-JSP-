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



@WebServlet("/showretailquantity")
public class retail_servlet4 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	private retaildao ret;

    public void init() 
    {
    	ret = new retaildao();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/Views/showretailquantity.jsp");
		dispatcher.forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		

		String product_name = request.getParameter("product_name2");
		String wholesaler_name = request.getParameter("wholesaler_name2");
		
		retail r = new retail();
		

		r.setProduct_name(product_name);

		r.setWholesaler_name(wholesaler_name);
		

		
		try
		{
			ret.showquantity(r);
		}
		catch(Exception e)
		{
			System.out.println("error2");
		}
		
		RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/Views/showretailquantity.jsp");
		dispatcher.forward(request, response);
		
	}

}
