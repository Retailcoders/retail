package DA;
import java.sql.*;


import Model.RegistrationModel;

public class Daoclass {




	public int insert(RegistrationModel model)

	{




		String firstName=model.getFirstName();

		String lastName=model.getLastName();

		long mobile=model.getMobile();

		String idProof=model.getIdProof();

		String  dob=model.getDob();
	

		

        int result=0;

       try

       {

        

		 DriverManager.registerDriver(new oracle.jdbc.driver.OracleDriver());

		  Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","system");

		

		  String sql="insert into prescillaanuop.user_register values(?,?,?,?,?,?,?)";

		  PreparedStatement stat=con.prepareStatement(sql);

		  stat.setString(1,firstName);

		  stat.setString(2,lastName);

		  stat.setLong(3,mobile);

		  stat.setString(4,idProof);

		  stat.setString(5,dob);
		  stat.setString(6,null);
		  stat.setString(7,null);
		  

		

		   result=stat.executeUpdate();

		   if(result==0)

		   {

			   return 0;

		   }

		  

	}

	catch(SQLException e)

	{

	}

	return result;

	

    }

	public int update(String username,String password,String idproof)
	{
		try
		{
		DriverManager.registerDriver(new oracle.jdbc.driver.OracleDriver());

		  Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","system");

		

		  String sql="update prescillaanuop.user_register set username=?,password=? where idproof=?";

		  PreparedStatement stat=con.prepareStatement(sql);

		  stat.setString(1,username);

		  stat.setString(2,password);

		  stat.setString(3,idproof);

		 

		

		   int result=stat.executeUpdate();

		   if(result==1)

		   {

			   return 1;

		   }


		  
	}
		catch(SQLException e)
		{
			
		}
		return 0;
   }

	public int Check(String username,String password)

	{
		int result=0;

       try

       {

        DriverManager.registerDriver(new oracle.jdbc.driver.OracleDriver());

		Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","system");

		

		  String sql="select * from prescillaanuop.user_register where username=? and password=?";
		  PreparedStatement stat=con.prepareStatement(sql);

		  stat.setString(1,username);

		  stat.setString(2,password);

		  ResultSet rs=stat.executeQuery();

		   while(rs.next())

		   {

			   return 1;

		   }

		  

	}

	catch(SQLException e)

	{

	}

	return 0;

	

    }
	public int updatePwd(String uName,String newPwd)
	 {
	  int result=0;
	  try
	        {
	         
	    DriverManager.registerDriver(new oracle.jdbc.driver.OracleDriver());
	     Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","system");
	     String qry="update prescillaanuop.user_register set password=? where username=?";
	     PreparedStatement stat=con.prepareStatement(qry);
	     stat.setString(1,newPwd);
	     stat.setString(2,uName);
	     result=stat.executeUpdate();
	      return result;
	     
	        }
	  catch(SQLException e)
	  {
	   e.printStackTrace();
	  }
	  
	  return result;
	 }

}