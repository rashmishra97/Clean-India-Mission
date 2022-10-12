<%@ include file="dbcon.jsp" %>
<%
String fnam=request.getParameter("fnam");          //first='" + fnam + "',
String pass=request.getParameter("pass");

 

rs=stat.executeQuery("select * from Rash_Project where  first='" + fnam + "'and password='" + pass + "' ");
if(rs.next())
{
	session.setAttribute("firstname", fnam);
	session.setAttribute("unm", rs.getString("last"));
	response.sendRedirect("complainpage.jsp");
}
else 
{                
	
%>
	<jsp:forward page="UserLogin.jsp?abc=inv" /> 
<% 
}            
%>