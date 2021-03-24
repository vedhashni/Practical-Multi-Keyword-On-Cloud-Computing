package servlet;

import implement.Imple;
import interfase.Inter;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import bean.Userbean;

/**
 * Servlet implementation class Userreg
 */
@WebServlet("/Userreg")
public class Userreg extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Userreg() {
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
		
		String name=request.getParameter("uname");
		System.out.println("uname"+name);
		String mail=request.getParameter("email");
		System.out.println("email"+mail);
		String num=request.getParameter("number");
		System.out.println("number"+num);
		String pswd=request.getParameter("password");
		System.out.println("password"+pswd);
		String cpswd=request.getParameter("cpassword");
		System.out.println("cpassword"+cpswd);
		
		Userbean ub=new Userbean();
		ub.setName(name);
		ub.setEmail(mail);
		ub.setMobnumber(num);
		ub.setPswd(pswd);
		ub.setCpswd(cpswd);
		
		Inter ii=new Imple();
		int s=ii.ureg(ub);
		if(s==1) 
			
		{
		    response.sendRedirect("userlogin.jsp");	
		}
		else
		{
			response.sendRedirect("404-1.jsp");
		}
		
	}
}
