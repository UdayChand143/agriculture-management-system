package com.model;

public class Farmer {
	private int farmerid;
    private String fullname;
    private String username;
    private String password;
    private String mobile;
    
    public Farmer() {
    	
    }

	public Farmer(int id, String name, String username, String password, String mobile) {
		super();
		this.farmerid = id;
		this.fullname = name;
		this.username = username;
		this.password = password;
		this.mobile = mobile;
	}

	
	public int getfarmerId() {
		return farmerid;
	}

	public void setfarmerId(int id) {
		this.farmerid = id;
	}

	public String getFullname() {
		return fullname;
	}

	public void setFullname(String fullname) {
		this.fullname = fullname;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getMobile() {
		return mobile;
	}

	public void setMobile(String mobile) {
		this.mobile = mobile;
	}

	public String toString() {
		
		return fullname;
	}
}