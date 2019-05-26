import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;

public class MasterPage extends HttpServlet {
 
  private String message;

  public void init() throws ServletException
  {
      // Do required initialization
      message = "Hello World";
  }

  public void doGet(HttpServletRequest request,
                    HttpServletResponse response)
            throws ServletException, IOException
  {
	  /*
	   * This is the main master page doGet "code behind" It must end by redirecting to the 
	   * actual servlet page which is based on the page name, but here you can
	   * do things that are glboal to ALL pages before the redirect to the page
	   */
	  String uri = request.getRequestURI();
	  String pageName = uri.substring(uri.lastIndexOf("/")+1);
	  pageName = pageName.substring(0, pageName.indexOf('.'));
	  RequestDispatcher dispatcher = null;
      try {			  
    	  request.setAttribute("WelcomeMessage", message );
    	  dispatcher = request.getServletContext().getNamedDispatcher(pageName);
    	
	  
      }
      catch (Exception e)
      {
    	  
      }
      if(dispatcher != null){
          dispatcher.forward(request,response);
      }
      else
      {
    	  response.sendError(HttpServletResponse.SC_NOT_FOUND);
      }
  }
  
  public void destroy()
  {
      // do nothing.
  }
}