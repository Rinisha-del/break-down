package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.SignDAO;
import dao.SignDAOimpl;
import domain.Users;

@WebServlet("/LoginController1")
public class LoginController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	SignDAO sign = new SignDAOimpl();

       
	protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		
		HttpSession session = req.getSession();
   		Users user = new Users();
   		user.setEmail(req.getParameter("em"));
   		user.setPassword(req.getParameter("pw"));
   		
   		String result = sign.login(user);

		
   		if(result.equals("admin")) 
   		{
   			String A = "1";
   			session.setAttribute("Role", A);
   			int uid=1;
  			session.setAttribute("uid", uid);
   			res.sendRedirect("Admin.jsp?st=wel");
   		}
   		if(result.equals("operator")) 
   		{
   			String A = "2";
   			session.setAttribute("Role", A);
   			session.setAttribute("uid", user.getUid());
   			res.sendRedirect("Admin.jsp?st=wel");
   		}
   		else if (result.equals("error")) 
   		{
   			res.sendRedirect("SignIn.jsp?st=err");
   		}
   		else if (result.equals("blocked"))
   		{
   			res.sendRedirect("SignupO.jsp?st=blk");
   		}
   		else if (result.equals("notactive"))
   		{
   			res.sendRedirect("SignupO.jsp?st=na");
   		}
		
	}

}
