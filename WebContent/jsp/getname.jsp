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
		 
		
	//	Statement st=con.createStatement();
		PreparedStatement ps=con.prepareStatement("select given_name from person_name where person_name.person_id in (select  encounter.patient_id from encounter where encounter.encounter_id in (select encounter_provider.encounter_id from encounter_provider where encounter_provider.provider_id=?)) group by person_name.person_id");
		ps.setInt(1,(Integer)session.getAttribute( "provider_id" ));
		
		ResultSet rs = ps.executeQuery();
		
	    	List li = new ArrayList();
	 
			while(rs.next()) 
 			{   
				//System.out.println(rs.getString("generic_name"));
 			    li.add(rs.getString("given_name"));
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
 		ps.close(); 
		con.close();

		    } 
		catch(Exception e){ 
 			e.printStackTrace(); 
 		}

 %>