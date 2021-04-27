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

/**
 * Servlet implementation class RegisterControl
 */
@WebServlet("/RegisterControl")
public class RegisterController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	SignDAO sign = new SignDAOimpl();
	
	protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		HttpSession session = req.getSession();
   		Users u = new Users();
   		u.setEmail(req.getParameter("em"));
   		u.setName(req.getParameter("un"));
   		u.setPhone(req.getParameter("phone"));
   		u.setPassword(req.getParameter("pw"));
   		u.setAddress(req.getParameter("address"));
   		boolean result = sign.register(u);
   		if(result) {
   			res.sendRedirect("index.jsp?st=reg");
   		}else {
   			res.sendRedirect("SignIn.jsp?st=reg2");
   		}
   				
  
	}

}






