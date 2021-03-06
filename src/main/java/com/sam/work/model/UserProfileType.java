package com.sam.work.model;

import java.io.Serializable;

public enum UserProfileType implements Serializable{
	CUSTOMER("CUSTOMER"),
	USER("USER"),
	DBA("DBA"),
	ADMIN("ADMIN");
	
	String userProfileType;
	
	private UserProfileType(String userProfileType){
		this.userProfileType = userProfileType;
	}
	
	public String getUserProfileType(){
		return userProfileType;
	}
	
}
