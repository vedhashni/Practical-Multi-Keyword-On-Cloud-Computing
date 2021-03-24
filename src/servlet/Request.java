package servlet;

import implement.Imple;
import interfase.Inter;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import bean.Uploadbean;

/**
 * Servlet implementation class Request
 */
@WebServlet("/Request")
public class Request extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Request() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		doPost(request,response);
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		/*String onam=request.getSession().getAttribute("oname").toString();
		System.out.println("ownername"+onam);
		*/
	   /* String onam=request.getParameter("Username");
		System.out.println("Fileowner"+onam);*/
		
		
		String own=request.getParameter("ownername");
		System.out.println("Owner Name: "+own);
		
		String unam=request.getParameter("username");
		System.out.println("Username"+unam);
		
		String filename=request.getParameter("filename");
		System.out.println("Filename"+filename);
		
		String key=request.getParameter("key");
		System.out.println("Key"+key);
		
		Uploadbean uprq=new Uploadbean();
		uprq.setFileowner(own);
		uprq.setFileuser(unam);
		uprq.setFilename(filename);
		uprq.setFilekey(key);
		
		Inter jj=new Imple();
		int w=jj.Request(uprq);
		if(w==1)
		{
			response.sendRedirect("Reqsendsuccess.jsp");
		}
		else
		{
			response.sendRedirect("Fnf.jsp");
		}
		
	}

}
