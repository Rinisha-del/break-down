package controller;

import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import utility.DB;

/**
 * Servlet implementation class Videosearch
 */
@WebServlet("/Videosearch")
public class Videosearch extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
  
	protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
			String solution =  req.getParameter("solu");
			System.out.println(solution);
			
			   InputStream inputStream = null; // input stream of the upload file
		       Map map = null;
		       HttpSession ses = req.getSession();
		       String file = "";
		       
			try {
				
				Connection con= DB.getconnection();
				PreparedStatement ps=con.prepareStatement("select * from solutions where cause='"+solution+"'");  		      
				ResultSet rs=ps.executeQuery(); 
				while(rs.next()) {
					
						map = new HashMap<>();
						map.put("vid", rs.getString("id"));
						map.put("cause", rs.getString("cause"));
						map.put("text", rs.getString("text"));
						map.put("note", rs.getString("note"));
						map.put("Video", rs.getString("vlocation"));
					
				}
				if(map == null) {
					ses.setAttribute("msg", "No Records Found");
				}
				/*if(solution.equals("CORROSION")) {
					ses.setAttribute("corrosion", map);
					res.sendRedirect("Solutions.jsp");
				}else if(req.getParameter("category").equals("Interior Design")) {
					ses.setAttribute("interior", map);
					res.sendRedirect("Interiordesign.jsp");
				}else if(req.getParameter("category").equals("Bedroom Design")) {
					ses.setAttribute("bedroom", map);
					res.sendRedirect("Bedroomdesign.jsp");
				}else if(req.getParameter("category").equals("Proper Design")) {
					ses.setAttribute("proper", map);
					res.sendRedirect("pod.jsp");
				}*/

				ses.setAttribute("soluu", map);
				res.sendRedirect("Solutions.jsp");

			
			}catch(Exception e) {
				e.printStackTrace();
			}
		}
			
	}


