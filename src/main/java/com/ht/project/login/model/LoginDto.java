package com.ht.project.login.model;


public class LoginDto {
	private String userId = "";
	private String name = "";
	
	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	
	@Override
	public String toString() {
		return "LoginDto [userId=" + userId + ", name=" + name + "]";
	}
	
	
	
}
