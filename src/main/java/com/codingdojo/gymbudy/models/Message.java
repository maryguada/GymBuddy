package com.codingdojo.gymbudy.models;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.PrePersist;
import javax.persistence.PreUpdate;
import javax.persistence.Table;
import javax.validation.constraints.Size;

import org.springframework.format.annotation.DateTimeFormat;

@Entity
@Table(name="messages")
public class Message {
    @Id
    @GeneratedValue
    private Long id;
    @Size(min=10, max=255)
    private String message;
    @Column(updatable=false)
    @DateTimeFormat(pattern="yyyy-MM-dd")
    private Date createdAt;
//User
    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name="user_id")
    private User user;
//Friend
    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name="friend_id")
    private User friend;
    
    public Message() {
    	
    }

	public Message(Long id, @Size(min = 10, max = 255) String message, User user, User friend) {
		
		this.id = id;
		this.message = message;
		this.user = user;
		this.friend = friend;
	}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getMessage() {
		return message;
	}

	public void setMessage(String message) {
		this.message = message;
	}

	public Date getCreatedAt() {
		return createdAt;
	}

	public void setCreatedAt(Date createdAt) {
		this.createdAt = createdAt;
	}

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	public User getFriend() {
		return friend;
	}

	public void setFriend(User friend) {
		this.friend = friend;
	}
    
	@PrePersist
    protected void onCreate(){
        this.createdAt = new Date();
    }
    
}
