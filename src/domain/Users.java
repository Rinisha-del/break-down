package domain;

public class Users {
	
	private Integer uid;
	private String name;
	private String email;
	private String password;
	private String address;
	private String phone;
	private String role;
	private Integer loginStatus;
	
	
	public Integer getUid() {
		return uid;
	}
	public void setUid(Integer uid) {
		this.uid = uid;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getRole() {
		return role;
	}
	public void setRole(String role) {
		this.role = role;
	}
	public Integer getLoginStatus() {
		return loginStatus;
	}
	public void setLoginStatus(Integer loginStatus) {
		this.loginStatus = loginStatus;
	}
	
	@Override
	public String toString() {
		return "Users [uid=" + uid + ", name=" + name + ", email=" + email + ", password=" + password + ", address="
				+ address + ", phone=" + phone + ", role=" + role + ", loginStatus=" + loginStatus + "]";
	}
	
	
	
	
}
