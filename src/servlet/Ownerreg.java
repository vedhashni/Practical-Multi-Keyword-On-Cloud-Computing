package servlet;

import implement.Imple;
import interfase.Inter;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import bean.Ownerbean;

/**
 * Servlet implementation class Ownerreg
 */
@WebServlet("/Ownerreg")
public class Ownerreg extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Ownerreg() {
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

    String name=request.getParameter("Username");
    System.out.println("Username"+name);
    
    String mail=request.getParameter("email");
    System.out.println("email"+mail);
    
    String num=request.getParameter("number");
    System.out.println("number"+num);
    
    String pswd=request.getParameter("password");
    System.out.println("password"+pswd);
    
    String cpswd=request.getParameter("cpassword");
    System.out.println("cpassword"+cpswd);
    
    Ownerbean ob=new Ownerbean();
    ob.setName(name);
    ob.setMail(mail);
    ob.setMobnumber(num);
    ob.setPswd(pswd);
    ob.setCpswd(cpswd);
    
    Inter ii=new Imple();
    int k=ii.oreg(ob);
    if(k==1)
    {
    	response.sendRedirect("ownerlogin.jsp");
    }
    else
    {
    	response.sendRedirect("404-2.jsp");
    }	
}

}
