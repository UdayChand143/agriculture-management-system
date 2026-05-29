package com.model;

public class FarmerLoginModel {
	private String username;
	private String password;

	public FarmerLoginModel() {

	}

	public FarmerLoginModel(String username, String password) {
		this.username = username;
		this.password = password;
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

	public String toString() {
		return password;
	}

}