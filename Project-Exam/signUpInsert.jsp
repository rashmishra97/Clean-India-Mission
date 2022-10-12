 <%@ include file="dbcon.jsp" %>
<%
String fnam=request.getParameter("fnam");
String lnam=request.getParameter("lnam");
String pass=request.getParameter("pass");
String email=request.getParameter("email");
String mob=request.getParameter("mob");

rs=stat.executeQuery("select * from Rash_Project where first='" + fnam + "'and password='" + pass + "' ");
if(rs.next())
{
	// ("<jsp:forward page="signup.jsp?abc=taken" />")
	response.sendRedirect("signup.jsp?abc=taken");
	//  out.println("<center><font color=red>This Name and password is Taken</font></center>");
}
else 
{

String qry="insert into Rash_Project values('" +fnam+ "','" +lnam+ "','" + pass + "','" +email+ "','" +mob+ "')";
// out.printIn(qry); 
 stat.executeUpdate(qry);
%>
  <center>
  Welcome <b><%=fnam%></b>
  <p>
  <b>You have been successfully registered...  ! </b>
      <jsp:forward page="complainpage.jsp" />
      
  <%
}
%>