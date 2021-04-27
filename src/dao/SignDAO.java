package dao;

import domain.Users;

public interface SignDAO {

	boolean register(Users u);
	
	String login(Users u);
	
	
}
