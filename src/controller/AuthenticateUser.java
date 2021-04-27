package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import utility.DB;

/**
 * Servlet implementation class AuthenticateUser
 */
@WebServlet("/AuthenticateUser")
public class AuthenticateUser extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
String action = request.getParameter("act");
	System.out.println(action);
	
		switch(action) {
			
			case "NOTACTIVE":
				approve(request, response);
				break;
			
			case "ACTIVE":
				approve(request, response);
				break;
				
			case "BLOCK":
				block(request, response);
				break;
				
		}

	}

	private void approve(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String uid = request.getParameter("id");
		String sql = "UPDATE users SET loginstatus='ACTIVE',role='BLOCK' WHERE uid='"+uid+"'";
		try {
			int i = DB.getconnection().prepareStatement(sql).executeUpdate();
			if(i>0) {
				response.sendRedirect("OperatorList.jsp");
			}else {
				response.sendRedirect("OperatorList.jsp?st=na");
			}
		}catch(Exception e) {
			e.printStackTrace();
		}
		
	}

	private void block(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String uid = request.getParameter("id");
		String sql = "UPDATE users SET loginstatus='BLOCKED',role='ACTIVE' WHERE uid='"+uid+"'";
		try {
			int i = DB.getconnection().prepareStatement(sql).executeUpdate();
			if(i>0) {
				response.sendRedirect("OperatorList.jsp");
			}else {
				response.sendRedirect("OperatorList.jsp?st=na");
			}
		}catch(Exception e) {
			e.printStackTrace();
		}

	}
}
