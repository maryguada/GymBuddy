package com.codingdojo.gymbudy.repositories;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.codingdojo.gymbudy.models.User;

@Repository
public interface UserRepository extends CrudRepository <User,Long>{
    User findByEmail(String email);

}
