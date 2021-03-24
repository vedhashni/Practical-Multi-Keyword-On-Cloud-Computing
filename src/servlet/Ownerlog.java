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

import bean.Ownerlogin;

/**
 * Servlet implementation class Ownerlog
 */
@WebServlet("/Ownerlog")
public class Ownerlog extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Ownerlog() {
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

        String ooname=request.getParameter("oname");
		
		HttpSession ses = request.getSession(true);

		ses.setAttribute("oname", ooname);
		
     String uname=request.getParameter("oname");
     System.out.println("uname"+uname);
     
     String pswd=request.getParameter("Password");
     System.out.println("Password"+pswd);
     
           Ownerlogin ol=new Ownerlogin();
            ol.setName(ooname);
            ol.setPwsd(pswd);
      
            Inter ij=new Imple();
            boolean i=ij.olog(ol);
            if(i==true)
            {
            	response.sendRedirect("Ownermain.jsp");
            }
            else
            {
            	response.sendRedirect("404-2.jsp");
            }
			}

}
