package Demo;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.ResultSet;
import java.sql.SQLException;

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
		PrintWriter out=response.getWriter();
		String type1=request.getQueryString();
		Daoclass d=new Daoclass();
		ResultSet result=d.view(type1);
		 boolean isresultset=false;
		   out.println("<html><head><jsp:include page='header.jsp'></jsp:include><jsp:include page='footer.html'></jsp:include></head><body><style>table{background-color:olive;color:white;background: rgba(0, 0, 0, 0.5)}</style><center><h1>Property Details</h1><table cellspacing='30' cellpadding='15' border='1'><tr><th>PropertyId</th><th>PropertyName</th><th>PropertyType</th><th>Direction</th><th>Location</th><th>City</th><th>Amenities</th><th>Price</th></tr><tr>");
		try {
			while(result.next())

			{
				
				out.println("<td>"+result.getInt(1)+"</td>");
				out.println("<td>"+result.getString(2)+"</td>");
				out.println("<td>"+result.getString(3)+"</td>");
				out.println("<td>"+result.getString(4)+"</td>");
				out.println("<td>"+result.getString(5)+"</td>");
				out.println("<td>"+result.getString(6)+"</td>");
				out.println("<td>"+result.getString(7)+"</td>");
				out.println("<td>"+result.getInt(8)+"</td></tr>");
				isresultset=true;
				
			    
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		out.println("</table></center></body></html>");
		request.getRequestDispatcher("PropertyDetails.jsp").include(request, response);
		if(isresultset==false)
		{
			out.println("<h1><center>No PropertyDetails Available</center></h1>");
			 request.getRequestDispatcher("PropertyDetails.jsp").include(request, response);
		
     
	     }
		
		
		
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
			   out.println("<html><head><jsp:include page='header.jsp'></jsp:include><jsp:include page='footer.html'></jsp:include></head><body><style>table{background-color:olive;color:white;background: rgba(0, 0, 0, 0.5)}</style><center><h1>Property Details</h1><table cellspacing='30' cellpadding='15' border='1'><tr><th>PropertyId</th><th>PropertyName</th><th>PropertyType</th><th>Direction</th><th>Location</th><th>City</th><th>Amenities</th><th>Price</th></tr><tr>");
			while(result.next())

			{
				
				out.println("<td>"+result.getInt(1)+"</td>");
				out.println("<td>"+result.getString(2)+"</td>");
				out.println("<td>"+result.getString(3)+"</td>");
				out.println("<td>"+result.getString(4)+"</td>");
				out.println("<td>"+result.getString(5)+"</td>");
				out.println("<td>"+result.getString(6)+"</td>");
				out.println("<td>"+result.getString(7)+"</td>");
				out.println("<td>"+result.getInt(8)+"</td></tr>");
				isresultset=true;
				
			    
			}
			out.println("</table></center></body></html>");
			request.getRequestDispatcher("PropertyDetails.jsp").include(request, response);
			if(isresultset==false)
			{
				out.println("<h1><center>No PropertyDetails Available</center></h1>");
				 request.getRequestDispatcher("PropertyDetails.jsp").include(request, response);
			
	       
    	     }
			}
			}
	
			catch(Exception e)
			{
				
			}
	}		
	       
			
}



	

	


