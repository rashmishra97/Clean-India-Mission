<html>
    <head>
           <title></title>
           <link rel="stylesheet" href="styles.css"></link>
   </head>
   <body>
<h1>&nbsp</h1>
<h1>&nbsp</h1>
<% 
String a=request.getParameter("abc");
if(a!=null)
{
	if(a.equals("inv"))
	{
		out.println("<center><strong><h2><font color=dark red>Invalid User Name or Password !!</font></h2></strong><ss/center>");
	}

}
%>

                 <div class="box">
	<h2>Login</h2>
	<form method=get action="UserLoginVerify.jsp">
	            <div class="inputBox">
		     <label></label>
		     <input type="text" name="fnam" value="" required="" placeholder="username">			
	            </div>
	            <div class="inputBox">
		     <label></label>
		     <input type="password" name="pass" required="" placeholder="password">
	            </div>
		   <center> <input type="submit" name="sub" value="submit"></center>
	             <div class="signup-link">Not a member?    <a href="signup.jsp">Sign up</a>
	             </div>	
	</form>
                  </div>
    </body>
</html>