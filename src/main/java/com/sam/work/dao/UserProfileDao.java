package com.sam.work.dao;

import java.util.List;

import com.sam.work.model.UserProfile;


public interface UserProfileDao {

	List<UserProfile> findAll();
	
	UserProfile findByType(String type);
	
	UserProfile findById(int id);
}
