package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.Random;

import javax.servlet.http.HttpSession;

import domain.Users;
import utility.DB;

public class SignDAOimpl implements SignDAO {

	Connection con = null;
	ResultSet rs = null;
	Statement stmt = null;
	PreparedStatement ps = null;
	 Random r = new Random(); 
	
	@Override
	public boolean register(Users u) {
		String status = "NOT ACTIVE";
		System.out.println(u.getName());
		String sql = "INSERT INTO users(uid,name,email,password,phone,address,loginstatus)"
				+" VALUES('"+r.nextInt(864532)+"','"+u.getName()+"','"+u.getEmail()+"','"+u.getPassword()+"','"+u.getPhone()+"','"+u.getAddress()+"','"+status+"')";
	try {
		int i = DB.getconnection().prepareStatement(sql).executeUpdate();
		if(i>0) {
			return true;
		}else {
			return false;
		}
		
	} catch (SQLException e) {
	
		e.printStackTrace();
	}

	return false;
		
	}

	@Override
	public String login(Users u) {
		
		String em = u.getEmail();
		String pw = u.getPassword();
		
		if(em.equalsIgnoreCase("Admin") && pw.equalsIgnoreCase("Admin")) {
			return "admin";
		}else {
		
		String sql = "SELECT * FROM users WHERE email='"+em+"' AND password='"+pw+"'";
	
		try {
			Connection con = DB.getconnection();
			Statement stmt = con.createStatement();
			ResultSet rs = stmt.executeQuery(sql);
			if(rs.next()) {
				String Role = rs.getString("role");
				String LS = rs.getString("loginstatus");
				u.setUid(rs.getInt("uid"));
				if(LS=="BLOCKED") {
					return "blocked";
				}
				else if(LS=="NOT ACTIVE") {
					return "notactive";
				}
				else {
					return "operator";
				}
				
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return "error";
		}

		
	}

}
