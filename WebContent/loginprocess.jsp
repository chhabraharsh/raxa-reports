
<%@page import="bean.LoginDao"%>
<jsp:useBean id="obj" class="bean.LoginBean"/>

<jsp:setProperty property="*" name="obj"/>

<%
boolean status=LoginDao.validate(obj);
//String user=LoginDao.validate(obj);
if(status){
	
//out.println("hello,"+request.getAttribute("email"));
session.setAttribute("session","TRUE");
%>
<jsp:include page="jsp/Reports.jsp"></jsp:include>
<div style="position: absolute; right:200; top:100">
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