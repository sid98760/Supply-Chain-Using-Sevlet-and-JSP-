package supply_chain1.controller;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import supply_chain1.dao.wholesaledao;
import supply_chain1.model.wholesale;

import java.io.IOException;

@WebServlet("/registerwholesale")
public class wholesale_servlet3 extends HttpServlet 
{
	private static final long serialVersionUID = 1L;
    private wholesaledao whole;

    public void init() 
    {
    	whole = new wholesaledao();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/Views/wholesale.jsp");
		dispatcher.forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		
		int  wholesaler_id = Integer.parseInt(request.getParameter("wholesaler_id"));
		String wholesale_name = request.getParameter("wholesaler_name");
		String product_name = request.getParameter("product_name");
		int quantity = Integer.parseInt(request.getParameter("quantity")); 
		String wholesale_date = request.getParameter("wholesale_date");
		String wholesale_amount = request.getParameter("wholesale_amount");
		String factory_name = request.getParameter("factory_name");
		
		wholesale w = new wholesale();
		
		w.setWholesaler_id(wholesaler_id);
		w.setWholesale_name(wholesale_name);
		w.setProduct_name(product_name);
		w.setQuantity(quantity);
		w.setWholesale_date(wholesale_date);
		w.setWholesale_amount(wholesale_amount);
		w.setFactory_name(factory_name);
		
		try
		{
			whole.registerwholesaler(w);
		}
		catch(Exception e)
		{
			System.out.println("error2");
		}
		
		RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/Views/showwholesale.jsp");
		dispatcher.forward(request, response);
		
	}

}
