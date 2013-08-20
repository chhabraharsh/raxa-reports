
<%@page import="bean.LoginDao"%>
<jsp:useBean id="obj" class="bean.LoginBean"/>

<jsp:setProperty property="*" name="obj"/>

<%
int status=LoginDao.validate(obj);
//String user=LoginDao.validate(obj);
if(status!=-1){
	
//out.println("hello,"+request.getAttribute("email"));
session.setAttribute("provider_id",status);
session.setAttribute("username",obj.getEmail());
%>
<body>

<jsp:include page="jsp/Reports.jsp"></jsp:include>
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