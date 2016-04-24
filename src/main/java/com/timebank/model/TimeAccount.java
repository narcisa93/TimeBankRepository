package com.timebank.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;
import javax.persistence.Table;

@Entity
@Table(name="time_accounts")
public class TimeAccount {

	
   @Id	
   @Column (name="idAccount",unique = true, nullable = true)
   @GeneratedValue(strategy = GenerationType.AUTO)
   private int idAccount; 
   
   @Column (name = "amountOfTime")
   private int amountOfTime;
   
   @Column (name = "idLevel")
   private int idLevel;
   
   
   @OneToOne(fetch = FetchType.LAZY)
   private User user;
   
    @ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "levelId", nullable = false)
	private Level level;
      

	public Level getLevel() {
		return level;
	}

	public void setLevel(Level level) {
		this.level = level;
	}

	public User getUser() {
		return user;
	}
	
	public void setUser(User user) {
		this.user = user;
	}
	
	public int getIdAccount() {
		return idAccount;
	}
	
	public void setIdAccount(int idAccount) {
		this.idAccount = idAccount;
	}
	
	public int getAmountOfTime() {
		return amountOfTime;
	}
	
	public void setAmountOfTime(int amountOfTime) {
		this.amountOfTime = amountOfTime;
	}
	
	public int getIdLevel() {
		return idLevel;
	}
	
	public void setIdLevel(int idLevel) {
		this.idLevel = idLevel;
	}
	   
	   
	   
	   
	   
	}
