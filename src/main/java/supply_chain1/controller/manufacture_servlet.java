package supply_chain1.controller;

import java.io.IOException;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import supply_chain1.dao.*;
import supply_chain1.model.*;


@WebServlet("/register")
public class manufacture_servlet extends HttpServlet 
{
	private static final long serialVersionUID = 1L;
	private manufacturedao manufacture ;

	
    public void init() 
    {
    	manufacture = new manufacturedao();
    }


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/Views/registermanufacture.jsp");
		dispatcher.forward(request, response);
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		//getting values
		int packet_id_min          = Integer.parseInt(request.getParameter("packet_id_min"));
        String product_id          = request.getParameter("product_id");
        String product_name        = request.getParameter("product_name");
        String factory_name        = request.getParameter("factory_name");
        String manufacture_amount  = request.getParameter("manufacture_amount");
        String manufature_date     = request.getParameter("manufacture_date");
        int packet_id_max     = Integer.parseInt(request.getParameter("packet_id_max"));

        //creating a object for manufacture getters setters class
        manufacture man = new manufacture();
        man.setPacket_id_min(packet_id_min);
        man.setProduct_id(product_id);
        man.setProduct_name(product_name);
        man.setFactory_name(factory_name);
        man.setManufacture_amount(manufacture_amount);
        man.setManufacture_date(manufature_date);
        man.setPacket_id_max(packet_id_max);

        try 
        {
        	manufacture.registerManufacture(man);
        } 
        catch (Exception e) 
        {
            // TODO Auto-generated catch block
        	System.out.println("error2");
        }

        RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/Views/showmanufacture.jsp");
		dispatcher.forward(request, response);
	}

}