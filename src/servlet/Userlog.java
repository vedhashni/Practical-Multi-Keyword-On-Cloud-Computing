package servlet;

import implement.Imple;
import interfase.Inter;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import bean.Userlogin;

/**
 * Servlet implementation class Userlog
 */
@WebServlet("/Userlog")
public class Userlog extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Userlog() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
                  String name=request.getParameter("name");
		 HttpSession ses = request.getSession(true);
		 ses.setAttribute("user", name);
		
		String uname=request.getParameter("name");
		System.out.println("name"+uname);
		
		String pswd=request.getParameter("Password");
		System.out.println("Password"+pswd);
		
		Userlogin ol=new Userlogin();
		ol.setName(uname);
		ol.setPswd(pswd);
		
		Inter ll=new Imple();
		boolean l=ll.ulog(ol);
		if(l==true)
		{
			response.sendRedirect("Usermain.jsp");
		}
		else
		{
			response.sendRedirect("404-1.jsp");
		}
		
	}

}
