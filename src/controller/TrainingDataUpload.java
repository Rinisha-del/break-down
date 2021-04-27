package controller;

import java.io.BufferedReader;
import java.io.FileReader;
import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class TrainingDataUpload
 */
@WebServlet("/TrainingDataUpload")
public class TrainingDataUpload extends HttpServlet {
	private static final long serialVersionUID = 1L;
     
	protected void doPost(HttpServletRequest r, HttpServletResponse rs) throws ServletException, IOException {

	     String csvFilePath = "D:\\FINAL-PROJECT\\SOURCE\\third\\TrainigData\\TrainingData.csv";
	     String fname = r.getParameter("traindata");
	     System.out.println(fname);
	     
	     int batchSize = 20;

	     Connection connection = null;

	     try {

	         connection = utility.DB.getconnection();
	         connection.setAutoCommit(false);

	         String del = "DELETE FROM trained;";
	         PreparedStatement statement1 = connection.prepareStatement(del);
	         statement1.executeUpdate();
	         
	         //String sql = "INSERT INTO review (course_name, student_name, timestamp, rating, comment) VALUES (?, ?, ?, ?, ?)";
	      
	         String sql = "INSERT INTO trained ("
	         		+ "reportyear, "
	         		+ "report_number,"
	         		+ "sup_number,"
	         		+ "filing_date,"
	         		+ "operator,"
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

	         BufferedReader lineReader = new BufferedReader(new FileReader(csvFilePath));
	         String lineText = null;

	         int count = 0;

	         lineReader.readLine(); // skip header line

	         
	         
	         while ((lineText = lineReader.readLine()) != null) {
	             
	        	 String[] data =  lineText.split(",");
	             
	            // String aaa = data[0];
	            // String bbb = data[1];
	            // String ccc = data[2];
	            
	             int j = 1;
	             
	             statement.setString(j++, data[0]);
	             statement.setString(j++, data[1]);
	             statement.setString(j++, data[2]);
	             statement.setString(j++, data[3]);
	             statement.setString(j++, data[4]);
	             statement.setString(j++, data[5]);
	             statement.setString(j++, data[6]);
	             statement.setString(j++, data[7]);
	             statement.setString(j++, data[8]);
	             statement.setString(j++, data[9]);
	             statement.setString(j++, data[10]);
	             statement.setString(j++, data[11]);
	             statement.setString(j++, data[12]);
	             statement.setString(j++, data[13]);
	             statement.setString(j++, data[14]);
	             statement.setString(j++, data[15]);
	             statement.setString(j++, data[16]);
	             statement.setString(j++, data[17]);
	             statement.setString(j++, data[18]);
	             
	             //statement.setString(1, aaa);
	             //statement.setString(2, bbb);
	             //statement.setString(3, ccc);

	             statement.addBatch();

	             if (count % batchSize == 0) {
	                 statement.executeBatch();
	                
	             }
	         }

	         lineReader.close();

	         // execute the remaining queries
	         statement.executeBatch();

	         connection.commit();

	     } catch (IOException ex) {
	         System.err.println(ex);
	         System.out.println(ex);
	     } catch (SQLException ex) {
	         ex.printStackTrace();
	       //  System.out.println(ex);
	         
	       /* try {
	             //connection.rollback();
	         } catch (SQLException e) {
	             e.printStackTrace();
	         }*/
	     }
	     rs.sendRedirect("TrainingData.jsp?st=lod");
		
	}

}
