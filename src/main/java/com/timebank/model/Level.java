package com.timebank.model;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity
@Table(name = "levels")
public class Level {
	
	@Id
	@Column (name ="idLevel")
	@GeneratedValue (strategy = GenerationType.AUTO)
	private int idLevel;
	
	@Column (name ="levelName")
	private String levelName;
	
	@Column (name ="value")
	private int value;
	
	@OneToMany (fetch = FetchType.EAGER, mappedBy = "level")
    private List<TimeAccount> accounts = new ArrayList<TimeAccount>();
	
	
	public List<TimeAccount> getAccounts() {
		return accounts;
	}

	public void setAccounts(List<TimeAccount> accounts) {
		this.accounts = accounts;
	}

	public int getIdLevel() {
		return idLevel;
	}

	public void setIdLevel(int idLevel) {
		this.idLevel = idLevel;
	}

	public String getLevelName() {
		return levelName;
	}

	public void setLevelName(String levelName) {
		this.levelName = levelName;
	}

	public int getValue() {
		return value;
	}

	public void setValue(int value) {
		this.value = value;
	}
	
	
	

}
