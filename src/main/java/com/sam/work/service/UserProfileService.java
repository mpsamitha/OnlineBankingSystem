package com.sam.work.service;

import java.util.List;

import com.sam.work.model.UserProfile;


public interface UserProfileService {

	UserProfile findById(int id);

	UserProfile findByType(String type);
	
	List<UserProfile> findAll();
	
}
