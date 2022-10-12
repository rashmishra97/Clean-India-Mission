<html>
    <head>
           <title></title>
           <link rel="stylesheet" href="styles.css" ></link>
   </head>
   <body>

<h1>&nbsp</h1>
<% 
String a=request.getParameter("abc");
if(a!=null)
{
	if(a.equals("taken"))
	(
		out.println("<center><strong><h2><font color=dark red>This Name or password is taken !!</font></h2></strong><ss/center>");
	)

}
%>

                 <div class="box">
	<h2>Sign Up</h2>
	<form method=get action="signUpInsert.jsp">
	            <div class="inputBox">
		     
		     <input type="text" name="fnam" value="" required=""  placeholder="First Name">
		     <input type="text" name="lnam" value="" required=""  placeholder="Last Name">
		     <input type="text" name="pass" value="" required="" placeholder="Password">
		     <input type="text" name="email" value="" required="" placeholder="Email">
		     <input type="text" name="mob" value="" required="" placeholder="Mobile no."> 

	            </div>
		   <center> <input type="submit" name="sub" value="submit"></center>	
	</form>
                  </div>
    </body>
</html>
