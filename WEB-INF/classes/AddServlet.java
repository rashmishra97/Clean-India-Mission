import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;

public class AddServlet extends HttpServlet
{
public void service(HttpServletRequest req, HttpServletResponse res) throws IOException, ServletException
	{
	int i = Integer.parseInt(req.getParameter("num1"));
	int j = Integer.parseInt(req.getParameter("num2"));
	
	int k = i+j;
	PrintWriter pw = res.getWriter();
	pw.println("result is "+ k);	
	
	}

}