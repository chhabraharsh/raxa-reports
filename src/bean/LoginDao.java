package bean;
import java.sql.*;
public class LoginDao {

	public static boolean validate(LoginBean bean){
		boolean status=false;
	//	String user=null;
		try{
			Connection con=ConnectionProvider.getCon();
			
			PreparedStatement ps=con.prepareStatement("select username from users where username=?");
			ps.setString(1,bean.getEmail());
		//	ps.setString(2, bean.getPass());
			
			ResultSet rs=ps.executeQuery();
			status=rs.next();
		//	user=rs.getString("username");
			
		}catch(Exception e){}
		return status;
	}
}
