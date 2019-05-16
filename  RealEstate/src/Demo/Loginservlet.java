package Demo;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import DA.Daoclass;
import Model.RegistrationModel;

/**
 * Servlet implementation class Loginservlet
 */
@WebServlet("/Loginservlet")
public class Loginservlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Loginservlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//doGet(request, response);
		PrintWriter out=response.getWriter();

	       response.setContentType("text/html");


			String username=request.getParameter("username");

			String password=request.getParameter("password");
			String action=request.getParameter("action");
			Cookie[] cookies=request.getCookies();
			if(cookies!=null)
			{
				for(Cookie cookie:cookies)
				{
					if(cookie.getName().equals("username"))
						
					username=cookie.getValue();
				
				if(cookie.getName().equals("password"))
				{
					password=cookie.getValue();
					
				}
				request.setAttribute("", cookie);
			}
			try
			{
	        if(action.equals("LogIn"))
	        {
		

				Daoclass d=new Daoclass();

			    int result=d.Check(username,password);
			    String message="Invalid username or Password...Please enter valid credentials....";

			if(result==1)

			{
				
				  out.println("Login Sucessful!!! Please Change your password immediately");
			      request.getRequestDispatcher("ChangePassword.jsp").include(request, response);
			}
			else if(result==0)
			{
				out.println(message);
				 request.getRequestDispatcher("Login.jsp").include(request, response);
			}
	       }
       	}
			catch(Exception e)
			{
				
			}
			
	        if(action.equals("Update"))
	        {
		

			 String uname=request.getParameter("uname");
			  String newPwd=request.getParameter("newPwd");
			  String confrmPwd=request.getParameter("confrmPwd");
			  Daoclass obj=new Daoclass();
			  
			  if(confrmPwd.equals(newPwd))
			  {
			   int result=obj.updatePwd(uname, newPwd);
			   if(result>0)
			   response.sendRedirect("Home.jsp");
			  }
			  else
			  {
			   
			   response.sendRedirect("ChangePassword.jsp" );
			  }

			
         }
       }
	}
}


	
