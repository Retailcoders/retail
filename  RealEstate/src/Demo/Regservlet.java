package Demo;
import java.io.*;
import java.io.IOException;

import java.io.PrintWriter;

import java.text.DateFormat;

import java.text.ParseException;

import java.text.SimpleDateFormat;
import java.util.Calendar;
//import java.sql.*;
//import java.sql.Date;
import java.util.*;
import java.util.Random;

import javax.servlet.ServletException;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;

import javax.servlet.http.HttpServletRequest;

import javax.servlet.http.HttpServletResponse;

import DA.Daoclass;
import Model.RegistrationModel;




/**

 * Servlet implementation class Regservlet

 */

@WebServlet("/Regservlet")

public class Regservlet extends HttpServlet {

	private static final long serialVersionUID = 1L;

       

    /**

     * @see HttpServlet#HttpServlet()

     */

    public Regservlet() {

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

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException,NumberFormatException {

		// TODO Auto-generated method stub

		//doGet(request, response);

		PrintWriter out=response.getWriter();

       response.setContentType("text/html");


		String firstName=request.getParameter("fn");

		String lastName=request.getParameter("ln");

		long mobile=Long.parseLong(request.getParameter("mob"));

		String idProof=request.getParameter("idproof");
		String action=request.getParameter("action");
		try
		{
        if(action.equals("Register"))
        {
		
            
			String dob=request.getParameter("dob");

			RegistrationModel model=new RegistrationModel(firstName,lastName,mobile,idProof,dob);

		    Daoclass d=new Daoclass();

		    int result=d.insert(model);

		if(result==1)

		{
			   Random random=new Random();
			   StringBuilder br1=new StringBuilder();
			   br1.append(firstName.substring(0,2));
			   br1.append(lastName.substring(lastName.length()-2,lastName.length()));
			   br1.append(random.nextInt(9999));
			   StringBuilder br=new StringBuilder();
			   br.append(firstName.charAt(firstName.length()-1));
			   br.append(lastName.charAt(0));
			       
			   char[] mobilenumber=request.getParameter("mob").toCharArray();
			   
			  for(int i=0;i<=9;i++)
			  {
			  br.append(mobilenumber[i]);
			  i++;
			  }
			  br.append(idProof.substring(0,2));
			     dob=dob.substring(dob.length()-4,dob.length());
			     int year=Integer.parseInt(dob);
			      int reverse = 0;  
			       
			     while(year != 0)
			      {
			          reverse = reverse * 10;
			          reverse = reverse + year%10;
			          year = year/10;
			      }
			     System.out.println(br);
			     System.out.println(br1);
			    br.append(reverse);
			    String username=br1.toString();
			    String password=br.toString();
			    if((username!=null)&& (password!=null)&&(idProof!=null))
				{
				
			    Cookie c=new Cookie("username",username);
				Cookie c1=new Cookie("password",password);
				Cookie c2=new Cookie("idproof",idProof);
				response.addCookie(c);
				response.addCookie(c1);
				response.addCookie(c2);
				
				
					//out.println("<input type='text' name='username' value='"+uname+"'>");
				
					/* Cookie[] cookies=request.getCookies();
					 c=cookies[0];
					 c1=cookies[1];
					 c2=cookies[2];*/
					// out.println("<input type='text' name='uname' value='"+c.getValue()+"'/>");*/
				
			     int result1=d.update(username,password,idProof);
			     if(result1==1)
			     {
			    	 
			   out.println("<html> <body bgcolor='aqua'><center><p>");
			   
			   out.println("Congratulations !!!!!!!!! "+"</br>");
			   
			   out.println("UserName is "+br1+"</br>");
 
			   
			   out.println("Password is "+br+"</br>");
			   out.println("For security reasons click here to Login and please change your password immediately"+"</br>");
			   //request.getRequestDispatcher("Welcome.jsp").include(request,response);
			   out.println("<a href='Login.jsp'>ClickHere</a></br>");
			    out.println("</p></center></body></html>");
			     }
			    
				}
			    
			    
			    
		
		
		}
       /* if(action.equals("ChangePassword"))
        {
        	String uname=request.getParameter("uname");
        	String pass=request.getParameter("pass");
        	String cpass=request.getParameter("cpass");
        	  Daoclass d1=new Daoclass();
        	  int result1=d1.update(uname,pass,idProof);
        	  if(result1==1)
        		  {
        		  out.println("<html> <body bgcolor='aqua'><center><p>");
   			   
   			      out.println("Congratulations !!!!!!!!! "+"</br>");
   		          out.println("</p></center></body></html>");
        		  }
        }*/
		}
		}
	    catch (Exception e) {

			// TODO Auto-generated catch block

			e.printStackTrace();

		}

		

	}




}