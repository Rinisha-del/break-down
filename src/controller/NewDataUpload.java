package controller;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class NewDataUpload
 */
@WebServlet("/NewDataUpload")
public class NewDataUpload extends HttpServlet {
	private static final long serialVersionUID = 1L;
     
	protected void doPost(HttpServletRequest r, HttpServletResponse rs) throws ServletException, IOException {
		
		Connection connection = null;
		   HttpSession ses = r.getSession();

	     try {

	         connection = utility.DB.getconnection();
         
	          String sql = "INSERT INTO trained ("
	         		+ "reportyear, "
	         		+ "report_number,"
	         		+ "sup_number,"
	         		+ "filing_date,"
	         		+ "operator ,"
	         		+ "fail_date,"
	         		+ "hours,"
	         		+ "mf_type,"
	         		+ "leak_a,"
	         		+ "leak_b,"
	         		+ "leak_c,"
	         		+ "year_i,"
	         		+ "year_m,"
	         		+ "manufacturer,"
	         		+ "fitting_material,"
	         		+ "leak_cause,"
	         		+ "mff,"
	         		+ "temp,"
	         		+ "humidity"
	         		+ ") VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";

	         PreparedStatement statement = connection.prepareStatement(sql);
	         
	         int j=1;
	         statement.setString(j++, r.getParameter("ryear")); //1
	         statement.setString(j++, r.getParameter("rnum")); //2
	         statement.setString(j++, r.getParameter("snum"));//3
	         statement.setString(j++, r.getParameter("redate"));//4
	         statement.setString(j++, r.getParameter("oname"));//5
	         statement.setString(j++, r.getParameter("fadate"));//6
	         statement.setString(j++, r.getParameter("hrs"));//7
	         statement.setString(j++, r.getParameter("mf"));//8
	         statement.setString(j++, r.getParameter("leak1"));//9
	         statement.setString(j++, r.getParameter("leak2"));//10
	         statement.setString(j++, r.getParameter("leak3"));//11
	         statement.setString(j++, r.getParameter("yi"));//12
	         statement.setString(j++, r.getParameter("ym"));//13
	         statement.setString(j++, r.getParameter("mname"));//14
	         statement.setString(j++, r.getParameter("fitting"));//15
	         statement.setString(j++, r.getParameter("cause"));//16
	         statement.setString(j++, r.getParameter("mff"));//17
	         statement.setString(j++, r.getParameter("temp"));//18
	         statement.setString(j++, r.getParameter("humi"));//19

             int i = statement.executeUpdate();
            // boolean i1 = r.getAttribute("Role").equals("1");
            
             if(true){
            	 if(i>0) {
                	 rs.sendRedirect("Admin.jsp");
                 }else {
                	 rs.sendRedirect("NewFailure.jsp");
                 }
             }else {
            	 if(i>0) {
                	 rs.sendRedirect("Operator.jsp");
                 }else {
                	 rs.sendRedirect("NewFailureO.jsp");
                 }
             }
            	 
       
	         
	     }
	       catch (SQLException ex) {
		         ex.printStackTrace();
		     }

	}

}
