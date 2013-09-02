package bean;
import java.sql.*;
import org.apache.commons.codec.digest.*;

import java.security.MessageDigest;

import com.google.common.hash.Hashing;

public class LoginDao {

	public static int validate(LoginBean bean){
		int status=0;
		int provider_id=-4;
	//	String user=null;
		int loginas=bean.getLogingAs();
		try{
		
			{
			Connection con=ConnectionProvider.getCon();
			
			PreparedStatement ps=con.prepareStatement("select salt,password from users where username=?");
	   	
			String user_name =bean.getEmail();
			ps.setString(1,bean.getEmail());
			
		    //ps.setString(2, bean.getPass());
			
			ResultSet rs=ps.executeQuery();
			
			
	     
			
		    rs.next();
		//	status=true;
		    
			String salt=rs.getString("salt");
			String pass=rs.getString("password");
			String tohash=bean.getPass()+salt;
	//tohash=MessageDigestAlgorithms.SHA_512;
	MessageDigest md;
	md=MessageDigest.getInstance("SHA-512");
	md.update(tohash.getBytes());
	  byte[] mb = md.digest();
      String out = "";
      for (int i = 0; i < mb.length; i++) {
          byte temp = mb[i];
          String s = Integer.toHexString(new Byte(temp));
          while (s.length() < 2) {
              s = "0" + s;
          }
          s = s.substring(s.length() - 2);
          out += s;
      }
    
      
      if(out.equals(pass))
      {  // provider_id=70;
    	  System.out.println("passwordmacthed\n");
    	  
    	   PreparedStatement provider=con.prepareStatement("select provider.provider_id from provider where provider.person_id in (select person_id from users where username=?)");
			provider.setString(1,bean.getEmail());
			
			ResultSet id=provider.executeQuery();
			
			/*if(!id.next())
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
      }
      else
      {
    	  provider_id=-4;
      }
      
      // System.out.println(out.length());
               // System.out.println("CRYPTO password: " + out);
			//System.out.println(bean.getPass()+"password entered by you\n"+tohash);
			// System.out.println(DigestUtils.shaHex(tohash)+"hashed password");
			
			
			
			
			//	user=rs.getString("username");
		
			
			}
			
		}catch(Exception e)
		  {}
		
		System.out.println(provider_id);
		return provider_id;
	}
}
