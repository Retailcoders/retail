package Demo;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.ResultSet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.sun.corba.se.spi.orbutil.fsm.Guard.Result;

import DA.Daoclass;

/**
 * Servlet implementation class Searchservlet
 */
@WebServlet("/Searchservlet")
public class Searchservlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Searchservlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	//	response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//doGet(request, response);
		PrintWriter out=response.getWriter();

	       response.setContentType("text/html");


			String locality=request.getParameter("locality");

			String propertytype=request.getParameter("proptype");
			String price=request.getParameter("price");
			String action=request.getParameter("action");
			try
			{
	        if(action.equals("search"))
	        {
		

				Daoclass d=new Daoclass();

			    ResultSet result=d.search(locality,propertytype,price);
			   boolean isresultset=false;
			while(result.next())

			{
				out.println(result.getInt(1));
				out.println(result.getString(2));
				out.println(result.getString(3));
				out.println(result.getInt(4));
				out.println(result.getString(5));
				out.println(result.getString(6));
				out.println(result.getString(7));
				isresultset=true;
				
			    request.getRequestDispatcher("PropertyDetails.jsp").include(request, response);
			}
			if(isresultset==false)
			{
				out.println("No PropertyDetails Available");
				 request.getRequestDispatcher("PropertyDetails.jsp").include(request, response);
			
	       
    	     }
			}
			}
	
			catch(Exception e)
			{
				
			}
			
	       
			
}

}

	

	


