package com.codingdojo.gymbuddy.services;

import java.util.List;
import java.util.Optional;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.codingdojo.gymbuddy.models.User;
import com.codingdojo.gymbuddy.repositories.UserRepository;

@Service
public class appService {
	@Autowired 
	UserRepository userRepo;

	public List<User> searchUser(String user) {
		// TODO Auto-generated method stub
		return userRepo.findByFirstNameContaining(user);
	}

	public User findThisUser(Long id) {
		Optional <User> optUser = userRepo.findById(id);
		if (optUser.isPresent()) {
			return optUser.get();
		}else{
			return null;
		}
	}

	public void update(@Valid User user) {
		// TODO Auto-generated method stub
		userRepo.save(user);
	}

	public static User findUserById(Long uId) {
		// TODO Auto-generated method stub
		return null;
	}

	public List<User> findAllUsers() {
		// TODO Auto-generated method stub
		return userRepo.findAll();
	}

}


