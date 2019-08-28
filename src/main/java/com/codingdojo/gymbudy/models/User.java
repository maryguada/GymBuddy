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
 	private String first_name;
 	@Size(min=1,message="Last name is required!")
 	private String last_name;
 	private String address;
 	
 	private Integer age;
 	private String sex;
 	private Integer weight;
 	private Integer height;
 	private Integer benchpress;
 	private Integer squat;
 	private String goals;
 	private Integer deadlift;
 	
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
    
	public User(Long id,  String email, String password, String first_name,
			String last_name, String address, Integer age, String sex,
			Integer weight, Integer height, Integer benchpress, Integer squat, String goals, Integer deadlift,
			String passwordConfirmation, List<User> friends) {

		this.id = id;
		this.email = email;
		this.password = password;
		this.first_name = first_name;
		this.last_name = last_name;
		this.address = address;
		this.age = age;
		this.sex = sex;
		this.weight = weight;
		this.height = height;
		this.benchpress = benchpress;
		this.squat = squat;
		this.goals = goals;
		this.deadlift = deadlift;
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

	public String getFirst_name() {
		return first_name;
	}

	public void setFirst_name(String first_name) {
		this.first_name = first_name;
	}

	public String getLast_name() {
		return last_name;
	}

	public void setLast_name(String last_name) {
		this.last_name = last_name;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public Integer getAge() {
		return age;
	}

	public void setAge(Integer age) {
		this.age = age;
	}

	public String getSex() {
		return sex;
	}

	public void setSex(String sex) {
		this.sex = sex;
	}

	public Integer getWeight() {
		return weight;
	}

	public void setWeight(Integer weight) {
		this.weight = weight;
	}

	public Integer getHeight() {
		return height;
	}

	public void setHeight(Integer height) {
		this.height = height;
	}

	public Integer getBenchpress() {
		return benchpress;
	}

	public void setBenchpress(Integer benchpress) {
		this.benchpress = benchpress;
	}

	public Integer getSquat() {
		return squat;
	}

	public void setSquat(Integer squat) {
		this.squat = squat;
	}

	public String getGoals() {
		return goals;
	}

	public void setGoals(String goals) {
		this.goals = goals;
	}

	public Integer getDeadlift() {
		return deadlift;
	}

	public void setDeadlift(Integer deadlift) {
		this.deadlift = deadlift;
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
