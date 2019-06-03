package Demo;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Random;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import DA.Daoclass;
import Model.Payment;

/**
 * Servlet implementation class PayServlet
 */
@WebServlet("/PayServlet")
public class PayServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public PayServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest req, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//doGet(request, response);
		 PrintWriter out=response.getWriter();
		  //String cardNo=req.getParameter("cardNo");
		  String name=req.getParameter("card_holder");
		 // int cvv=Integer.parseInt(req.getParameter("cvv"));
		  int amt=Integer.parseInt(req.getParameter("amt"));
		  Random r=new Random();
		  int transactionId=r.nextInt(999999);
		  System.out.println(transactionId);
		  Payment pay=new Payment( name,  amt, transactionId);
		  Daoclass obj=new Daoclass();
		  int result=obj.paymentDetails(pay);
		  if(result>0)
		  {
		   out.println("<html><body>");
		   out.println("You have become a Member.So you can Post ur Ads");
		   out.println("</body></html>");
		     
		  }
		  
		 }
	}


