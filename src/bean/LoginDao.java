package bean;
import java.sql.*;
import org.apache.commons.codec.digest.*;

public class LoginDao {

	public static int validate(LoginBean bean){
		int status=0;
		int provider_id=0;
	//	String user=null;
		int loginas=bean.getLogingAs();
		try{
			if(loginas==0)
			{
			Connection con=ConnectionProvider.getCon();
			
		//	PreparedStatement ps=con.prepareStatement("select salt from users where username=?");
	   	
			String user_name =bean.getEmail();
			//ps.setString(1,bean.getEmail());
		//ps.setString(2, bean.getPass());
			
		//	ResultSet rs=ps.executeQuery();
		//	status=rs.next();
		//	status=true;
			
			//String salt=rs.getString("salt");
			//String tohash=bean.getPass()+salt;
		//	System.out.println(bean.getPass());
			//System.out.println(DigestUtils.shaHex(tohash));
			
			PreparedStatement provider=con.prepareStatement("select provider.provider_id from provider where provider.person_id in (select person_id from users where username=?)");
			provider.setString(1,bean.getEmail());
			
			ResultSet id=provider.executeQuery();
			
		/*	if(!id.next())
			{
				System.out.println("no user exists");
			 //no such user exists as provider
			}
			else*/
			id.next();
			{
				provider_id=id.getInt("provider_id");
				
				System.out.println(provider_id+"users exists with id this");
				
			}
			
			
			//	user=rs.getString("username");
			return provider_id;
			
			}
			
		}catch(Exception e)
		  {}
		elseif(loginas==1)//admin
		{
		return something;
		}
		else // patient
		{
		
		}
		
		return provider_id;
	}
}
