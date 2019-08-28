package com.codingdojo.gymbudy.models;

import java.util.Date;
import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;
import javax.persistence.PrePersist;
import javax.persistence.PreUpdate;
import javax.persistence.Table;
import javax.persistence.Transient;
import javax.validation.constraints.Email;
import javax.validation.constraints.Size;


@Entity
@Table(name="user")
public class User {
	@Id
    @GeneratedValue(strategy=GenerationType.IDENTITY)
    private Long id;
 	@Email(message="Email must be valid!")
    private String email;
 	@Size(min=8,message="Password must be at least 8 characters long!")
    private String password;
 	@Size(min=1,message="First name is required!")
 	private String firstName;
 	@Size(min=1,message="Last name is required!")
 	private String lastName;
 	
 	
 	@Column(updatable=false)
    private Date createdAt;
    private Date updatedAt;
    @Transient
    private String passwordConfirmation;
    
    @ManyToMany(fetch = FetchType.LAZY)
    @JoinTable(
    	name="friends",
    	joinColumns = @JoinColumn(name="user_id"),
    	inverseJoinColumns = @ JoinColumn(name="friend_id")
    	)
    private List<User> friends;
    
    public User() {
    }

	public User(Long id, @Email(message = "Email must be valid!") String email,
			@Size(min = 8, message = "Password must be at least 8 characters long!") String password,
			@Size(min = 1, message = "First name is required!") String firstName,
			@Size(min = 1, message = "Last name is required!") String lastName, String passwordConfirmation,
			List<User> friends) {
		
		this.id = id;
		this.email = email;
		this.password = password;
		this.firstName = firstName;
		this.lastName = lastName;
		this.passwordConfirmation = passwordConfirmation;
		this.friends = friends;
	}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
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

	public String getFirstName() {
		return firstName;
	}

	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}

	public String getLastName() {
		return lastName;
	}

	public void setLastName(String lastName) {
		this.lastName = lastName;
	}

	public Date getCreatedAt() {
		return createdAt;
	}

	public void setCreatedAt(Date createdAt) {
		this.createdAt = createdAt;
	}

	public Date getUpdatedAt() {
		return updatedAt;
	}

	public void setUpdatedAt(Date updatedAt) {
		this.updatedAt = updatedAt;
	}

	public String getPasswordConfirmation() {
		return passwordConfirmation;
	}

	public void setPasswordConfirmation(String passwordConfirmation) {
		this.passwordConfirmation = passwordConfirmation;
	}

	public List<User> getFriends() {
		return friends;
	}

	public void setFriends(List<User> friends) {
		this.friends = friends;
	}
    
	@PrePersist
    protected void onCreate(){
        this.createdAt = new Date();
    }
    @PreUpdate
    protected void onUpdate(){
        this.updatedAt = new Date();
    }
}
