package com.codingdojo.gymbudy.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.codingdojo.gymbudy.models.User;
import com.codingdojo.gymbudy.repositories.UserRepository;

@Service
public class appService {
	@Autowired 
	UserRepository userRepo;

	public List<User> searchUser(String user) {
		// TODO Auto-generated method stub
		return userRepo.findByUserContaining(user);
	}

}
