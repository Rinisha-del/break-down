package resources;

//copyright by https://www.codejava.net
import java.io.*;
import java.sql.*;

public class csvUploader {

 public static void main(String[] args) {
     String jdbcURL = "jdbc:mysql://localhost:3306/balanced";
     String username = "root";
     String password = "root";

     String csvFilePath = "F:\\PROJECT\\third\\TrainigData\\TrainingData.csv";

     int batchSize = 20;

     Connection connection = null;

     try {

         connection = DriverManager.getConnection(jdbcURL, username, password);
         connection.setAutoCommit(false);

         //String sql = "INSERT INTO review (course_name, student_name, timestamp, rating, comment) VALUES (?, ?, ?, ?, ?)";
         String sql = "INSERT INTO testing (aaa,bbb,ccc) VALUES (?, ?, ?)";

         PreparedStatement statement = connection.prepareStatement(sql);

         BufferedReader lineReader = new BufferedReader(new FileReader(csvFilePath));
         String lineText = null;

         int count = 0;

         lineReader.readLine(); // skip header line

         while ((lineText = lineReader.readLine()) != null) {
             String[] data = lineText.split(",");
             String aaa = data[0];
             String bbb = data[1];
             String ccc = data[2];
            

             statement.setString(1, aaa);
             statement.setString(2, bbb);
             statement.setString(3, ccc);

             statement.addBatch();

             if (count % batchSize == 0) {
                 statement.executeBatch();
             }
         }

         lineReader.close();

         // execute the remaining queries
         statement.executeBatch();

         connection.commit();
         connection.close();

     } catch (IOException ex) {
         System.err.println(ex);
     } catch (SQLException ex) {
         ex.printStackTrace();

         try {
             connection.rollback();
         } catch (SQLException e) {
             e.printStackTrace();
         }
     }

 }
}