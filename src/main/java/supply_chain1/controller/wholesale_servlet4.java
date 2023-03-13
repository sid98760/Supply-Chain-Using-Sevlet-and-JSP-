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

@WebServlet("/showquantity")
public class wholesale_servlet4 extends HttpServlet 
{
	private static final long serialVersionUID = 1L;
    private wholesaledao whole;

    public void init() 
    {
    	whole = new wholesaledao();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/Views/showwholesalequantity.jsp");
		dispatcher.forward(request, response);
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		
		String factory_name = request.getParameter("factory_name2");
		String product_name = request.getParameter("product_name2");
		
		wholesale w = new wholesale();
		w.setFactory_name(factory_name);
		w.setProduct_name(product_name);
		
		
		
		try
		{
			whole.showquantity(w);
		}
		catch(Exception e)
		{
			System.out.println("4"+e);
		}
		
		
		RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/Views/showwholesalequantity.jsp");
		dispatcher.forward(request, response);
		

		
	}

}
