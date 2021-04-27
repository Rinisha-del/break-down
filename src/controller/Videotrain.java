package controller;

import java.io.IOException;
import java.io.InputStream;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.io.File;
import java.io.FileOutputStream;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;

import utility.DB;

/**
 * Servlet implementation class Videotrain
 */
@WebServlet("/Videotrain")
@MultipartConfig(fileSizeThreshold = 1024 * 1024 * 2, maxFileSize = 1024 * 1024 * 10, maxRequestSize = 1024 * 1024 * 50)
public class Videotrain extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
	protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		
		Connection con = null;
		
		String id = req.getParameter("vid");
		String cause = req.getParameter("cause");
		String note = req.getParameter("msg");
		
		final Part filePart1 = req.getPart("textdata");
		final Part filePart2= req.getPart("video");

		InputStream inputStream1 = null; // input stream of the upload file
		InputStream inputStream2 = null; // input stream of the upload file

		if (filePart1 != null) {
			inputStream1 = filePart1.getInputStream();
			fileWrite(inputStream1, cause, "Text", ".txt");
		}
		if (filePart2 != null) {
			inputStream2 = filePart2.getInputStream();
			fileWrite(inputStream2, cause, "video", ".ogg");
		}

		
		try {

			con = DB.getconnection(); 

			PreparedStatement ps = con.prepareStatement("insert into solutions values (?,?,?,?,?)");
			ps.setString(1, id);
			ps.setString(2, cause);
			ps.setString(5, note);
			ps.setString(4, "video/" + cause + ".ogg");
			ps.setString(3, "D:\\FINAL-PROJECT\\SOURCE\\third\\WebContent\\Text\\" + cause + ".txt");
		
			int i = ps.executeUpdate();
			if(i>0) {
				res.sendRedirect("TrainVideo.jsp?st=suc");
			}else {
				res.sendRedirect("TrainVideo.jsp?ac=NU");
			}
			
		} catch (Exception i) {
			i.printStackTrace();
		} finally {
			if (con != null) {
				try {
					
				} catch (Exception i) {
					i.printStackTrace();
				}
			}

		}

		
		
	}	
		public void fileWrite(InputStream inputStream, String fileName, String Category, String ext) {
			int bytesRead = 0;
			byte[] buffer = new byte[4 * 1024];
			try {
				FileOutputStream fout = new FileOutputStream(new File(
						"D:\\FINAL-PROJECT\\SOURCE\\third\\WebContent\\"+ Category + "\\" + fileName + ext));
				while ((bytesRead = inputStream.read(buffer)) != -1) {
					fout.write(buffer, 0, bytesRead);
				}
			} catch (Exception e) {
				e.printStackTrace();
			}

		
		
		
	}


}
