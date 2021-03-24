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
 * Servlet implementation class Accept
 */
@WebServlet("/Accept")
public class Accept extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Accept() {
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

		String onam=request.getParameter("ownername");
		System.out.println("oname"+onam);
		
		String unam=request.getParameter("Name");
		System.out.println("username"+unam);
		
		String filename=request.getParameter("Filename");
		System.out.println("filename"+filename);
		
		String key=request.getParameter("key");
		System.out.println("Key:"+key);
		
		Uploadbean uprp=new Uploadbean();
		uprp.setFileowner(onam);
		uprp.setFileuser(unam);
		uprp.setFilename(filename);
		uprp.setFilekey(key);
		
	
		Inter pp=new Imple();
		int x=pp.Response(uprp);
		if(x==1)
		{
			response.sendRedirect("fileaccept.jsp");
		}
		else
		{
			response.sendRedirect("error");
		}
		
		
		

	}

}
