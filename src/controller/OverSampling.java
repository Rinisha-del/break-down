package controller;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import utility.DB;

/**
 * Servlet implementation class OverSampling
 */
@WebServlet("/OverSampling")
public class OverSampling extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		Statement st = null;
     	ResultSet rs = null;
     	
     	List<String> l= new ArrayList<String>();
     	//int[] scenario = null;
     	
     	Map<String,Integer> m = new HashMap<String,Integer>();
     	
     	try {
     		Connection con = DB.getconnection();
     		st = con.createStatement();
     		String qry ="SELECT leak_cause, COUNT(*) FROM trained GROUP BY leak_cause HAVING COUNT(*) > 1;"; 
     		rs = st.executeQuery(qry);
     		int k=1;
     		
     		while (rs.next()) {
     			String cause = rs.getString(1);
     			int cause_count = rs.getInt(2);
     			
     			m.put(cause, cause_count);
     			
     			l.add(cause);
     		
     			}
     		System.out.println(m);
     		int maximum = Collections.max(m.values());
 			System.out.println(maximum);
 			
 			int s1 = m.get("ALL OTHER CAUSES");
 			int s2 = m.get("CORROSION");
 			int s3 = m.get("EXCAVATION DAMAGE");
 			int s4 = m.get("INCORRECT OPERATION"); 
 			int s5 = m.get("MATERIAL OR WELDS OR FUSIONS");
 			int s6 = m.get("NATURAL FORCE DAMAGE");
 			int s7 = m.get("OTHER OUTSIDE FORCE DAMAGE");
 			
 			System.out.println(l);
 			int[] scenario = {s1,s2,s3,s4,s5,s6,s7};
 			
 			
 			int s = 0;
 			
 			while(s<7) {
 				int c = maximum-scenario[s];
 				int i = 0;
 				System.out.println("To Sample Data :" + l.get(s) + c);
 				//System.out.println("S value :"+ s);
 				while(i<=(c+1)) {
 					String sql1 = "INSERT INTO trained SELECT * FROM trained WHERE leak_cause='"+l.get(s)+"' LIMIT 1";
 		 			int ps = DB.getconnection().prepareStatement(sql1).executeUpdate();
 					//System.out.println(" I value : "+i++);
 		 			i++;
 				}
 				s++;
 			}
 			
 			
 			response.sendRedirect("TrainingData2.jsp");
 			
 			
 			
     	}
     	catch(Exception ex){System.out.println(ex);}

		
		
		
	}

}
