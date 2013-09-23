
<%@page import="bean.LoginDao"%>
<%@ page import="java.io.*,java.util.*" %>
<jsp:useBean id="obj" class="bean.LoginBean"/>

<jsp:setProperty property="*" name="obj"/>

<%


 int status=LoginDao.validate(obj);

//String user=LoginDao.validate(obj);
if(status!=-4){
	
//out.println("hello,"+request.getAttribute("email"));
session.setAttribute("provider_id",status);
session.setAttribute("username",obj.getEmail());

%>
<body>
<%
   // New location to be redirected
   String site = new String("jsp/Reports.jsp");
   response.setStatus(response.SC_MOVED_TEMPORARILY);
   response.setHeader("Location", site); 
%>

<jsp:include page="jsp/Reports.jsp" ></jsp:include>
<div style="position: absolute; right:200; top:100">
</body>
<% 
}
else
{
out.print("Sorry, Username not exists.");
%>

<jsp:include page="index.jsp"></jsp:include></div>
<%
}

%>