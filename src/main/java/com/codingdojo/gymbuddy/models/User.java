package com.codingdojo.gymbuddy.models;

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
import javax.persistence.OneToMany;
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
    
  //messages Sent
    @OneToMany(mappedBy="sender", fetch = FetchType.LAZY)
    private List<Message> messagesSent;
    //messages Sent
    @OneToMany(mappedBy="receiver", fetch = FetchType.LAZY)
    private List<Message> messagesRec;
    
    public User() {
    }


	public User(Long id, @Email(message = "Email must be valid!") String email,
			@Size(min = 8, message = "Password must be at least 8 characters long!") String password,
			@Size(min = 1, message = "First name is required!") String firstName,
			@Size(min = 1, message = "Last name is required!") String lastName, String address, Integer age, String sex,
			Integer weight, Integer height, Integer benchpress, Integer squat, String goals, Integer deadlift,
			Date createdAt, Date updatedAt, String passwordConfirmation, List<User> friends, List<Message> messagesSent,
			List<Message> messagesRec) {
		super();
		this.id = id;
		this.email = email;
		this.password = password;
		this.firstName = firstName;
		this.lastName = lastName;
		this.address = address;
		this.age = age;
		this.sex = sex;
		this.weight = weight;
		this.height = height;
		this.benchpress = benchpress;
		this.squat = squat;
		this.goals = goals;
		this.deadlift = deadlift;
		this.createdAt = createdAt;
		this.updatedAt = updatedAt;
		this.passwordConfirmation = passwordConfirmation;
		this.friends = friends;
		this.messagesSent = messagesSent;
		this.messagesRec = messagesRec;
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

	public List<Message> getMessagesSent() {
		return messagesSent;
	}
	public void setMessagesSent(List<Message> messagesSent) {
		this.messagesSent = messagesSent;
	}
	public List<Message> getMessagesRec() {
		return messagesRec;
	}
	public void setMessagesRec(List<Message> messagesRec) {
		this.messagesRec = messagesRec;
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
