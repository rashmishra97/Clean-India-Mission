 <%@ include file="dbcon.jsp"%>
<%
String s_id=request.getParameter("s_id");
String pass=request.getParameter("pass");

rs=stat.executeQuery("select * from Rash_table2 where s_id= '" + nam + "' and pass= '" + pass + "' ");
if(rs.next())
{	
	session.setAttribute("uid", s_id);
	session.setAttribute("unm", rs.getString("name"));
	response.sendRedirect("login3.jsp");
}	
else
{
%>
	<jsp:forward page="loginPage.jsp?abc=inv" />     
<%
}
%>		