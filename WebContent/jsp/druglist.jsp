<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<%@page import="java.util.*"%>
<%@page import="bean.Provider"%>
<%@page import="bean.ConnectionProvider"%>

<jsp:useBean id="obj" class="bean.ConnectionProvider"/>
 <% 
	try{      
		 String s[]=null;
		// Connection con=  obj.getCon();
		Class.forName("com.mysql.jdbc.Driver"); 
        Connection con =DriverManager.getConnection("jdbc:mysql://localhost:3306/dataForDSS","root","");
		 
		
		Statement st=con.createStatement();
		ResultSet rs = st.executeQuery("select drug.generic_name  from drug where drug.generic_name is not null");
		
	    	List li = new ArrayList();
	 
			while(rs.next()) 
 			{   
				//System.out.println(rs.getString("generic_name"));
 			    li.add(rs.getString("generic_name"));
 			}  
			
			String[] str = new String[li.size()];			
			Iterator it = li.iterator();
			
			int i = 0;
			while(it.hasNext())
			{  // System.out.println((String)it.next()+"string");
				String p = (String)it.next();	
				str[i] =p;
				//System.out.print(str[i]+"  I am str via p  " );
				i++;
				
				
			}
		
			//jQuery related start		
				String query = (String)request.getParameter("q");
				System.out.print(query+"  I am query  " );
				int cnt=1;
				for(int j=0;j<str.length;j++)
				{   System.out.println(str[j].toLowerCase()+"  I am str" );
					if((str[j].toLowerCase()).startsWith(query))
					{  System.out.print(str[j]+"here\n");
						out.print(str[j]+"\n");
						if(cnt>=5)
							break;
						cnt++;
					}
				}
			//jQuery related end	
		
			
 		rs.close(); 
 		st.close(); 
		con.close();

		    } 
		catch(Exception e){ 
 			e.printStackTrace(); 
 		}

 %>